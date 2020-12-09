.class public Lcom/android/server/notification/NotificationManagerService;
.super Lcom/android/server/SystemService;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;,
        Lcom/android/server/notification/NotificationManagerService$DumpFilter;,
        Lcom/android/server/notification/NotificationManagerService$RoleObserver;,
        Lcom/android/server/notification/NotificationManagerService$NotificationListeners;,
        Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;,
        Lcom/android/server/notification/NotificationManagerService$TrimCache;,
        Lcom/android/server/notification/NotificationManagerService$FlagChecker;,
        Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;,
        Lcom/android/server/notification/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/notification/NotificationManagerService$ToastRecord;,
        Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;,
        Lcom/android/server/notification/NotificationManagerService$Archive;
    }
.end annotation


# static fields
.field private static final ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field static final DBG:Z

.field private static final DB_VERSION:I = 0x1

.field static final DEBUG_INTERRUPTIVENESS:Z

.field static final DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

.field static final DEFAULT_MAX_NOTIFICATION_ENQUEUE_RATE:F = 5.0f

.field static final DEFAULT_STREAM_TYPE:I = 0x5

.field static final DEFAULT_VIBRATE_PATTERN:[J

.field private static final DELAY_FOR_ASSISTANT_TIME:J = 0x64L

.field static final ENABLE_BLOCKED_TOASTS:Z = true

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field private static final EVENTLOG_ENQUEUE_STATUS_IGNORED:I = 0x2

.field private static final EVENTLOG_ENQUEUE_STATUS_NEW:I = 0x0

.field private static final EVENTLOG_ENQUEUE_STATUS_UPDATE:I = 0x1

.field private static final EXTRA_KEY:Ljava/lang/String; = "key"

.field static final FINISH_TOKEN_TIMEOUT:I = 0x2af8

.field private static final LOCKSCREEN_ALLOW_SECURE_NOTIFICATIONS_TAG:Ljava/lang/String; = "allow-secure-notifications-on-lockscreen"

.field private static final LOCKSCREEN_ALLOW_SECURE_NOTIFICATIONS_VALUE:Ljava/lang/String; = "value"

.field static final LONG_DELAY:I = 0xdac

.field static final MATCHES_CALL_FILTER_CONTACTS_TIMEOUT_MS:I = 0xbb8

.field static final MATCHES_CALL_FILTER_TIMEOUT_AFFINITY:F = 1.0f

.field static final MAX_PACKAGE_NOTIFICATIONS:I = 0x19

.field static final MESSAGE_DURATION_REACHED:I = 0x2

.field static final MESSAGE_FINISH_TOKEN_TIMEOUT:I = 0x7

.field static final MESSAGE_LISTENER_HINTS_CHANGED:I = 0x5

.field static final MESSAGE_LISTENER_NOTIFICATION_FILTER_CHANGED:I = 0x6

.field static final MESSAGE_ON_PACKAGE_CHANGED:I = 0x8

.field private static final MESSAGE_RANKING_SORT:I = 0x3e9

.field private static final MESSAGE_RECONSIDER_RANKING:I = 0x3e8

.field static final MESSAGE_SEND_RANKING_UPDATE:I = 0x4

.field private static final MIN_PACKAGE_OVERRATE_LOG_INTERVAL:J = 0x1388L

.field private static final MY_PID:I

.field private static final MY_UID:I

.field static final NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

.field public static final REPORT_REMOTE_VIEWS:I = 0x1

.field private static final REQUEST_CODE_TIMEOUT:I = 0x1

.field private static final SCHEME_TIMEOUT:Ljava/lang/String; = "timeout"

.field static final SHORT_DELAY:I = 0x7d0

.field static final SNOOZE_UNTIL_UNSPECIFIED:J = -0x1L

.field static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_NOTIFICATION_POLICY:Ljava/lang/String; = "notification-policy"

.field static final VIBRATE_PATTERN_MAXLEN:I = 0x11

.field private static final WHITELIST_TOKEN:Landroid/os/IBinder;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriPredicate<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAm:Landroid/app/IActivityManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

.field private mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

.field mAttentionLight:Lcom/android/server/lights/Light;

.field mAudioManager:Landroid/media/AudioManager;

.field mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private mAutoGroupAtCount:I

.field final mAutobundledSummaries:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCallNotificationToken:Landroid/os/Binder;

.field private mCallState:I

.field private mCompanionManager:Landroid/companion/ICompanionDeviceManager;

.field private mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private mDisableNotificationEffects:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

.field private mEffectsSuppressors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mEnqueuedNotifications:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mFallbackVibrationPattern:[J

.field final mForegroundToken:Landroid/os/IBinder;

.field private mGroupHelper:Lcom/android/server/notification/GroupHelper;

.field private mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

.field mHasLight:Z

.field private mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

.field private mInCallNotificationUri:Landroid/net/Uri;

.field private mInCallNotificationVolume:F

.field protected mInCallStateOffHook:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

.field private mInterruptionFilter:I

.field private mIsAutomotive:Z

.field private mIsTelevision:Z

.field private mLastOverRateLogTime:J

.field final mLastSoundTimestamps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mLightEnabled:Z

.field mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLineageNotificationLights:Lorg/lineageos/internal/notification/LineageNotificationLights;

.field private mListenerHints:I

.field private mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field private final mListenersDisablingEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mLockScreenAllowSecureNotifications:Z

.field private mMaxPackageEnqueueRate:F

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field final mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mNotificationEffectsEnabledForAutomotive:Z

.field private mNotificationLight:Lcom/android/server/lights/Light;

.field final mNotificationList:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mNotificationLock:Ljava/lang/Object;

.field mNotificationPulseEnabled:Z

.field private final mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

.field final mNotificationsByKey:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mPackageManagerClient:Landroid/content/pm/PackageManager;

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

.field private mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field private mRankingHelper:Lcom/android/server/notification/RankingHelper;

.field private final mRankingThread:Landroid/os/HandlerThread;

.field private final mRestoreReceiver:Landroid/content/BroadcastReceiver;

.field private mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

.field private final mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

.field mScreenOn:Z

.field final mService:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

.field private mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

.field private mSoundNotificationKey:Ljava/lang/String;

.field mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field final mSummaryByGroupKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field mSystemReady:Z

.field final mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUgm:Landroid/app/IUriGrantsManager;

.field private mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field private mUm:Landroid/os/UserManager;

.field private mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUseAttentionLight:Z

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field private mVibrateNotificationKey:Ljava/lang/String;

.field mVibrator:Landroid/os/Vibrator;

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field protected mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 288
    const-string v0, "NotificationService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 289
    nop

    .line 290
    const-string v0, "debug.child_notifs"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->ENABLE_CHILD_NOTIFICATIONS:Z

    .line 295
    const-string v0, "debug.notification.interruptiveness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    .line 320
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_66

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 330
    const-string v0, "key_contextual_actions"

    const-string v1, "key_text_replies"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

    .line 334
    const-string v0, "android.app.role.DIALER"

    const-string v1, "android.app.role.EMERGENCY"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/notification/NotificationManagerService;

    .line 362
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    .line 465
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    .line 466
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 467
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    return-void

    nop

    :array_66
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1509
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 385
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    .line 387
    new-instance p1, Landroid/os/HandlerThread;

    const-string/jumbo v0, "ranker"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    .line 395
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    .line 404
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 408
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 411
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    .line 412
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallStateOffHook:Z

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    .line 421
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 422
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 424
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 428
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    .line 430
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 431
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 432
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mLastSoundTimestamps:Landroid/util/ArrayMap;

    .line 435
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    .line 458
    new-instance v1, Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 463
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    .line 470
    const/high16 p1, 0x40a00000  # 5.0f

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 482
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    invoke-direct {p1, p0, v0}, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    .line 767
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 1150
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$2;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1162
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$3;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$3;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 1182
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$4;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$4;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

    .line 1205
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$5;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$5;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1321
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$6;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$6;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2326
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$11;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$11;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    .line 4768
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$12;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$12;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    .line 1510
    sget-object p1, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    sput-object p1, Landroid/app/Notification;->processWhitelistToken:Landroid/os/IBinder;

    .line 1511
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/AtomicFile;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)Z
    .registers 5

    .line 286
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isNotificationAppropriateToBubble(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/IActivityManager;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    return-object p0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .registers 1

    .line 286
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 2

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method static synthetic access$1900()I
    .registers 1

    .line 286
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;ZI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;ZI)V

    return-void
.end method

.method static synthetic access$2000()I
    .registers 1

    .line 286
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 286
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/notification/NotificationManagerService;)Lorg/lineageos/internal/notification/LineageNotificationLights;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mLineageNotificationLights:Lorg/lineageos/internal/notification/LineageNotificationLights;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/server/notification/NotificationManagerService;)F
    .registers 1

    .line 286
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return p0
.end method

.method static synthetic access$2702(Lcom/android/server/notification/NotificationManagerService;F)F
    .registers 2

    .line 286
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 286
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateInterruptionFilterLocked()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHandler;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2

    .line 286
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 286
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;)V
    .registers 3

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->clearAutogroupSummaryLocked(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManager;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 286
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V
    .registers 6

    .line 286
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 2

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .registers 5

    .line 286
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationChannelInt(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 286
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUiOrShell()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 3

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 2

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 286
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateListenerHintsLocked()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 286
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateEffectsSuppressorLocked()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 3

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 286
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->exitIdle()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .registers 3

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5100(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 1

    .line 286
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    return p0
.end method

.method static synthetic access$5200(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 1

    .line 286
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    return p0
.end method

.method static synthetic access$5300(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpRemoteViewStats(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpProto(Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 286
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/util/function/TriPredicate;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V
    .registers 3

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->applyAdjustment(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 1

    .line 286
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    return p0
.end method

.method static synthetic access$6402(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2

    .line 286
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 6

    .line 286
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6700(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 6

    .line 286
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V
    .registers 6

    .line 286
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 286
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V
    .registers 8

    .line 286
    invoke-direct/range {p0 .. p7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V
    .registers 7

    .line 286
    invoke-direct/range {p0 .. p6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)V
    .registers 5

    .line 286
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->flagNotificationForBubbles(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .registers 5

    .line 286
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isBlocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7700(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isCritical(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7800(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)Z
    .registers 2

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasAutoGroupSummaryLocked(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/GroupHelper;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 286
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    return-object p0
.end method

.method static synthetic access$8002(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Binder;)Landroid/os/Binder;
    .registers 2

    .line 286
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/android/server/notification/NotificationManagerService;)Landroid/net/Uri;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/android/server/notification/NotificationManagerService;)Landroid/media/AudioAttributes;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/android/server/notification/NotificationManagerService;)F
    .registers 1

    .line 286
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationVolume:F

    return p0
.end method

.method static synthetic access$8400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 2

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleDurationReached(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 2

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 286
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSendRankingUpdate()V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerHintsChanged(I)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerInterruptionFilterChanged(I)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/notification/NotificationManagerService;ZI[Ljava/lang/String;[I)V
    .registers 5

    .line 286
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->handleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 286
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearLightsLocked()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V
    .registers 2

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleRankingReconsideration(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V
    .registers 14

    .line 286
    invoke-direct/range {p0 .. p13}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 1

    .line 286
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return p0
.end method

.method static synthetic access$9202(Lcom/android/server/notification/NotificationManagerService;I)I
    .registers 2

    .line 286
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return p1
.end method

.method static synthetic access$9300(I)Ljava/lang/String;
    .registers 1

    .line 286
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .registers 2

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object p0

    return-object p0
.end method

.method private addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 9

    .line 4383
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 4384
    const-string v0, "key_group_key"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4385
    new-instance p2, Landroid/service/notification/Adjustment;

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4386
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    const-string v4, ""

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Landroid/service/notification/Adjustment;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;I)V

    .line 4387
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    .line 4388
    return-void
.end method

.method private addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 5

    .line 2163
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_12

    .line 2164
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2167
    :cond_12
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    .line 2168
    iget-object p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2169
    return-void
.end method

.method private addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 4

    .line 2149
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_8

    .line 2150
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 2153
    :cond_8
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_10

    .line 2154
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 2157
    :cond_10
    const/4 v0, 0x4

    and-int/2addr p2, v0

    if-eqz p2, :cond_17

    .line 2158
    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 2160
    :cond_17
    return-void
.end method

.method private applyAdjustment(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V
    .registers 8

    .line 4337
    if-nez p1, :cond_3

    .line 4338
    return-void

    .line 4340
    :cond_3
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 4341
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v0

    .line 4342
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 4343
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4344
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4345
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isAdjustmentAllowed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 4346
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4348
    :cond_35
    goto :goto_1e

    .line 4349
    :cond_36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4350
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4351
    goto :goto_3a

    .line 4352
    :cond_4a
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    .line 4354
    :cond_4d
    return-void
.end method

.method private applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6539
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    .line 6540
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 6541
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 6542
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 6541
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    goto :goto_1f

    .line 6544
    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    .line 6546
    :goto_1f
    return-void
.end method

.method private calculateHints()I
    .registers 5

    .line 2172
    nop

    .line 2173
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_a
    if-ltz v0, :cond_24

    .line 2174
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2175
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 2177
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21

    .line 2178
    or-int/2addr v1, v2

    .line 2173
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 2182
    :cond_24
    return v1
.end method

.method private calculateSuppressedEffects()J
    .registers 6

    .line 2186
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result v0

    .line 2187
    nop

    .line 2189
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_c

    .line 2190
    const-wide/16 v1, 0x3

    goto :goto_e

    .line 2189
    :cond_c
    const-wide/16 v1, 0x0

    .line 2193
    :goto_e
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_15

    .line 2194
    const-wide/16 v3, 0x1

    or-long/2addr v1, v3

    .line 2197
    :cond_15
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1c

    .line 2198
    const-wide/16 v3, 0x2

    or-long/2addr v1, v3

    .line 2201
    :cond_1c
    return-wide v1
.end method

.method private static callStateToString(I)Ljava/lang/String;
    .registers 3

    .line 7562
    if-eqz p0, :cond_20

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    .line 7566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALL_STATE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7565
    :cond_1a
    const-string p0, "CALL_STATE_OFFHOOK"

    return-object p0

    .line 7564
    :cond_1d
    const-string p0, "CALL_STATE_RINGING"

    return-object p0

    .line 7563
    :cond_20
    const-string p0, "CALL_STATE_IDLE"

    return-object p0
.end method

.method private canBubble(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)Z
    .registers 7

    .line 5071
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 5072
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    .line 5073
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 5075
    return v1

    .line 5077
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p2}, Lcom/android/server/notification/NotificationManagerService;->canLaunchInActivityView(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 5079
    return v1

    .line 5081
    :cond_1b
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/PreferencesHelper;->bubblesEnabled()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 5082
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bubbles disabled for user: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->logBubbleError(Ljava/lang/String;Ljava/lang/String;)V

    .line 5083
    return v1

    .line 5085
    :cond_3c
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->areBubblesAllowed(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_65

    .line 5086
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bubbles for package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " disabled for user: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->logBubbleError(Ljava/lang/String;Ljava/lang/String;)V

    .line 5088
    return v1

    .line 5090
    :cond_65
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result p2

    if-nez p2, :cond_95

    .line 5091
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bubbles for channel "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5092
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " disabled"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5091
    invoke-direct {p0, p2, p1}, Lcom/android/server/notification/NotificationManagerService;->logBubbleError(Ljava/lang/String;Ljava/lang/String;)V

    .line 5093
    return v1

    .line 5095
    :cond_95
    const/4 p1, 0x1

    return p1
.end method

.method private cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V
    .registers 29
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;II",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$FlagChecker;",
            "ZIZI",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 7073
    move-object v7, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move/from16 v10, p9

    .line 7074
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v11, 0x1

    sub-int/2addr v0, v11

    const/4 v1, 0x0

    move v12, v0

    move-object v13, v1

    :goto_12
    if-ltz v12, :cond_94

    .line 7075
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 7076
    if-eqz p8, :cond_27

    .line 7077
    invoke-direct {p0, v1, v10}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_30

    .line 7078
    move-object/from16 v14, p7

    goto/16 :goto_90

    .line 7080
    :cond_27
    invoke-direct {p0, v1, v10}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_30

    .line 7081
    move-object/from16 v14, p7

    goto :goto_90

    .line 7084
    :cond_30
    if-eqz p5, :cond_3e

    if-nez v8, :cond_3e

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3e

    .line 7085
    move-object/from16 v14, p7

    goto :goto_90

    .line 7087
    :cond_3e
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v0

    move-object/from16 v14, p7

    invoke-interface {v14, v0}, Lcom/android/server/notification/NotificationManagerService$FlagChecker;->apply(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 7088
    goto :goto_90

    .line 7090
    :cond_4b
    if-eqz v8, :cond_5a

    iget-object v0, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 7091
    goto :goto_90

    .line 7093
    :cond_5a
    if-eqz v9, :cond_6b

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 7094
    goto :goto_90

    .line 7096
    :cond_6b
    if-nez v13, :cond_72

    .line 7097
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 7099
    :cond_72
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7100
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7101
    invoke-virtual {v1, v11}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSentiment(I)V

    .line 7102
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7103
    move-object v0, p0

    move/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, p13

    move-object/from16 v5, p12

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    .line 7074
    :goto_90
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_12

    .line 7105
    :cond_94
    move-object/from16 v14, p7

    if-eqz v13, :cond_ba

    .line 7106
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 7107
    const/4 v0, 0x0

    move v9, v0

    :goto_9e
    if-ge v9, v8, :cond_b7

    .line 7108
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p12

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 7107
    add-int/lit8 v9, v9, 0x1

    goto :goto_9e

    .line 7111
    :cond_b7
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 7113
    :cond_ba
    return-void
.end method

.method private cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V
    .registers 26
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/NotificationRecord;",
            "II",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/android/server/notification/NotificationManagerService$FlagChecker;",
            ")V"
        }
    .end annotation

    .line 7202
    move-object/from16 v0, p1

    move-object/from16 v1, p8

    move-object/from16 v2, p2

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 7203
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v14

    .line 7205
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v15, v4

    :goto_17
    if-ltz v15, :cond_9b

    .line 7206
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .line 7207
    iget-object v4, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 7208
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v5

    if-nez v5, :cond_95

    .line 7209
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 7210
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_8f

    if-eqz v1, :cond_58

    .line 7211
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v5

    invoke-interface {v1, v5}, Lcom/android/server/notification/NotificationManagerService$FlagChecker;->apply(I)Z

    move-result v5

    if-eqz v5, :cond_55

    goto :goto_58

    :cond_55
    move-object/from16 v4, p0

    goto :goto_97

    .line 7212
    :cond_58
    :goto_58
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    .line 7213
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc

    .line 7212
    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v3

    move v9, v14

    move-object/from16 v16, v13

    move-object/from16 v13, p5

    invoke-static/range {v4 .. v13}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 7214
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7215
    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7216
    const/16 v8, 0xc

    move-object/from16 v5, p0

    move-object/from16 v6, v16

    move/from16 v7, p6

    move/from16 v9, p7

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    goto :goto_97

    .line 7210
    :cond_8f
    move-object/from16 v4, p0

    goto :goto_97

    .line 7209
    :cond_92
    move-object/from16 v4, p0

    goto :goto_97

    .line 7208
    :cond_95
    move-object/from16 v4, p0

    .line 7205
    :goto_97
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_17

    .line 7219
    :cond_9b
    return-void
.end method

.method private cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V
    .registers 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7180
    move-object v9, p0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 7181
    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-nez v0, :cond_c

    .line 7182
    return-void

    .line 7185
    :cond_c
    move-object v10, p1

    iget-object v0, v10, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 7187
    if-nez v0, :cond_34

    .line 7188
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No package for group summary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7189
    :cond_33
    return-void

    .line 7192
    :cond_34
    iget-object v1, v9, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 7194
    iget-object v1, v9, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 7196
    return-void
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6745
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 6748
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 6750
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/NotificationStats;->getDismissalSurface()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    .line 6751
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSurface(I)V

    .line 6755
    :cond_16
    if-eqz p2, :cond_52

    .line 6756
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-object p2, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 6757
    if-eqz p2, :cond_52

    .line 6760
    :try_start_20
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 6761
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v3

    sget-object v4, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    invoke-virtual {v1, v3, v4}, Landroid/app/ActivityManagerInternal;->clearPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;)V

    .line 6763
    invoke-virtual {p2}, Landroid/app/PendingIntent;->send()V
    :try_end_34
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_20 .. :try_end_34} :catch_35

    .line 6768
    goto :goto_52

    .line 6764
    :catch_35
    move-exception p2

    .line 6767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canceled PendingIntent for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NotificationService"

    invoke-static {v3, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6773
    :cond_52
    :goto_52
    if-eqz p6, :cond_bd

    .line 6775
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    if-eqz p2, :cond_78

    .line 6776
    const/16 p2, 0x12

    if-eq p3, p2, :cond_65

    .line 6777
    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 6779
    :cond_65
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object p6

    invoke-virtual {p2, p1, p3, p6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 6780
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance p6, Lcom/android/server/notification/NotificationManagerService$14;

    invoke-direct {p6, p0, p1}, Lcom/android/server/notification/NotificationManagerService$14;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {p2, p6}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 6789
    :cond_78
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p6, 0x0

    if-eqz p2, :cond_9c

    .line 6790
    iput-object p6, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 6791
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 6793
    :try_start_87
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object p2

    .line 6794
    if-eqz p2, :cond_99

    .line 6795
    invoke-interface {p2}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_92} :catch_98
    .catchall {:try_start_87 .. :try_end_92} :catchall_93

    goto :goto_99

    .line 6799
    :catchall_93
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 6797
    :catch_98
    move-exception p2

    .line 6799
    :cond_99
    :goto_99
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6804
    :cond_9c
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b8

    .line 6805
    iput-object p6, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 6806
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 6808
    :try_start_aa
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p2}, Landroid/os/Vibrator;->cancel()V
    :try_end_af
    .catchall {:try_start_aa .. :try_end_af} :catchall_b3

    .line 6811
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6812
    goto :goto_b8

    .line 6811
    :catchall_b3
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 6816
    :cond_b8
    :goto_b8
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6821
    :cond_bd
    const/4 p2, 0x2

    if-eq p3, p2, :cond_cd

    const/4 p2, 0x3

    if-eq p3, p2, :cond_cd

    packed-switch p3, :pswitch_data_16c

    goto :goto_d3

    .line 6830
    :pswitch_c7  #0x8, 0x9
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_d3

    .line 6826
    :cond_cd
    :pswitch_cd  #0xa, 0xb
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 6827
    nop

    .line 6834
    :goto_d3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object p2

    .line 6835
    iget-object p6, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p6, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/server/notification/NotificationRecord;

    .line 6836
    if-eqz p6, :cond_f0

    invoke-virtual {p6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_f0

    .line 6837
    iget-object p6, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p6, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6839
    :cond_f0
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    iget-object p6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p6}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p2, p6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    .line 6840
    if-eqz p2, :cond_123

    iget-object p6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p6

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_123

    .line 6841
    iget-object p6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6845
    :cond_123
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    iget-object p6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, p6}, Lcom/android/server/notification/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;)V

    .line 6847
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 6848
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getItemLogMaker()Landroid/metrics/LogMaker;

    move-result-object p2

    const/4 p6, 0x5

    .line 6849
    invoke-virtual {p2, p6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 6850
    invoke-virtual {p2, p3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 6851
    if-eq p4, v2, :cond_152

    if-eq p5, v2, :cond_152

    .line 6852
    const/16 p6, 0x31e

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p6, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p6

    const/16 v1, 0x573

    .line 6853
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p6, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 6855
    :cond_152
    invoke-static {p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 6856
    nop

    .line 6857
    invoke-virtual {p1, v3, v4}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v2

    invoke-virtual {p1, v3, v4}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result p2

    invoke-virtual {p1, v3, v4}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v4

    .line 6856
    move v1, p3

    move v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/server/EventLogTags;->writeNotificationCanceled(Ljava/lang/String;IIIIIILjava/lang/String;)V

    .line 6859
    return-void

    nop

    :pswitch_data_16c
    .packed-switch 0x8
        :pswitch_c7  #00000008
        :pswitch_c7  #00000009
        :pswitch_cd  #0000000a
        :pswitch_cd  #0000000b
    .end packed-switch
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6739
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V

    .line 6740
    return-void
.end method

.method private checkCallerIsSameApp(Ljava/lang/String;)V
    .registers 4

    .line 7524
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;II)V

    .line 7525
    return-void
.end method

.method private checkCallerIsSameApp(Ljava/lang/String;II)V
    .registers 8

    .line 7529
    const-string v0, "Unknown package "

    :try_start_2
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    .line 7531
    if-eqz p3, :cond_3e

    .line 7534
    iget v1, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 7540
    nop

    .line 7541
    return-void

    .line 7535
    :cond_15
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " gave package "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " which is owned by uid "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7532
    :cond_3e
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_53} :catch_53

    .line 7538
    :catch_53
    move-exception p2

    .line 7539
    new-instance p3, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private checkCallerIsSystem()V
    .registers 4

    .line 7446
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7447
    return-void

    .line 7449
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .registers 3

    .line 7463
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7464
    return-void

    .line 7466
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 7467
    return-void
.end method

.method private checkCallerIsSystemOrShell()V
    .registers 3

    .line 7439
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_9

    .line 7440
    return-void

    .line 7442
    :cond_9
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    .line 7443
    return-void
.end method

.method private checkCallerIsSystemOrSystemUiOrShell()V
    .registers 4

    .line 7453
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_9

    .line 7454
    return-void

    .line 7456
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7457
    return-void

    .line 7459
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7460
    return-void
.end method

.method private checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z
    .registers 14

    .line 5226
    iget-object v0, p5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 5227
    nop

    .line 5228
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1a

    const-string p2, "android"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    goto :goto_1a

    :cond_18
    move p2, v2

    goto :goto_1b

    :cond_1a
    :goto_1a
    move p2, v1

    .line 5229
    :goto_1b
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isListenerPackage(Ljava/lang/String;)Z

    move-result v3

    .line 5233
    if-nez p2, :cond_f8

    if-nez v3, :cond_f8

    .line 5234
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p2

    .line 5235
    :try_start_28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5236
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v5, p5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5d

    .line 5237
    invoke-virtual {p0, v3, p1}, Lcom/android/server/notification/NotificationManagerService;->isCallerInstantApp(II)Z

    move-result v3

    if-nez v3, :cond_41

    goto :goto_5d

    .line 5242
    :cond_41
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Instant app "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " cannot create notifications"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5247
    :cond_5d
    :goto_5d
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v4, p5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c6

    .line 5248
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v3

    if-nez v3, :cond_c6

    if-nez p6, :cond_c6

    .line 5251
    iget-object p6, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p6, v0}, Lcom/android/server/notification/NotificationUsageStats;->getAppEnqueueRate(Ljava/lang/String;)F

    move-result p6

    .line 5252
    iget v3, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    cmpl-float v3, p6, v3

    if-lez v3, :cond_c6

    .line 5253
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerOverRateQuota(Ljava/lang/String;)V

    .line 5254
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    .line 5255
    iget-wide v3, p0, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    sub-long v3, p3, v3

    const-wide/16 v5, 0x1388

    cmp-long p1, v3, v5

    if-lez p1, :cond_c4

    .line 5256
    const-string p1, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package enqueue rate is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p6, ". Shedding "

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5257
    invoke-virtual {p5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ". package="

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 5256
    invoke-static {p1, p5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5258
    iput-wide p3, p0, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    .line 5260
    :cond_c4
    monitor-exit p2

    return v2

    .line 5265
    :cond_c6
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->getNotificationCountLocked(Ljava/lang/String;IILjava/lang/String;)I

    move-result p3

    .line 5266
    const/16 p4, 0x19

    if-lt p3, p4, :cond_f3

    .line 5267
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerOverCountQuota(Ljava/lang/String;)V

    .line 5268
    const-string p1, "NotificationService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Package has already posted or enqueued "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " notifications.  Not showing more.  package="

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5270
    monitor-exit p2

    return v2

    .line 5272
    :cond_f3
    monitor-exit p2

    goto :goto_f8

    :catchall_f5
    move-exception p1

    monitor-exit p2
    :try_end_f7
    .catchall {:try_start_28 .. :try_end_f7} :catchall_f5

    throw p1

    .line 5276
    :cond_f8
    :goto_f8
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/notification/SnoozeHelper;->isSnoozed(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13d

    .line 5277
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p2

    const/4 p3, 0x6

    .line 5278
    invoke-virtual {p2, p3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p2

    const/16 p3, 0x33f

    .line 5279
    invoke-virtual {p2, p3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 5277
    invoke-static {p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 5280
    sget-boolean p2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p2, :cond_134

    .line 5281
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignored enqueue for snoozed notification "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NotificationService"

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5283
    :cond_134
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {p2, p1, p5}, Lcom/android/server/notification/SnoozeHelper;->update(ILcom/android/server/notification/NotificationRecord;)V

    .line 5284
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 5285
    return v2

    .line 5290
    :cond_13d
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p0, p5, p1}, Lcom/android/server/notification/NotificationManagerService;->isBlocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationUsageStats;)Z

    move-result p1

    if-eqz p1, :cond_146

    .line 5291
    return v2

    .line 5294
    :cond_146
    return v1
.end method

.method private checkRestrictedCategories(Landroid/app/Notification;)V
    .registers 5

    .line 7480
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v1, "android.hardware.type.automotive"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    if-nez v0, :cond_c

    .line 7481
    return-void

    .line 7486
    :cond_c
    goto :goto_19

    .line 7483
    :catch_d
    move-exception v0

    .line 7484
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_19

    const-string v0, "NotificationService"

    const-string v1, "Unable to confirm if it\'s safe to skip category restrictions check thus the check will be done anyway"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7487
    :cond_19
    :goto_19
    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v1, "car_emergency"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 7488
    const-string v1, "car_warning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object p1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 7489
    const-string v0, "car_information"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 7490
    :cond_37
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    .line 7492
    :cond_3a
    return-void
.end method

.method static clamp(III)I
    .registers 3

    .line 6692
    if-ge p0, p1, :cond_4

    move p0, p1

    goto :goto_7

    :cond_4
    if-le p0, p2, :cond_7

    move p0, p2

    :cond_7
    :goto_7
    return p0
.end method

.method private clearAutogroupSummaryLocked(ILjava/lang/String;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 4393
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 4394
    if-eqz p1, :cond_2c

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 4396
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    .line 4397
    if-eqz v1, :cond_2c

    .line 4398
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v4

    .line 4399
    const/4 v2, 0x0

    const/16 v3, 0x10

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    .line 4402
    :cond_2c
    return-void
.end method

.method private clearLightsLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 1144
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLineageNotificationLights:Lorg/lineageos/internal/notification/LineageNotificationLights;

    invoke-virtual {v0}, Lorg/lineageos/internal/notification/LineageNotificationLights;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1145
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1146
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 1148
    :cond_10
    return-void
.end method

.method private clearSoundLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 1116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 1117
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1119
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    .line 1120
    if-eqz v2, :cond_19

    .line 1121
    invoke-interface {v2}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_18
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    goto :goto_19

    .line 1125
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1123
    :catch_18
    move-exception v2

    .line 1125
    :cond_19
    :goto_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1126
    nop

    .line 1127
    return-void
.end method

.method private clearVibrateLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 1131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 1132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1134
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1136
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1137
    nop

    .line 1138
    return-void

    .line 1136
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V
    .registers 25

    .line 4412
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 4413
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4414
    :try_start_7
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 4415
    if-nez v3, :cond_15

    .line 4418
    monitor-exit v2

    return-void

    .line 4420
    :cond_15
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4421
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 4422
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 4423
    if-nez v5, :cond_32

    .line 4424
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 4426
    :cond_32
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4427
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_112

    .line 4429
    nop

    .line 4430
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.appInfo"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 4432
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 4433
    const-string v9, "android.appInfo"

    invoke-virtual {v7, v9, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4434
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    .line 4435
    new-instance v9, Landroid/app/Notification$Builder;

    .line 4436
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4437
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 4438
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v10, 0x2

    .line 4439
    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    move-result-object v6

    const-string/jumbo v10, "ranker_group"

    .line 4440
    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/16 v10, 0x400

    .line 4441
    invoke-virtual {v6, v10, v9}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v6

    const/16 v10, 0x200

    .line 4442
    invoke-virtual {v6, v10, v9}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 4443
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->color:I

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 4444
    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 4445
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 4446
    iget-object v9, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v9, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4447
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 4448
    if-eqz v11, :cond_cb

    .line 4449
    nop

    .line 4450
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v14

    .line 4449
    invoke-static/range {v9 .. v14}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 4452
    :cond_cb
    new-instance v7, Landroid/service/notification/StatusBarNotification;

    .line 4453
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 4454
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7fffffff

    const-string/jumbo v13, "ranker_group"

    .line 4456
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v14

    .line 4457
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v15

    .line 4458
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v17

    const-string/jumbo v18, "ranker_group"

    .line 4459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object v9, v7

    move-object/from16 v16, v6

    invoke-direct/range {v9 .. v20}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 4460
    new-instance v4, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 4461
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v9

    invoke-direct {v4, v6, v7, v9}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V

    .line 4462
    nop

    .line 4463
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getIsAppImportanceLocked()Z

    move-result v3

    .line 4462
    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationRecord;->setIsAppImportanceLocked(Z)V

    .line 4464
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v4

    goto :goto_114

    .line 4427
    :cond_112
    const/4 v1, 0x0

    move-object v9, v1

    .line 4466
    :goto_114
    monitor-exit v2
    :try_end_115
    .catchall {:try_start_7 .. :try_end_115} :catchall_13b

    .line 4467
    if-eqz v9, :cond_13a

    sget v3, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    iget-object v1, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4468
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    iget-object v1, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    .line 4467
    move-object/from16 v1, p0

    move v2, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v1

    if-eqz v1, :cond_13a

    .line 4469
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    invoke-direct {v2, v0, v8, v9}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 4471
    :cond_13a
    return-void

    .line 4466
    :catchall_13b
    move-exception v0

    :try_start_13c
    monitor-exit v2
    :try_end_13d
    .catchall {:try_start_13c .. :try_end_13d} :catchall_13b

    throw v0
.end method

.method private createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V
    .registers 8

    .line 2080
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2081
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2083
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 2084
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 2085
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Z)V

    .line 2087
    if-nez p4, :cond_1a

    .line 2088
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifyChannelGroupOwner(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)V

    .line 2090
    :cond_1a
    if-nez p5, :cond_2a

    .line 2091
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 2092
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p4

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p4

    const/4 p5, 0x1

    .line 2091
    invoke-virtual {p2, p1, p4, p3, p5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelGroupChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    .line 2095
    :cond_2a
    return-void
.end method

.method private disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 4

    .line 4474
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    if-eqz v0, :cond_7

    .line 4475
    const-string p1, "booleanState"

    return-object p1

    .line 4477
    :cond_7
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    .line 4478
    const-string p1, "listenerHints"

    return-object p1

    .line 4480
    :cond_10
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 4481
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2b

    .line 4482
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-eq v0, v1, :cond_2b

    .line 4484
    const-string p1, "listenerNoti"

    return-object p1

    .line 4487
    :cond_2b
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3e

    .line 4488
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-ne v0, v1, :cond_3e

    .line 4490
    const-string p1, "listenerCall"

    return-object p1

    .line 4494
    :cond_3e
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 4495
    const-string p1, "callState"

    return-object p1

    .line 4497
    :cond_4d
    const/4 p1, 0x0

    return-object p1
.end method

.method private doChannelWarningToast(Ljava/lang/CharSequence;)V
    .registers 3

    .line 5177
    new-instance v0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9w6AHlBdw5iqUuefzw5prTMG5fg;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9w6AHlBdw5iqUuefzw5prTMG5fg;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 5187
    return-void
.end method

.method private dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 6

    .line 4501
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4503
    :try_start_5
    const-string/jumbo v1, "service"

    const-string v2, "Notification Manager"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4504
    const-string v1, "bans"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/PreferencesHelper;->dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4505
    const-string/jumbo v1, "ranking"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/PreferencesHelper;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4506
    const-string/jumbo v1, "stats"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/NotificationUsageStats;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4507
    const-string v1, "channels"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/PreferencesHelper;->dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3b} :catch_3c

    .line 4510
    goto :goto_40

    .line 4508
    :catch_3c
    move-exception p2

    .line 4509
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 4511
    :goto_40
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4512
    return-void
.end method

.method private dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 10

    .line 4598
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4600
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4601
    if-lez v1, :cond_3b

    .line 4602
    const-string v2, "  Notification List:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4603
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_36

    .line 4604
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 4605
    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_28

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_33

    .line 4606
    :cond_28
    const-string v4, "    "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 4603
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 4608
    :cond_36
    const-string p2, "  "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4610
    :cond_3b
    monitor-exit v0

    .line 4611
    return-void

    .line 4610
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 14

    .line 4524
    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v6, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4525
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4526
    :try_start_8
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4527
    const/4 v8, 0x0

    move v9, v8

    :goto_10
    if-ge v9, v7, :cond_36

    .line 4528
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 4529
    iget-boolean v1, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_33

    .line 4530
    :cond_27
    const-wide v2, 0x20b00000001L

    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v5, 0x1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    .line 4527
    :goto_33
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 4533
    :cond_36
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4534
    move v9, v8

    :goto_3d
    if-ge v9, v7, :cond_63

    .line 4535
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 4536
    iget-boolean v1, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v1, :cond_54

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_54

    goto :goto_60

    .line 4537
    :cond_54
    const-wide v2, 0x20b00000001L

    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    .line 4534
    :goto_60
    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    .line 4540
    :cond_63
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v7

    .line 4541
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 4542
    move v10, v8

    :goto_6e
    if-ge v10, v9, :cond_92

    .line 4543
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 4544
    iget-boolean v1, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v1, :cond_83

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_83

    goto :goto_8f

    .line 4545
    :cond_83
    const-wide v2, 0x20b00000001L

    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v5, 0x2

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    .line 4542
    :goto_8f
    add-int/lit8 v10, v10, 0x1

    goto :goto_6e

    .line 4549
    :cond_92
    const-wide v0, 0x10b00000002L

    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4550
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2, v6}, Lcom/android/server/notification/ZenModeHelper;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 4551
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 4552
    const-wide v4, 0x20b00000004L

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4553
    goto :goto_a6

    .line 4554
    :cond_bb
    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4556
    const-wide v0, 0x10b00000003L

    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4557
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v2, v6, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4558
    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4560
    const-wide v0, 0x10500000004L

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-virtual {v6, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4562
    move v0, v8

    :goto_da
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_11f

    .line 4563
    const-wide v1, 0x20b00000005L

    invoke-virtual {v6, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 4566
    const-wide v3, 0x10500000001L

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 4567
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 4566
    invoke-virtual {v6, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4568
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 4569
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 4570
    move v4, v8

    :goto_102
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_119

    .line 4571
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4572
    const-wide v9, 0x20b00000003L

    invoke-virtual {v5, v6, v9, v10}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4570
    add-int/lit8 v4, v4, 0x1

    goto :goto_102

    .line 4576
    :cond_119
    invoke-virtual {v6, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4562
    add-int/lit8 v0, v0, 0x1

    goto :goto_da

    .line 4579
    :cond_11f
    const-wide v0, 0x10b00000006L

    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4581
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v2, v6, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4582
    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4584
    const-wide v0, 0x10b00000007L

    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4585
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v2, v6, p2}, Lcom/android/server/notification/ConditionProviders;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4586
    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4588
    const-wide v0, 0x10b00000008L

    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4589
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v2, v6, p2}, Lcom/android/server/notification/RankingHelper;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4590
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, v6, p2}, Lcom/android/server/notification/PreferencesHelper;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4591
    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4592
    monitor-exit p1
    :try_end_158
    .catchall {:try_start_8 .. :try_end_158} :catchall_15c

    .line 4594
    invoke-virtual {v6}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 4595
    return-void

    .line 4592
    :catchall_15c
    move-exception p2

    :try_start_15d
    monitor-exit p1
    :try_end_15e
    .catchall {:try_start_15d .. :try_end_15e} :catchall_15c

    throw p2
.end method

.method private dumpRemoteViewStats(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 7

    .line 4515
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    iget-wide v1, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats;->remoteViewStats(JZ)Lcom/android/server/notification/PulledStats;

    move-result-object v0

    .line 4516
    if-nez v0, :cond_12

    .line 4517
    const-string/jumbo p2, "no remote view stats reported."

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4518
    return-void

    .line 4520
    :cond_12
    invoke-virtual {v0, v3, p1, p2}, Lcom/android/server/notification/PulledStats;->dump(ILjava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4521
    return-void
.end method

.method private exitIdle()V
    .registers 3

    .line 2014
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    if-eqz v0, :cond_c

    .line 2015
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const-string/jumbo v1, "notification interaction"

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 2018
    :cond_c
    goto :goto_e

    .line 2017
    :catch_d
    move-exception v0

    .line 2019
    :goto_e
    return-void
.end method

.method private findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 7289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7290
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7291
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_34

    .line 7292
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 7293
    invoke-direct {p0, v3, p4}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 7294
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 7295
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7291
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 7298
    :cond_34
    return-object v0
.end method

.method private findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7307
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 7308
    return-object v0

    .line 7310
    :cond_9
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 7311
    return-object p1

    .line 7313
    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method private findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/notification/NotificationRecord;"
        }
    .end annotation

    .line 7361
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7362
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_21

    .line 7363
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 7364
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    return-object p1

    .line 7362
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7367
    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method private findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/android/server/notification/NotificationRecord;"
        }
    .end annotation

    .line 7332
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7333
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_37

    .line 7334
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 7335
    invoke-direct {p0, v2, p5}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-ne v3, p4, :cond_34

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 7336
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 7337
    return-object v2

    .line 7333
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7340
    :cond_37
    const/4 p1, 0x0

    return-object p1
.end method

.method private findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6550
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result p1

    return p1
.end method

.method private findNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 7346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7347
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7348
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_3e

    .line 7349
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 7350
    invoke-direct {p0, v3, p5}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p4, :cond_3b

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 7351
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 7352
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7348
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 7355
    :cond_3e
    return-object v0
.end method

.method private flagNotificationForBubbles(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)V
    .registers 6

    .line 4984
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 4985
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isNotificationAppropriateToBubble(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 4986
    iget p1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, v0, Landroid/app/Notification;->flags:I

    goto :goto_17

    .line 4988
    :cond_11
    iget p1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 p1, p1, -0x1001

    iput p1, v0, Landroid/app/Notification;->flags:I

    .line 4991
    :goto_17
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 4992
    invoke-virtual {p1, p2}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x64

    if-ne p1, p2, :cond_23

    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    .line 4993
    :goto_24
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p2

    .line 4994
    if-nez p1, :cond_37

    if-eqz p2, :cond_37

    .line 4996
    invoke-virtual {p2}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    move-result p1

    .line 4997
    and-int/lit8 p1, p1, -0x2

    .line 4998
    and-int/lit8 p1, p1, -0x3

    .line 4999
    invoke-virtual {p2, p1}, Landroid/app/Notification$BubbleMetadata;->setFlags(I)V

    .line 5001
    :cond_37
    return-void
.end method

.method private generateLastSoundTimeoutKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 4

    .line 6092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getGroupHelper()Lcom/android/server/notification/GroupHelper;
    .registers 4

    .line 1923
    nop

    .line 1924
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutoGroupAtCount:I

    .line 1925
    new-instance v0, Lcom/android/server/notification/GroupHelper;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAutoGroupAtCount:I

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$10;

    invoke-direct {v2, p0}, Lcom/android/server/notification/NotificationManagerService$10;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/GroupHelper;-><init>(ILcom/android/server/notification/GroupHelper$Callback;)V

    return-object v0
.end method

.method static getLongArray(Landroid/content/res/Resources;II[J)[J
    .registers 6

    .line 1496
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    .line 1497
    if-nez p0, :cond_7

    .line 1498
    return-object p3

    .line 1500
    :cond_7
    array-length p1, p0

    if-le p1, p2, :cond_b

    goto :goto_c

    :cond_b
    array-length p2, p0

    .line 1501
    :goto_c
    new-array p1, p2, [J

    .line 1502
    const/4 p3, 0x0

    :goto_f
    if-ge p3, p2, :cond_19

    .line 1503
    aget v0, p0, p3

    int-to-long v0, v0

    aput-wide v0, p1, p3

    .line 1502
    add-int/lit8 p3, p3, 0x1

    goto :goto_f

    .line 1505
    :cond_19
    return-object p1
.end method

.method private getRealUserId(I)I
    .registers 3

    .line 2318
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    :cond_4
    return p1
.end method

.method private getSuppressors()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 2117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2118
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_2e

    .line 2119
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2121
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 2122
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2123
    goto :goto_1b

    .line 2118
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 2126
    :cond_2e
    return-object v0
.end method

.method private grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 16

    .line 6933
    if-eqz p2, :cond_35

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_35

    .line 6935
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6937
    :try_start_13
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 6938
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    .line 6940
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {p2, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    .line 6937
    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move v9, p5

    invoke-interface/range {v2 .. v9}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_29} :catch_2f
    .catchall {:try_start_13 .. :try_end_29} :catchall_2a

    goto :goto_30

    .line 6945
    :catchall_2a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 6942
    :catch_2f
    move-exception p1

    .line 6945
    :goto_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6946
    nop

    .line 6947
    return-void

    .line 6933
    :cond_35
    :goto_35
    return-void
.end method

.method private handleDurationReached(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 4

    .line 6373
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6374
    :cond_26
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 6375
    :try_start_29
    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result p1

    .line 6376
    if-ltz p1, :cond_36

    .line 6377
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V

    .line 6379
    :cond_36
    monitor-exit v0

    .line 6380
    return-void

    .line 6379
    :catchall_38
    move-exception p1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method private handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 5882
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5883
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 5884
    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v2

    if-nez v2, :cond_18

    .line 5887
    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, -0x201

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 5890
    :cond_18
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    .line 5891
    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    .line 5893
    const/4 v2, 0x0

    if-eqz p2, :cond_2a

    iget-object v3, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    goto :goto_2b

    :cond_2a
    move-object v3, v2

    .line 5894
    :goto_2b
    if-eqz p2, :cond_33

    iget-object v2, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    .line 5895
    :cond_33
    if-eqz p2, :cond_3d

    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 v3, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    .line 5897
    :goto_3e
    if-eqz v3, :cond_75

    .line 5898
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 5899
    if-eq v4, p2, :cond_75

    .line 5901
    if-eqz v4, :cond_51

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    goto :goto_53

    :cond_51
    const-string v4, "<null>"

    .line 5902
    :goto_53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed summary didn\'t match old notification: old="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", removed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NotificationService"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5906
    :cond_75
    if-eqz v1, :cond_7c

    .line 5907
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5914
    :cond_7c
    if-eqz v3, :cond_90

    if-eqz v1, :cond_86

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_90

    .line 5915
    :cond_86
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 5918
    :cond_90
    return-void
.end method

.method private handleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 4

    .line 6392
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kill Token Timeout token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6393
    :cond_1c
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 6394
    :try_start_1f
    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    iget p1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->displayId:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/notification/NotificationManagerService;->finishTokenLocked(Landroid/os/IBinder;I)V

    .line 6395
    monitor-exit v0

    .line 6396
    return-void

    .line 6395
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_28

    throw p1
.end method

.method private handleListenerHintsChanged(I)V
    .registers 4

    .line 6573
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6574
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChangedLocked(I)V

    .line 6575
    monitor-exit v0

    .line 6576
    return-void

    .line 6575
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private handleListenerInterruptionFilterChanged(I)V
    .registers 4

    .line 6579
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6580
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(I)V

    .line 6581
    monitor-exit v0

    .line 6582
    return-void

    .line 6581
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private handleOnPackageChanged(ZI[Ljava/lang/String;[I)V
    .registers 6

    .line 6586
    nop

    .line 6587
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 6588
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 6589
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 6590
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->onPackagesChanged(ZI[Ljava/lang/String;[I)Z

    move-result p2

    or-int/2addr p1, p2

    .line 6592
    if-eqz p1, :cond_1c

    .line 6593
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 6595
    :cond_1c
    return-void
.end method

.method private handleRankingReconsideration(Landroid/os/Message;)V
    .registers 11

    .line 6433
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/notification/RankingReconsideration;

    if-nez v0, :cond_7

    return-void

    .line 6434
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/notification/RankingReconsideration;

    .line 6435
    invoke-virtual {p1}, Lcom/android/server/notification/RankingReconsideration;->run()V

    .line 6437
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6438
    :try_start_11
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/RankingReconsideration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 6439
    if-nez v1, :cond_21

    .line 6440
    monitor-exit v0

    return-void

    .line 6442
    :cond_21
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v2

    .line 6443
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    .line 6444
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v4

    .line 6445
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v5

    .line 6447
    invoke-virtual {p1, v1}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 6448
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 6449
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 6450
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result p1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v2, p1, :cond_48

    move p1, v6

    goto :goto_49

    :cond_48
    move p1, v7

    .line 6451
    :goto_49
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v2

    if-eq v3, v2, :cond_51

    move v2, v6

    goto :goto_52

    :cond_51
    move v2, v7

    .line 6452
    :goto_52
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v8

    if-eq v4, v8, :cond_5a

    move v4, v6

    goto :goto_5b

    :cond_5a
    move v4, v7

    .line 6455
    :goto_5b
    nop

    .line 6456
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v8

    if-eqz v8, :cond_6a

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v8

    if-eq v5, v8, :cond_6a

    move v5, v6

    goto :goto_6b

    :cond_6a
    move v5, v7

    .line 6458
    :goto_6b
    if-nez p1, :cond_75

    if-nez v2, :cond_75

    if-nez v4, :cond_75

    if-eqz v5, :cond_74

    goto :goto_75

    :cond_74
    move v6, v7

    .line 6459
    :cond_75
    :goto_75
    if-eqz v3, :cond_8a

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result p1

    if-nez p1, :cond_8a

    .line 6460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->isNewEnoughForAlerting(J)Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 6461
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 6463
    :cond_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_11 .. :try_end_8b} :catchall_93

    .line 6464
    if-eqz v6, :cond_92

    .line 6465
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 6467
    :cond_92
    return-void

    .line 6463
    :catchall_93
    move-exception p1

    :try_start_94
    monitor-exit v0
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw p1
.end method

.method private handleSendRankingUpdate()V
    .registers 4

    .line 6554
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6555
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked(Ljava/util/List;)V

    .line 6556
    monitor-exit v0

    .line 6557
    return-void

    .line 6556
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private hasAutoGroupSummaryLocked(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 4406
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 4407
    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method private hasValidRemoteInput(Landroid/app/Notification;)Z
    .registers 5

    .line 5100
    iget-object p1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 5101
    const/4 v0, 0x0

    if-eqz p1, :cond_19

    .line 5103
    move v1, v0

    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 5104
    aget-object v2, p1, v1

    .line 5105
    invoke-virtual {v2}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v2

    .line 5106
    if-eqz v2, :cond_16

    array-length v2, v2

    if-lez v2, :cond_16

    .line 5107
    const/4 p1, 0x1

    return p1

    .line 5103
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 5111
    :cond_19
    return v0
.end method

.method private isBlocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 6

    .line 5334
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 5335
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    .line 5336
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/notification/PreferencesHelper;->isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 5337
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2d

    .line 5339
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p1, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 p1, 0x1

    .line 5336
    :goto_2e
    return p1
.end method

.method private isCallerAndroid(Ljava/lang/String;I)Z
    .registers 3

    .line 7470
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result p2

    if-eqz p2, :cond_12

    if-eqz p1, :cond_12

    .line 7471
    const-string p2, "android"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 7470
    :goto_13
    return p1
.end method

.method private isCallerSameApp(Ljava/lang/String;)Z
    .registers 2

    .line 7545
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    .line 7546
    const/4 p1, 0x1

    return p1

    .line 7547
    :catch_5
    move-exception p1

    .line 7548
    const/4 p1, 0x0

    return p1
.end method

.method private isCallerSameApp(Ljava/lang/String;II)Z
    .registers 4

    .line 7554
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;II)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    .line 7555
    const/4 p1, 0x1

    return p1

    .line 7556
    :catch_5
    move-exception p1

    .line 7557
    const/4 p1, 0x0

    return p1
.end method

.method private isCritical(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 5868
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getCriticality()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method private isInCall()Z
    .registers 4

    .line 7733
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallStateOffHook:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 7734
    return v1

    .line 7736
    :cond_6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 7737
    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    const/4 v2, 0x3

    if-ne v0, v2, :cond_13

    goto :goto_15

    .line 7741
    :cond_13
    const/4 v0, 0x0

    return v0

    .line 7739
    :cond_15
    :goto_15
    return v1
.end method

.method private isInSoundTimeoutPeriod(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 10

    .line 6078
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 6079
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    .line 6078
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationSoundTimeout(Ljava/lang/String;I)J

    move-result-wide v0

    .line 6080
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    .line 6081
    return v3

    .line 6084
    :cond_1a
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLastSoundTimestamps:Landroid/util/ArrayMap;

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->generateLastSoundTimeoutKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 6085
    if-nez p1, :cond_29

    .line 6086
    return v3

    .line 6088
    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long p1, v4, v0

    if-gez p1, :cond_37

    const/4 v3, 0x1

    :cond_37
    return v3
.end method

.method private isLedForcedOn(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 7271
    if-eqz p1, :cond_f

    .line 7272
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLineageNotificationLights:Lorg/lineageos/internal/notification/LineageNotificationLights;

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/lineageos/internal/notification/LineageNotificationLights;->isForcedOn(Landroid/app/Notification;)Z

    move-result p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    .line 7271
    :goto_10
    return p1
.end method

.method private isNotificationAppropriateToBubble(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)Z
    .registers 8

    .line 5009
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 5010
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->canBubble(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)Z

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_c

    .line 5012
    return v1

    .line 5015
    :cond_c
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p3}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p3

    if-eqz p3, :cond_1e

    .line 5016
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string p2, "low ram device"

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->logBubbleError(Ljava/lang/String;Ljava/lang/String;)V

    .line 5017
    return v1

    .line 5020
    :cond_1e
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p3, p2}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x64

    const/4 v2, 0x1

    if-ne p2, p3, :cond_2a

    .line 5022
    return v2

    .line 5025
    :cond_2a
    if-eqz p4, :cond_37

    invoke-virtual {p4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget p2, p2, Landroid/app/Notification;->flags:I

    and-int/lit16 p2, p2, 0x1000

    if-eqz p2, :cond_37

    .line 5027
    return v2

    .line 5033
    :cond_37
    iget-object p2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz p2, :cond_44

    .line 5034
    iget-object p2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p3, "android.people.list"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_45

    .line 5035
    :cond_44
    const/4 p2, 0x0

    .line 5037
    :goto_45
    const-class p3, Landroid/app/Notification$MessagingStyle;

    .line 5038
    invoke-virtual {v0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object p4

    .line 5037
    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 5039
    if-nez p3, :cond_63

    if-eqz p2, :cond_59

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_63

    .line 5040
    :cond_59
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string p2, "if not foreground, must have a person and be Notification.MessageStyle or Notification.CATEGORY_CALL"

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->logBubbleError(Ljava/lang/String;Ljava/lang/String;)V

    .line 5042
    return v1

    .line 5046
    :cond_63
    iget-object p2, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string p4, "call"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 5047
    iget p4, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 p4, p4, 0x40

    if-eqz p4, :cond_73

    move p4, v2

    goto :goto_74

    :cond_73
    move p4, v1

    .line 5048
    :goto_74
    if-eqz p3, :cond_87

    .line 5049
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->hasValidRemoteInput(Landroid/app/Notification;)Z

    move-result p2

    if-eqz p2, :cond_7d

    .line 5050
    return v2

    .line 5052
    :cond_7d
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string p2, "messages require valid remote input"

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->logBubbleError(Ljava/lang/String;Ljava/lang/String;)V

    .line 5053
    return v1

    .line 5054
    :cond_87
    if-eqz p2, :cond_96

    .line 5055
    if-eqz p4, :cond_8c

    .line 5056
    return v2

    .line 5058
    :cond_8c
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string p2, "calls require foreground service"

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->logBubbleError(Ljava/lang/String;Ljava/lang/String;)V

    .line 5059
    return v1

    .line 5061
    :cond_96
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string p2, "if not foreground, must be Notification.MessageStyle or Notification.CATEGORY_CALL"

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->logBubbleError(Ljava/lang/String;Ljava/lang/String;)V

    .line 5063
    return v1
.end method

.method private isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5

    .line 6250
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6252
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_2a

    .line 6254
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6255
    nop

    .line 6256
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    .line 6257
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    if-eq v0, v2, :cond_28

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 6258
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result p1

    if-eqz p1, :cond_26

    goto :goto_28

    :cond_26
    const/4 p1, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 p1, 0x1

    .line 6256
    :goto_29
    return p1

    .line 6254
    :catchall_2a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 6

    .line 7668
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7669
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 7671
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_e} :catch_14
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 7678
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7671
    return p1

    .line 7678
    :catchall_12
    move-exception p1

    goto :goto_23

    .line 7674
    :catch_14
    move-exception p1

    .line 7676
    const/4 p1, 0x0

    .line 7678
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7676
    return p1

    .line 7672
    :catch_1a
    move-exception p1

    .line 7673
    :try_start_1b
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Could not talk to package manager service"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_12

    .line 7678
    :goto_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 3

    .line 7660
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result p1

    if-nez p1, :cond_c

    .line 7661
    const/4 p1, 0x0

    return p1

    .line 7664
    :cond_c
    const/4 p1, 0x1

    return p1
.end method

.method private listenForCallState()V
    .registers 4

    .line 7571
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$17;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$17;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 7579
    return-void
.end method

.method private logBubbleError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 5115
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_22

    .line 5116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bubble notification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotificationService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5118
    :cond_22
    return-void
.end method

.method private makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .registers 33
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7587
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7588
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7590
    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v1, :cond_b3

    .line 7591
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 7592
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v7, p1

    invoke-direct {v0, v6, v7}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v6

    if-nez v6, :cond_25

    .line 7593
    goto/16 :goto_af

    .line 7595
    :cond_25
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 7596
    new-instance v6, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v6}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 7598
    nop

    .line 7600
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 7601
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v8

    .line 7602
    const/4 v11, 0x1

    xor-int/lit8 v12, v8, 0x1

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v13

    .line 7603
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v14

    .line 7604
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v15

    .line 7605
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v16

    iget-object v8, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 7606
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v17

    .line 7607
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v18

    .line 7608
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v19

    .line 7609
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v20

    .line 7610
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v21

    .line 7611
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v22

    .line 7612
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v23

    .line 7613
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getLastAudiblyAlertedMs()J

    move-result-wide v24

    .line 7614
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_7e

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getVibration()[J

    move-result-object v8

    if-eqz v8, :cond_7b

    goto :goto_7e

    :cond_7b
    move/from16 v30, v3

    goto :goto_80

    :cond_7e
    :goto_7e
    move/from16 v30, v11

    .line 7615
    :goto_80
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v26

    .line 7616
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v27

    .line 7617
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v28

    .line 7618
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v29

    .line 7598
    move-object v8, v6

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move-wide/from16 v23, v24

    move/from16 v25, v30

    invoke-virtual/range {v8 .. v29}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZJZLjava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 7620
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7590
    :goto_af
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    .line 7623
    :cond_b3
    new-instance v0, Landroid/service/notification/NotificationRankingUpdate;

    new-array v1, v3, [Landroid/service/notification/NotificationListenerService$Ranking;

    .line 7624
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0, v1}, Landroid/service/notification/NotificationRankingUpdate;-><init>([Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 7623
    return-object v0
.end method

.method private maybeNotifyChannelGroupOwner(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)V
    .registers 8

    .line 2100
    :try_start_0
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p3

    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    if-eq p3, v0, :cond_3f

    .line 2101
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.NOTIFICATION_CHANNEL_GROUP_BLOCK_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.extra.NOTIFICATION_CHANNEL_GROUP_ID"

    .line 2104
    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    .line 2103
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.app.extra.BLOCKED_STATE"

    .line 2106
    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p4

    .line 2105
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p4

    const/high16 v0, 0x10000000

    .line 2107
    invoke-virtual {p4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p4

    .line 2108
    invoke-virtual {p4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 2109
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 p4, 0x0

    .line 2101
    invoke-virtual {p3, p1, p2, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3f} :catch_40

    .line 2113
    :cond_3f
    goto :goto_48

    .line 2111
    :catch_40
    move-exception p1

    .line 2112
    const-string p2, "NotificationService"

    const-string p3, "Can\'t notify app about group change"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2114
    :goto_48
    return-void
.end method

.method private maybeNotifyChannelOwner(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .registers 8

    .line 2059
    :try_start_0
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_c

    .line 2060
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_18

    .line 2061
    :cond_c
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    if-eqz p3, :cond_52

    .line 2062
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    if-nez p3, :cond_52

    .line 2063
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.NOTIFICATION_CHANNEL_BLOCK_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.extra.NOTIFICATION_CHANNEL_ID"

    .line 2066
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    .line 2065
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.app.extra.BLOCKED_STATE"

    .line 2068
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p4

    if-nez p4, :cond_37

    const/4 p4, 0x1

    goto :goto_38

    :cond_37
    const/4 p4, 0x0

    .line 2067
    :goto_38
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p4

    const/high16 v0, 0x10000000

    .line 2069
    invoke-virtual {p4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p4

    .line 2070
    invoke-virtual {p4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 2071
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 p4, 0x0

    .line 2063
    invoke-virtual {p3, p1, p2, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_52} :catch_53

    .line 2075
    :cond_52
    goto :goto_5b

    .line 2073
    :catch_53
    move-exception p1

    .line 2074
    const-string p2, "NotificationService"

    const-string p3, "Can\'t notify app about channel change"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2076
    :goto_5b
    return-void
.end method

.method private notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 3

    .line 7014
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result p2

    if-nez p2, :cond_15

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 7015
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    .line 7014
    :goto_16
    return p1
.end method

.method private notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 5

    .line 6999
    const/4 v0, -0x1

    if-eq p2, v0, :cond_12

    .line 7003
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    if-eq v1, v0, :cond_12

    .line 7005
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result p1

    if-ne p1, p2, :cond_10

    goto :goto_12

    :cond_10
    const/4 p1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p1, 0x1

    .line 6999
    :goto_13
    return p1
.end method

.method private playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)Z
    .registers 12

    .line 6174
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    .line 6178
    :goto_f
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v3

    if-nez v3, :cond_74

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 6180
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v4

    .line 6179
    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-eqz v3, :cond_74

    .line 6181
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 6183
    :try_start_2b
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v5

    .line 6184
    if-eqz v5, :cond_71

    .line 6185
    sget-boolean v6, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v6, :cond_59

    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Playing sound "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " with attributes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6186
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6185
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6187
    :cond_59
    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 6188
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 6187
    invoke-interface {v5, p2, v6, v0, p1}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_66} :catch_70
    .catchall {:try_start_2b .. :try_end_66} :catchall_6b

    .line 6189
    nop

    .line 6193
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6189
    return v1

    .line 6193
    :catchall_6b
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 6191
    :catch_70
    move-exception p1

    .line 6193
    :cond_71
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6196
    :cond_74
    return v2
.end method

.method private playVibration(Lcom/android/server/notification/NotificationRecord;[JZ)Z
    .registers 15

    .line 6203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6207
    nop

    .line 6208
    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x1

    if-eqz v3, :cond_13

    move v3, v4

    goto :goto_14

    :cond_13
    move v3, v2

    .line 6209
    :goto_14
    nop

    .line 6210
    if-eqz v3, :cond_19

    move v3, v2

    goto :goto_1a

    :cond_19
    const/4 v3, -0x1

    .line 6209
    :goto_1a
    invoke-static {p2, v3}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v8
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_1e} :catch_4d
    .catchall {:try_start_6 .. :try_end_1e} :catchall_4b

    .line 6215
    nop

    .line 6216
    if-eqz p3, :cond_2f

    .line 6217
    :try_start_21
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$j4BPSChjnlmaf86eJ3K-gjNHWGc;

    invoke-direct {p3, p0, p1, v8}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$j4BPSChjnlmaf86eJ3K-gjNHWGc;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6237
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_46

    .line 6239
    :cond_2f
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Notification"

    .line 6240
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v10

    .line 6239
    invoke-virtual/range {v5 .. v10}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V
    :try_end_46
    .catchall {:try_start_21 .. :try_end_46} :catchall_4b

    .line 6242
    :goto_46
    nop

    .line 6244
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6242
    return v4

    .line 6244
    :catchall_4b
    move-exception p1

    goto :goto_6d

    .line 6211
    :catch_4d
    move-exception p1

    .line 6212
    :try_start_4e
    const-string p1, "NotificationService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating vibration waveform with pattern: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6213
    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6212
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_4e .. :try_end_68} :catchall_4b

    .line 6214
    nop

    .line 6244
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6214
    return v2

    .line 6244
    :goto_6d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6531
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6532
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->recordCaller(Lcom/android/server/notification/NotificationRecord;)V

    .line 6534
    :cond_d
    return-void
.end method

.method private registerDeviceConfigChange()V
    .registers 4

    .line 1906
    nop

    .line 1908
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$12gEiRp5yhg_vLn2NsMtnAkm3GI;

    invoke-direct {v1, p0}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$12gEiRp5yhg_vLn2NsMtnAkm3GI;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1906
    const-string/jumbo v2, "systemui"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1919
    return-void
.end method

.method private removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 3

    .line 2130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result p1

    return p1
.end method

.method private removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .registers 8

    .line 2134
    nop

    .line 2136
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_a
    if-ltz v0, :cond_2a

    .line 2137
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2138
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 2140
    if-eqz p2, :cond_20

    and-int v4, v2, p2

    if-ne v4, v2, :cond_27

    .line 2141
    :cond_20
    iget-object v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2136
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 2145
    :cond_2a
    return v1
.end method

.method private removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6721
    nop

    .line 6722
    nop

    .line 6723
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 6725
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6726
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6727
    const/4 v0, 0x1

    goto :goto_21

    .line 6723
    :cond_20
    const/4 v0, 0x0

    .line 6729
    :goto_21
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 6731
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_21

    .line 6733
    :cond_33
    return v0
.end method

.method private revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .registers 9

    .line 6950
    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2f

    .line 6952
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6954
    :try_start_13
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 6956
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    .line 6958
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-static {p2, p3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p2

    .line 6954
    invoke-interface {v2, p1, v3, v4, p2}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_2a

    .line 6960
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6961
    nop

    .line 6962
    return-void

    .line 6960
    :catchall_2a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 6950
    :cond_2f
    :goto_2f
    return-void
.end method

.method private static safeBoolean(Ljava/lang/String;Z)Z
    .registers 3

    .line 8889
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return p1

    .line 8890
    :cond_7
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private scheduleDurationReachedLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 6360
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6361
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6362
    iget p1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_14

    const/16 p1, 0xdac

    goto :goto_16

    :cond_14
    const/16 p1, 0x7d0

    .line 6366
    :goto_16
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, p1, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p1

    .line 6368
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6369
    return-void
.end method

.method private scheduleInterruptionFilterChanged(I)V
    .registers 5

    .line 6565
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 6566
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 6569
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 6570
    return-void
.end method

.method private scheduleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 6385
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6386
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 6387
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const-wide/16 v1, 0x2af8

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6388
    return-void
.end method

.method private scheduleListenerHintsChanged(I)V
    .registers 5

    .line 6560
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 6561
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 6562
    return-void
.end method

.method private sendRegisteredOnlyBroadcast(Ljava/lang/String;)V
    .registers 6

    .line 1955
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1956
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1959
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1960
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1}, Lcom/android/server/notification/ConditionProviders;->getAllowedPackages()Ljava/util/Set;

    move-result-object p1

    .line 1961
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1962
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1963
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1964
    goto :goto_23

    .line 1965
    :cond_3c
    return-void
.end method

.method private updateEffectsSuppressorLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 2003
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateSuppressedEffects()J

    move-result-wide v0

    .line 2004
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getSuppressedEffects()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    return-void

    .line 2005
    :cond_f
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->getSuppressors()Ljava/util/ArrayList;

    move-result-object v2

    .line 2006
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-static {v3, v2, v0, v1}, Lcom/android/server/notification/ZenLog;->traceEffectsSuppressorChanged(Ljava/util/List;Ljava/util/List;J)V

    .line 2007
    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 2008
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setSuppressedEffects(J)V

    .line 2009
    const-string v0, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    .line 2010
    return-void
.end method

.method private updateInterruptionFilterLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 2206
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    .line 2207
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    if-ne v0, v1, :cond_b

    return-void

    .line 2208
    :cond_b
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 2209
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleInterruptionFilterChanged(I)V

    .line 2210
    return-void
.end method

.method private updateListenerHintsLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 1994
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result v0

    .line 1995
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    if-ne v0, v1, :cond_9

    return-void

    .line 1996
    :cond_9
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/server/notification/ZenLog;->traceListenerHintsChanged(III)V

    .line 1997
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 1998
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleListenerHintsChanged(I)V

    .line 1999
    return-void
.end method

.method private updateNotificationChannelInt(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .registers 25

    .line 2023
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/4 v15, 0x0

    if-nez v0, :cond_68

    .line 2025
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2026
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/16 v9, 0x11

    const/4 v10, 0x0

    .line 2025
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 2028
    invoke-virtual {v11, v13}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2029
    iget-object v0, v11, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v10

    .line 2030
    invoke-virtual {v10}, Landroid/util/IntArray;->size()I

    move-result v9

    .line 2031
    move v8, v15

    :goto_39
    if-ge v8, v9, :cond_68

    .line 2032
    invoke-virtual {v10, v8}, Landroid/util/IntArray;->get(I)I

    move-result v16

    .line 2033
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v17, 0x11

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v19, v8

    move/from16 v8, v16

    move/from16 v16, v9

    move/from16 v9, v17

    move-object/from16 v17, v10

    move-object/from16 v10, v18

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 2031
    add-int/lit8 v8, v19, 0x1

    move/from16 v9, v16

    move-object/from16 v10, v17

    goto :goto_39

    .line 2039
    :cond_68
    iget-object v0, v11, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 2040
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 2042
    iget-object v1, v11, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, v12, v13, v14, v2}, Lcom/android/server/notification/PreferencesHelper;->updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    .line 2043
    invoke-direct {v11, v12, v13, v0, v14}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifyChannelOwner(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    .line 2045
    if-nez p4, :cond_91

    .line 2046
    iget-object v0, v11, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 2047
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v13, v1, v15}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 2048
    iget-object v1, v11, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 2049
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x2

    .line 2048
    invoke-virtual {v1, v12, v2, v0, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 2053
    :cond_91
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2054
    return-void
.end method

.method private updateNotificationPulse()V
    .registers 3

    .line 7418
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7419
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 7420
    monitor-exit v0

    .line 7421
    return-void

    .line 7420
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private writePolicyXml(Ljava/io/OutputStream;ZI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 711
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 712
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 713
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 714
    const-string/jumbo v1, "notification-policy"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 715
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "version"

    invoke-interface {v0, v2, v3, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 716
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p1, v0, p2, v2, p3}, Lcom/android/server/notification/ZenModeHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/Integer;I)V

    .line 717
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;ZI)V

    .line 718
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->writeXml(Lorg/xmlpull/v1/XmlSerializer;ZI)V

    .line 719
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->writeXml(Lorg/xmlpull/v1/XmlSerializer;ZI)V

    .line 720
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/notification/ConditionProviders;->writeXml(Lorg/xmlpull/v1/XmlSerializer;ZI)V

    .line 721
    if-eqz p2, :cond_44

    if-nez p3, :cond_47

    .line 722
    :cond_44
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->writeSecureNotificationsPolicy(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 724
    :cond_47
    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 725
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 726
    return-void
.end method

.method private writeSecureNotificationsPolicy(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8882
    const-string v0, "allow-secure-notifications-on-lockscreen"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8883
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    .line 8884
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 8883
    const-string/jumbo v3, "value"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8885
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8886
    return-void
.end method


# virtual methods
.method addAutogroupKeyLocked(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 4358
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 4359
    if-nez v0, :cond_b

    .line 4360
    return-void

    .line 4362
    :cond_b
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    .line 4363
    const-string/jumbo v1, "ranker_group"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 4364
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationAutogrouped(Ljava/lang/String;)V

    .line 4365
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p1}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 4367
    :cond_21
    return-void
.end method

.method addEnqueuedNotification(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1579
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1580
    return-void
.end method

.method addNotification(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1570
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1571
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1573
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    :cond_21
    return-void
.end method

.method buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 19
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5940
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    if-eqz v2, :cond_d

    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationEffectsEnabledForAutomotive:Z

    if-nez v2, :cond_d

    .line 5941
    return-void

    .line 5943
    :cond_d
    nop

    .line 5944
    nop

    .line 5945
    nop

    .line 5947
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 5948
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 5952
    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v4, :cond_2a

    .line 5953
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v4

    if-le v4, v5, :cond_28

    move v4, v6

    goto :goto_33

    :cond_28
    const/4 v4, 0x0

    goto :goto_33

    .line 5954
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v4

    if-lt v4, v5, :cond_32

    move v4, v6

    goto :goto_33

    :cond_32
    const/4 v4, 0x0

    .line 5957
    :goto_33
    if-eqz v3, :cond_3f

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    move v5, v6

    goto :goto_40

    :cond_3f
    const/4 v5, 0x0

    .line 5958
    :goto_40
    if-eqz v3, :cond_4c

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4c

    move v8, v6

    goto :goto_4d

    :cond_4c
    const/4 v8, 0x0

    .line 5960
    :goto_4d
    nop

    .line 5961
    nop

    .line 5962
    nop

    .line 5965
    iget-boolean v9, v1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-nez v9, :cond_65

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v9

    if-le v9, v6, :cond_65

    .line 5966
    iget-object v9, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 5967
    move v9, v6

    goto :goto_66

    .line 5970
    :cond_65
    const/4 v9, 0x0

    :goto_66
    const/4 v10, 0x4

    const-string v11, "NotificationService"

    if-eqz v4, :cond_120

    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v12

    if-eqz v12, :cond_120

    .line 5972
    iget-boolean v12, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    if-eqz v12, :cond_120

    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v12, :cond_120

    .line 5973
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v12

    .line 5974
    if-eqz v12, :cond_89

    sget-object v13, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v13, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_89

    move v13, v6

    goto :goto_8a

    :cond_89
    const/4 v13, 0x0

    .line 5975
    :goto_8a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getVibration()[J

    move-result-object v14

    .line 5977
    if-nez v14, :cond_ac

    if-eqz v13, :cond_ac

    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 5979
    invoke-virtual {v15}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v15

    if-ne v15, v6, :cond_ac

    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 5982
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v7

    .line 5981
    invoke-virtual {v15, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    if-nez v7, :cond_ac

    .line 5983
    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    .line 5985
    :cond_ac
    if-eqz v14, :cond_b0

    move v7, v6

    goto :goto_b1

    :cond_b0
    const/4 v7, 0x0

    .line 5987
    :goto_b1
    if-nez v13, :cond_b8

    if-eqz v7, :cond_b6

    goto :goto_b8

    :cond_b6
    const/4 v15, 0x0

    goto :goto_b9

    :cond_b8
    :goto_b8
    move v15, v6

    .line 5988
    :goto_b9
    if-eqz v15, :cond_112

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v15

    if-nez v15, :cond_112

    .line 5989
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->isInSoundTimeoutPeriod(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v15

    if-nez v15, :cond_112

    .line 5990
    if-nez v9, :cond_d2

    .line 5991
    iget-object v9, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 5994
    :cond_d2
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_db

    const-string v2, "Interrupting!"

    invoke-static {v11, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5995
    :cond_db
    if-eqz v13, :cond_f1

    .line 5996
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 5997
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->playInCallNotification()V

    .line 5998
    move v2, v6

    goto :goto_ec

    .line 6000
    :cond_e8
    invoke-direct {v0, v1, v12}, Lcom/android/server/notification/NotificationManagerService;->playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)Z

    move-result v2

    .line 6002
    :goto_ec
    if-eqz v2, :cond_f2

    .line 6003
    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    goto :goto_f2

    .line 5995
    :cond_f1
    const/4 v2, 0x0

    .line 6007
    :cond_f2
    :goto_f2
    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 6008
    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v9

    if-nez v9, :cond_fc

    move v9, v6

    goto :goto_fd

    :cond_fc
    const/4 v9, 0x0

    .line 6010
    :goto_fd
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->isInCall()Z

    move-result v12

    if-nez v12, :cond_110

    if-eqz v7, :cond_110

    if-nez v9, :cond_110

    .line 6011
    invoke-direct {v0, v1, v14, v13}, Lcom/android/server/notification/NotificationManagerService;->playVibration(Lcom/android/server/notification/NotificationRecord;[JZ)Z

    move-result v9

    .line 6012
    if-eqz v9, :cond_111

    .line 6013
    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    goto :goto_111

    .line 6016
    :cond_110
    const/4 v9, 0x0

    :cond_111
    :goto_111
    goto :goto_124

    :cond_112
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v2

    and-int/2addr v2, v10

    if-eqz v2, :cond_11d

    .line 6017
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    goto :goto_124

    .line 6016
    :cond_11d
    const/4 v2, 0x0

    const/4 v9, 0x0

    goto :goto_124

    .line 6023
    :cond_120
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_124
    if-eqz v5, :cond_12b

    if-nez v13, :cond_12b

    .line 6024
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    .line 6026
    :cond_12b
    if-eqz v8, :cond_132

    if-nez v7, :cond_132

    .line 6027
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    .line 6032
    :cond_132
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 6033
    invoke-virtual {v0, v1, v4}, Lcom/android/server/notification/NotificationManagerService;->canShowLightsLocked(Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v4

    if-eqz v4, :cond_151

    .line 6034
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6035
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 6036
    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    if-eqz v4, :cond_14f

    .line 6037
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    invoke-virtual {v4}, Lcom/android/server/lights/Light;->pulse()V

    .line 6039
    :cond_14f
    move v4, v6

    goto :goto_157

    .line 6040
    :cond_151
    if-eqz v5, :cond_156

    .line 6041
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 6044
    :cond_156
    const/4 v4, 0x0

    :goto_157
    if-nez v9, :cond_15b

    if-eqz v2, :cond_16c

    .line 6045
    :cond_15b
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mLastSoundTimestamps:Landroid/util/ArrayMap;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->generateLastSoundTimeoutKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    .line 6046
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 6045
    invoke-virtual {v5, v0, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6049
    :cond_16c
    if-nez v9, :cond_172

    if-nez v2, :cond_172

    if-eqz v4, :cond_222

    .line 6051
    :cond_172
    iget-object v0, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    const-string v5, "INTERRUPTIVENESS: "

    if-eqz v0, :cond_1a8

    iget-object v0, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 6052
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_1f0

    .line 6053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6054
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not interruptive: summary"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6053
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f0

    .line 6056
    :cond_1a8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v0

    if-eqz v0, :cond_1ce

    .line 6057
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_1f0

    .line 6058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6059
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not interruptive: bubble"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6058
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f0

    .line 6062
    :cond_1ce
    invoke-virtual {v1, v6}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 6063
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_1f0

    .line 6064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6065
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is interruptive: alerted"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6064
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6068
    :cond_1f0
    :goto_1f0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v5, 0xc7

    .line 6069
    invoke-virtual {v0, v5}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 6070
    invoke-virtual {v0, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 6071
    if-eqz v9, :cond_202

    move v5, v6

    goto :goto_203

    :cond_202
    const/4 v5, 0x0

    :goto_203
    if-eqz v2, :cond_207

    const/4 v7, 0x2

    goto :goto_208

    :cond_207
    const/4 v7, 0x0

    :goto_208
    or-int/2addr v5, v7

    if-eqz v4, :cond_20c

    goto :goto_20d

    :cond_20c
    const/4 v10, 0x0

    :goto_20d
    or-int/2addr v5, v10

    invoke-virtual {v0, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 6068
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 6072
    if-eqz v9, :cond_219

    move v0, v6

    goto :goto_21a

    :cond_219
    const/4 v0, 0x0

    :goto_21a
    if-eqz v2, :cond_21e

    move v5, v6

    goto :goto_21f

    :cond_21e
    const/4 v5, 0x0

    :goto_21f
    invoke-static {v3, v0, v5, v4}, Lcom/android/server/EventLogTags;->writeNotificationAlert(Ljava/lang/String;III)V

    .line 6074
    :cond_222
    if-nez v9, :cond_228

    if-eqz v2, :cond_227

    goto :goto_228

    :cond_227
    const/4 v6, 0x0

    :cond_228
    :goto_228
    invoke-virtual {v1, v6}, Lcom/android/server/notification/NotificationRecord;->setAudiblyAlerted(Z)V

    .line 6075
    return-void
.end method

.method protected calculateSuppressedVisualEffects(Landroid/app/NotificationManager$Policy;Landroid/app/NotificationManager$Policy;I)I
    .registers 7

    .line 2232
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 2233
    iget p1, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    return p1

    .line 2235
    :cond_8
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_68

    .line 2245
    iget p1, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2246
    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-ge p3, v1, :cond_35

    .line 2248
    nop

    :goto_16
    array-length p3, v0

    if-ge v2, p3, :cond_26

    .line 2249
    aget p3, v0, v2

    not-int p3, p3

    and-int/2addr p1, p3

    .line 2250
    iget p3, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    aget v1, v0, v2

    and-int/2addr p3, v1

    or-int/2addr p1, p3

    .line 2248
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 2254
    :cond_26
    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_2e

    .line 2255
    or-int/lit8 p1, p1, 0x8

    .line 2256
    or-int/lit8 p1, p1, 0x4

    .line 2258
    :cond_2e
    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_66

    .line 2259
    or-int/lit8 p1, p1, 0x10

    goto :goto_66

    .line 2262
    :cond_35
    add-int/lit8 p2, p1, -0x2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    if-lez p2, :cond_3c

    goto :goto_3d

    :cond_3c
    move p3, v2

    .line 2265
    :goto_3d
    if-eqz p3, :cond_56

    .line 2267
    and-int/lit8 p1, p1, -0x4

    .line 2271
    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_47

    .line 2272
    or-int/lit8 p1, p1, 0x2

    .line 2274
    :cond_47
    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_66

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_66

    and-int/lit16 p2, p1, 0x80

    if-eqz p2, :cond_66

    .line 2279
    or-int/lit8 p1, p1, 0x1

    goto :goto_66

    .line 2283
    :cond_56
    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_60

    .line 2284
    or-int/lit8 p1, p1, 0x8

    .line 2285
    or-int/lit8 p1, p1, 0x4

    .line 2286
    or-int/lit16 p1, p1, 0x80

    .line 2288
    :cond_60
    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_66

    .line 2289
    or-int/lit8 p1, p1, 0x10

    .line 2294
    :cond_66
    :goto_66
    return p1

    nop

    :array_68
    .array-data 4
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method protected canLaunchInActivityView(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)Z
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5130
    const-string v0, "NotificationService"

    const/4 v1, 0x0

    if-nez p2, :cond_b

    .line 5131
    const-string p1, "Unable to create bubble -- no intent"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5132
    return v1

    .line 5136
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5139
    :try_start_f
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_9b

    .line 5141
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5142
    nop

    .line 5144
    if-eqz p2, :cond_22

    .line 5145
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    goto :goto_23

    .line 5146
    :cond_22
    const/4 p1, 0x0

    .line 5147
    :goto_23
    const/4 v2, 0x1

    const/16 v3, 0xad

    if-nez p1, :cond_40

    .line 5148
    invoke-static {v3, p3, v2}, Landroid/util/StatsLog;->write(ILjava/lang/String;I)I

    .line 5150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to send as bubble -- couldn\'t find activity info for intent: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5152
    return v1

    .line 5154
    :cond_40
    iget v4, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_61

    .line 5155
    invoke-static {v3, p3, v5}, Landroid/util/StatsLog;->write(ILjava/lang/String;I)I

    .line 5157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to send as bubble -- activity is not resizable for intent: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5159
    return v1

    .line 5161
    :cond_61
    iget v4, p1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eq v4, v5, :cond_7e

    .line 5162
    const/4 p1, 0x3

    invoke-static {v3, p3, p1}, Landroid/util/StatsLog;->write(ILjava/lang/String;I)I

    .line 5164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to send as bubble -- activity is not documentLaunchMode=always for intent: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5166
    return v1

    .line 5168
    :cond_7e
    iget p1, p1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 p3, -0x80000000

    and-int/2addr p1, p3

    if-nez p1, :cond_9a

    .line 5169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to send as bubble -- activity is not embeddable for intent: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5171
    return v1

    .line 5173
    :cond_9a
    return v2

    .line 5141
    :catchall_9b
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method canShowLightsLocked(Lcom/android/server/notification/NotificationRecord;Z)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6098
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 6099
    return v1

    .line 6104
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isLedForcedOn(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 6105
    return v2

    .line 6108
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-nez v0, :cond_13

    .line 6109
    return v1

    .line 6112
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 6113
    return v1

    .line 6116
    :cond_1a
    if-nez p2, :cond_1d

    .line 6117
    return v1

    .line 6120
    :cond_1d
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p2

    .line 6121
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v0, :cond_2c

    iget p2, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_2c

    .line 6122
    return v1

    .line 6125
    :cond_2c
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result p2

    if-eqz p2, :cond_3f

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 6126
    return v1

    .line 6129
    :cond_3f
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-nez p1, :cond_46

    .line 6130
    return v1

    .line 6133
    :cond_46
    return v2
.end method

.method canUseManagedServices(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7684
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 7685
    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    move v0, v1

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v2

    .line 7687
    :goto_18
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    move v0, v1

    :goto_2a
    if-ge v0, v4, :cond_38

    aget-object v6, v3, v0

    .line 7689
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 7690
    move v5, v2

    .line 7687
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 7694
    :cond_38
    if-eqz p3, :cond_50

    .line 7696
    :try_start_3a
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p3, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_44} :catch_48

    if-eqz p1, :cond_47

    .line 7698
    move v5, v1

    .line 7702
    :cond_47
    goto :goto_50

    .line 7700
    :catch_48
    move-exception p1

    .line 7701
    const-string p2, "NotificationService"

    const-string p3, "can\'t talk to pm"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7705
    :cond_50
    :goto_50
    return v5
.end method

.method cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .registers 17
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7142
    move-object v1, p0

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v9, Lcom/android/server/notification/NotificationManagerService$16;

    move-object v0, v9

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService$16;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IIIIZ)V

    invoke-virtual {v8, v9}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7174
    return-void
.end method

.method cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 25

    .line 7025
    move-object v1, p0

    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v13, Lcom/android/server/notification/NotificationManagerService$15;

    move-object v0, v13

    move-object/from16 v2, p10

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p8

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p9

    move/from16 v10, p7

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService$15;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;IIIIZLjava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7061
    return-void
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 31

    .line 6989
    move-object/from16 v1, p0

    iget-object v15, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v14, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    move-object v0, v14

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v16, v15

    move-object v15, v14

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleCancelNotification(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V

    .line 6992
    return-void
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 26

    .line 6972
    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 6974
    return-void
.end method

.method cancelToastLocked(I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 6318
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 6320
    :try_start_8
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v1}, Landroid/app/ITransientNotification;->hide()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    .line 6326
    goto :goto_31

    .line 6321
    :catch_e
    move-exception v1

    .line 6322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object died trying to hide notification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6328
    :goto_31
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 6330
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v2, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    const/4 v3, 0x0

    iget v4, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->displayId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 6337
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->scheduleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    .line 6339
    iget p1, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveIfNeededLocked(I)V

    .line 6340
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_56

    .line 6344
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked()V

    .line 6346
    :cond_56
    return-void
.end method

.method clearNotifications()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1562
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1563
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1564
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1565
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1566
    return-void
.end method

.method dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 12

    .line 4614
    const-string v0, "Current Notification Manager state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4615
    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v0, :cond_16

    .line 4616
    const-string v0, " (filtered to "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4618
    :cond_16
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 4620
    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    move v0, v1

    .line 4622
    :goto_27
    if-nez v0, :cond_56

    .line 4623
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 4624
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4625
    if-lez v3, :cond_51

    .line 4626
    const-string v4, "  Toast Queue:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4627
    move v4, v1

    :goto_3a
    if-ge v4, v3, :cond_4c

    .line 4628
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    const-string v6, "    "

    invoke-virtual {v5, p1, v6, p2}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4627
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 4630
    :cond_4c
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4632
    :cond_51
    monitor-exit v2

    goto :goto_56

    :catchall_53
    move-exception p1

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_2c .. :try_end_55} :catchall_53

    throw p1

    .line 4635
    :cond_56
    :goto_56
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4636
    if-nez v0, :cond_1ff

    .line 4639
    :try_start_5b
    iget-boolean v3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    if-nez v3, :cond_62

    .line 4640
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4642
    :cond_62
    iget-boolean v3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-nez v3, :cond_162

    .line 4643
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4644
    if-lez v3, :cond_98

    .line 4645
    const-string v4, "  Lights List:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4646
    move v4, v1

    :goto_74
    if-ge v4, v3, :cond_93

    .line 4647
    add-int/lit8 v5, v3, -0x1

    if-ne v4, v5, :cond_80

    .line 4648
    const-string v5, "  > "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_85

    .line 4650
    :cond_80
    const-string v5, "    "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4652
    :goto_85
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4646
    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    .line 4654
    :cond_93
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4656
    :cond_98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mUseAttentionLight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mHasLight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mNotificationPulseEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSoundNotificationKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mVibrateNotificationKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mDisableNotificationEffects="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mCallState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSystemReady="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mMaxPackageEnqueueRate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4666
    :cond_162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mArchive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4667
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4668
    move v4, v1

    .line 4669
    :goto_183
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1bc

    .line 4670
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/StatusBarNotification;

    .line 4671
    invoke-virtual {p2, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-nez v6, :cond_196

    goto :goto_183

    .line 4672
    :cond_196
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4673
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1bb

    .line 4674
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1bc

    const-string v3, "    ..."

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1bc

    .line 4677
    :cond_1bb
    goto :goto_183

    .line 4679
    :cond_1bc
    :goto_1bc
    if-nez v0, :cond_1ff

    .line 4680
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4681
    if-lez v3, :cond_1f6

    .line 4682
    const-string v4, "  Enqueued Notification List:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4683
    move v4, v1

    :goto_1cc
    if-ge v4, v3, :cond_1f1

    .line 4684
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 4685
    iget-boolean v6, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v6, :cond_1e3

    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-nez v6, :cond_1e3

    goto :goto_1ee

    .line 4686
    :cond_1e3
    const-string v6, "    "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-boolean v8, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v5, p1, v6, v7, v8}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 4683
    :goto_1ee
    add-int/lit8 v4, v4, 0x1

    goto :goto_1cc

    .line 4688
    :cond_1f1
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4691
    :cond_1f6
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_1ff

    .line 4762
    :catchall_1fc
    move-exception p1

    goto/16 :goto_38c

    .line 4695
    :cond_1ff
    :goto_1ff
    if-nez v0, :cond_297

    .line 4696
    const-string v3, "\n  Ranking Config:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4697
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-string v4, "    "

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/notification/RankingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4699
    const-string v3, "\n Notification Preferences:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4700
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const-string v4, "    "

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/notification/PreferencesHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4702
    const-string v3, "\n  Notification listeners:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4703
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4704
    const-string v3, "    mListenerHints: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 4705
    const-string v3, "    mListenersDisablingEffects: ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4706
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 4707
    move v4, v1

    :goto_239
    if-ge v4, v3, :cond_288

    .line 4708
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 4709
    if-lez v4, :cond_248

    const/16 v6, 0x3b

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 4710
    :cond_248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hint["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4712
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 4713
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 4715
    move v7, v1

    :goto_26e
    if-ge v7, v6, :cond_285

    .line 4716
    if-lez v7, :cond_277

    const/16 v8, 0x2c

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 4717
    :cond_277
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 4718
    if-eqz v8, :cond_282

    .line 4719
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4715
    :cond_282
    add-int/lit8 v7, v7, 0x1

    goto :goto_26e

    .line 4707
    :cond_285
    add-int/lit8 v4, v4, 0x1

    goto :goto_239

    .line 4723
    :cond_288
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 4724
    const-string v1, "\n  Notification assistant services:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4725
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4728
    :cond_297
    iget-boolean v1, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v1, :cond_29d

    if-eqz v0, :cond_2bd

    .line 4729
    :cond_29d
    const-string v1, "\n  Zen Mode:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4730
    const-string v1, "    mInterruptionFilter="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4731
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "    "

    invoke-virtual {v1, p1, v3}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4733
    const-string v1, "\n  Zen Log:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4734
    const-string v1, "    "

    invoke-static {p1, v1}, Lcom/android/server/notification/ZenLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4737
    :cond_2bd
    const-string v1, "\n  Condition providers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4738
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/ConditionProviders;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4740
    const-string v1, "\n  Group summaries:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4741
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4742
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 4743
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4744
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v4, :cond_32a

    .line 4745
    const-string v3, "!!!!!!LEAK: Record not found in mNotificationsByKey."

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4746
    const-string v3, "      "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v4, p1, v3, v5, v6}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 4748
    :cond_32a
    goto :goto_2d6

    .line 4750
    :cond_32b
    if-nez v0, :cond_339

    .line 4751
    const-string v0, "\n  Usage Stats:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4752
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const-string v1, "    "

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/notification/NotificationUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4755
    :cond_339
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4756
    const-string p2, "\n  Last notification sound timestamps:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4757
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mLastSoundTimestamps:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_34c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4758
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4759
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4760
    const-string v3, " ago"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4761
    goto :goto_34c

    .line 4762
    :cond_38a
    monitor-exit v2

    .line 4763
    return-void

    .line 4762
    :goto_38c
    monitor-exit v2
    :try_end_38d
    .catchall {:try_start_5b .. :try_end_38d} :catchall_1fc

    throw p1
.end method

.method enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V
    .registers 29

    .line 4826
    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-object/from16 v8, p2

    move/from16 v14, p3

    move/from16 v15, p6

    move-object/from16 v11, p7

    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v2, " notification="

    const-string v3, " id="

    const-string v9, "NotificationService"

    if-eqz v1, :cond_36

    .line 4827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enqueueNotificationInternal: pkg="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4831
    :cond_36
    if-eqz v13, :cond_251

    if-eqz v11, :cond_251

    .line 4836
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "enqueueNotification"

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p8

    move-object/from16 v7, p1

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 4838
    invoke-static {v12}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    .line 4842
    invoke-virtual {v0, v8, v13, v14, v12}, Lcom/android/server/notification/NotificationManagerService;->resolveNotificationUid(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v7

    .line 4844
    invoke-direct {v0, v11}, Lcom/android/server/notification/NotificationManagerService;->checkRestrictedCategories(Landroid/app/Notification;)V

    .line 4848
    :try_start_55
    invoke-virtual {v0, v11, v13, v12}, Lcom/android/server/notification/NotificationManagerService;->fixNotification(Landroid/app/Notification;Ljava/lang/String;I)V
    :try_end_58
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_55 .. :try_end_58} :catch_249

    .line 4853
    nop

    .line 4855
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v1, v13}, Lcom/android/server/notification/NotificationUsageStats;->registerEnqueuedByApp(Ljava/lang/String;)V

    .line 4858
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 4859
    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    if-eqz v2, :cond_7c

    new-instance v2, Landroid/app/Notification$TvExtender;

    invoke-direct {v2, v11}, Landroid/app/Notification$TvExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v2}, Landroid/app/Notification$TvExtender;->getChannelId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7c

    .line 4860
    new-instance v1, Landroid/app/Notification$TvExtender;

    invoke-direct {v1, v11}, Landroid/app/Notification$TvExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v1}, Landroid/app/Notification$TvExtender;->getChannelId()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_7d

    .line 4862
    :cond_7c
    move-object v6, v1

    :goto_7d
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v5, 0x0

    invoke-virtual {v1, v13, v7, v6, v5}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v4

    .line 4864
    const/4 v3, 0x1

    if-nez v4, :cond_115

    .line 4865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Channel found for pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", channelId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", opPkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", incomingUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", notificationUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", notification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4876
    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4877
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, v13, v7}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_f0

    goto :goto_f1

    :cond_f0
    move v3, v5

    .line 4880
    :goto_f1
    if-nez v3, :cond_114

    .line 4881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Developer warning for package \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"\nFailed to post notification on channel \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"\nSee log for more details"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->doChannelWarningToast(Ljava/lang/CharSequence;)V

    .line 4885
    :cond_114
    return-void

    .line 4888
    :cond_115
    move-object/from16 v2, p5

    new-instance v9, Landroid/service/notification/StatusBarNotification;

    const/16 v16, 0x0

    .line 4890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object v1, v9

    move-object/from16 v2, p1

    move v15, v3

    move-object/from16 v3, p2

    move-object v8, v4

    move/from16 v4, p6

    move-object/from16 v5, p5

    move-object/from16 p2, v6

    move v6, v7

    move/from16 v19, v7

    move/from16 v7, p4

    move-object v15, v8

    move-object/from16 v8, p7

    move-object v13, v9

    move-object v9, v10

    move-object/from16 v10, v16

    move/from16 p4, v12

    move-wide/from16 v11, v17

    invoke-direct/range {v1 .. v12}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 4891
    new-instance v8, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v8, v1, v13, v15}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V

    .line 4892
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    move-object/from16 v4, p1

    invoke-virtual {v1, v4, v14}, Lcom/android/server/notification/PreferencesHelper;->getIsAppImportanceLocked(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v8, v1}, Lcom/android/server/notification/NotificationRecord;->setIsAppImportanceLocked(Z)V

    .line 4894
    move-object/from16 v9, p7

    iget v1, v9, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1da

    .line 4895
    invoke-virtual {v15}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v1

    .line 4896
    invoke-virtual {v15}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    const/4 v3, 0x4

    and-int/2addr v2, v3

    const-string v5, "miscellaneous"

    if-eqz v2, :cond_16b

    if-nez v1, :cond_17b

    .line 4898
    :cond_16b
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1a1

    .line 4899
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v2

    if-nez v2, :cond_17b

    move-object/from16 v2, p2

    goto :goto_1a3

    .line 4916
    :cond_17b
    if-nez v1, :cond_19c

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19c

    .line 4917
    move-object/from16 v2, p2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_197

    .line 4918
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/app/NotificationChannel;->setFgServiceShown(Z)V

    .line 4919
    invoke-virtual {v8, v15}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    move/from16 v3, v19

    const/4 v1, 0x1

    const/4 v10, 0x0

    goto :goto_1de

    .line 4917
    :cond_197
    move/from16 v3, v19

    const/4 v1, 0x1

    const/4 v10, 0x0

    goto :goto_1de

    .line 4916
    :cond_19c
    move/from16 v3, v19

    const/4 v1, 0x1

    const/4 v10, 0x0

    goto :goto_1de

    .line 4898
    :cond_1a1
    move-object/from16 v2, p2

    .line 4902
    :goto_1a3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_1d2

    .line 4903
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b5

    move/from16 v3, v19

    const/4 v1, 0x1

    const/4 v10, 0x0

    goto :goto_1d6

    .line 4906
    :cond_1b5
    invoke-virtual {v15, v7}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 4907
    invoke-virtual {v8, v7}, Lcom/android/server/notification/NotificationRecord;->setSystemImportance(I)V

    .line 4908
    if-nez v1, :cond_1c5

    .line 4909
    invoke-virtual {v15, v3}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 4910
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/app/NotificationChannel;->setFgServiceShown(Z)V

    goto :goto_1c6

    .line 4908
    :cond_1c5
    const/4 v1, 0x1

    .line 4912
    :goto_1c6
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    move/from16 v3, v19

    const/4 v10, 0x0

    invoke-virtual {v2, v4, v3, v15, v10}, Lcom/android/server/notification/PreferencesHelper;->updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    .line 4914
    invoke-virtual {v8, v15}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_1de

    .line 4902
    :cond_1d2
    move/from16 v3, v19

    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 4904
    :goto_1d6
    invoke-virtual {v8, v7}, Lcom/android/server/notification/NotificationRecord;->setSystemImportance(I)V

    goto :goto_1de

    .line 4894
    :cond_1da
    move/from16 v3, v19

    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 4923
    :goto_1de
    iget-object v2, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4924
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e8

    move v7, v1

    goto :goto_1e9

    :cond_1e8
    move v7, v10

    .line 4923
    :goto_1e9
    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v4, p6

    move-object/from16 v5, p5

    move-object v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v1

    if-nez v1, :cond_1f9

    .line 4925
    return-void

    .line 4929
    :cond_1f9
    iget-object v1, v9, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-eqz v1, :cond_23c

    .line 4930
    iget-object v1, v9, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 4931
    if-lez v1, :cond_23c

    .line 4932
    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 4933
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 4934
    const-class v3, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DeviceIdleController$LocalService;

    .line 4935
    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController$LocalService;->getNotificationWhitelistDuration()J

    move-result-wide v3

    .line 4936
    nop

    :goto_21a
    if-ge v10, v1, :cond_23c

    .line 4937
    iget-object v5, v9, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v5, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 4938
    if-eqz v5, :cond_239

    .line 4939
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v6

    sget-object v7, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    invoke-virtual {v2, v6, v7, v3, v4}, Landroid/app/ActivityManagerInternal;->setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;J)V

    .line 4941
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v5

    sget-object v6, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    const/4 v7, 0x7

    invoke-virtual {v2, v5, v6, v7}, Landroid/app/ActivityManagerInternal;->setPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;I)V

    .line 4936
    :cond_239
    add-int/lit8 v10, v10, 0x1

    goto :goto_21a

    .line 4949
    :cond_23c
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    move/from16 v3, p4

    invoke-direct {v2, v0, v3, v8}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 4950
    return-void

    .line 4850
    :catch_249
    move-exception v0

    move-object v1, v0

    .line 4851
    const-string v0, "Cannot create a context for sending app"

    invoke-static {v9, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4852
    return-void

    .line 4831
    :cond_251
    move-object v9, v11

    move-object v4, v13

    .line 4832
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "null not allowed: pkg="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method findGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 7278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7279
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7280
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 7281
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 7280
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7282
    return-object v0
.end method

.method findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7319
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 7320
    return-object v0

    .line 7322
    :cond_e
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 7324
    return-object p1

    .line 7326
    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method finishTokenLocked(Landroid/os/IBinder;I)V
    .registers 5

    .line 6349
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6354
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 6355
    return-void
.end method

.method protected fixNotification(Landroid/app/Notification;Ljava/lang/String;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 4955
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 4957
    const/4 v1, -0x1

    if-ne p3, v1, :cond_6

    const/4 p3, 0x0

    .line 4955
    :cond_6
    const/high16 v1, 0x10000000

    invoke-virtual {v0, p2, v1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    .line 4958
    invoke-static {p3, p1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V

    .line 4960
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.USE_COLORIZED_NOTIFICATIONS"

    invoke-virtual {v0, v1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4962
    if-nez v0, :cond_20

    .line 4963
    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p1, Landroid/app/Notification;->flags:I

    goto :goto_26

    .line 4965
    :cond_20
    iget v0, p1, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 4968
    :goto_26
    iget-object v0, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_58

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1d

    if-lt p3, v0, :cond_58

    .line 4969
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v0, "android.permission.USE_FULL_SCREEN_INTENT"

    invoke-virtual {p3, v0, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 4971
    if-eqz p3, :cond_58

    .line 4972
    const/4 p3, 0x0

    iput-object p3, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 4973
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": Use of fullScreenIntent requires the USE_FULL_SCREEN_INTENT permission"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotificationService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4977
    :cond_58
    return-void
.end method

.method getApprovedAssistant(I)Landroid/content/ComponentName;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 8823
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    .line 8824
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedComponents(I)Ljava/util/List;

    move-result-object p1

    .line 8825
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    return-object p1
.end method

.method getBinderService()Landroid/app/INotificationManager;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2214
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method protected getCompanionManager()Landroid/companion/ICompanionDeviceManager;
    .registers 2

    .line 7655
    nop

    .line 7656
    const-string v0, "companiondevice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 7655
    invoke-static {v0}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method getInternalService()Lcom/android/server/notification/NotificationManagerInternal;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2323
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    return-object v0
.end method

.method protected getNotificationCountLocked(Ljava/lang/String;IILjava/lang/String;)I
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 5300
    nop

    .line 5301
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5302
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_a
    if-ge v2, v0, :cond_42

    .line 5303
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 5304
    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5305
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    if-ne v5, p2, :cond_3f

    .line 5306
    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    if-ne v5, p3, :cond_3d

    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5307
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 5308
    goto :goto_3f

    .line 5310
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    .line 5302
    :cond_3f
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 5313
    :cond_42
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 5314
    nop

    :goto_49
    if-ge v1, p3, :cond_6c

    .line 5315
    iget-object p4, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/notification/NotificationRecord;

    .line 5316
    iget-object v0, p4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object p4, p4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5317
    invoke-virtual {p4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p4

    if-ne p4, p2, :cond_69

    .line 5318
    add-int/lit8 v3, v3, 0x1

    .line 5314
    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 5321
    :cond_6c
    return v3
.end method

.method getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1584
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    return-object p1
.end method

.method getNotificationRecordCount()I
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1543
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1544
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 1545
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1547
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 1548
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1549
    add-int/lit8 v1, v1, -0x1

    .line 1551
    :cond_3e
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 1552
    add-int/lit8 v1, v1, -0x1

    .line 1554
    :cond_52
    goto :goto_24

    .line 1556
    :cond_53
    monitor-exit v0

    return v1

    .line 1557
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v1
.end method

.method handleRankingSort()V
    .registers 21

    .line 6470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    if-nez v1, :cond_7

    return-void

    .line 6471
    :cond_7
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6472
    :try_start_a
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6474
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6475
    new-array v4, v2, [I

    .line 6476
    new-array v5, v2, [Z

    .line 6477
    new-array v6, v2, [Z

    .line 6478
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6479
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6480
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6481
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6482
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6483
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6484
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6485
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6486
    new-array v15, v2, [I

    .line 6487
    const/16 v16, 0x0

    move-object/from16 v17, v15

    move/from16 v15, v16

    :goto_4b
    if-ge v15, v2, :cond_c6

    .line 6488
    move/from16 v18, v2

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 6489
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6490
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v0

    aput v0, v4, v15

    .line 6491
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v0

    aput-boolean v0, v5, v15

    .line 6492
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v0

    aput-boolean v0, v6, v15

    .line 6493
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6494
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6495
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6496
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6497
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6498
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6499
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6500
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6501
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    aput v0, v17, v15

    .line 6502
    move-object/from16 v0, p0

    move-object/from16 v19, v14

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v14, v2}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 6487
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v18

    move-object/from16 v14, v19

    goto :goto_4b

    .line 6504
    :cond_c6
    move/from16 v18, v2

    move-object/from16 v19, v14

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 6505
    move/from16 v2, v16

    :goto_d3
    move/from16 v14, v18

    if-ge v2, v14, :cond_1a1

    .line 6506
    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/notification/NotificationRecord;

    .line 6507
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v3

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    move/from16 v16, v14

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19a

    aget v3, v4, v2

    .line 6508
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v14

    if-ne v3, v14, :cond_19a

    aget-boolean v3, v5, v2

    .line 6509
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v14

    if-ne v3, v14, :cond_19a

    aget-boolean v3, v6, v2

    .line 6510
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v14

    if-ne v3, v14, :cond_19a

    .line 6511
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19a

    .line 6512
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19a

    .line 6513
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19a

    .line 6514
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19a

    .line 6515
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19a

    .line 6516
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 6517
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 6516
    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19a

    .line 6518
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 6519
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v14

    .line 6518
    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19a

    .line 6520
    move-object/from16 v3, v19

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v19, v3

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v14, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19a

    aget v3, v17, v2

    .line 6521
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v14

    if-eq v3, v14, :cond_192

    goto :goto_19a

    .line 6505
    :cond_192
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v18

    move/from16 v18, v16

    goto/16 :goto_d3

    .line 6522
    :cond_19a
    :goto_19a
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 6523
    monitor-exit v1

    return-void

    .line 6526
    :cond_1a1
    monitor-exit v1

    .line 6527
    return-void

    .line 6526
    :catchall_1a3
    move-exception v0

    monitor-exit v1
    :try_end_1a5
    .catchall {:try_start_a .. :try_end_1a5} :catchall_1a3

    throw v0
.end method

.method protected handleSavePolicyFile()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 679
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 680
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 682
    :cond_15
    return-void
.end method

.method hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 9

    .line 7628
    const-string v0, "NotificationService"

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    if-nez v1, :cond_c

    .line 7629
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getCompanionManager()Landroid/companion/ICompanionDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 7632
    :cond_c
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 7633
    return v2

    .line 7635
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 7637
    :try_start_16
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    iget-object v5, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 7638
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 7637
    invoke-interface {v1, v5, v6}, Landroid/companion/ICompanionDeviceManager;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 7639
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_28} :catch_52
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_28} :catch_47
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_28} :catch_31
    .catchall {:try_start_16 .. :try_end_28} :catchall_2f

    if-nez p1, :cond_53

    .line 7640
    const/4 p1, 0x1

    .line 7649
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7640
    return p1

    .line 7649
    :catchall_2f
    move-exception p1

    goto :goto_4e

    .line 7646
    :catch_31
    move-exception v1

    .line 7647
    :try_start_32
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot verify listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53

    .line 7644
    :catch_47
    move-exception p1

    .line 7645
    const-string v1, "Cannot reach companion device service"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_32 .. :try_end_4d} :catchall_2f

    goto :goto_53

    .line 7649
    :goto_4e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 7642
    :catch_52
    move-exception p1

    .line 7649
    :cond_53
    :goto_53
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7650
    nop

    .line 7651
    return v2
.end method

.method protected hideNotificationsForPackages([Ljava/lang/String;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7383
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7384
    :try_start_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 7385
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7386
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7387
    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_33

    .line 7388
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 7389
    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 7390
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 7391
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7387
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 7395
    :cond_33
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyHiddenLocked(Ljava/util/List;)V

    .line 7396
    monitor-exit v0

    .line 7397
    return-void

    .line 7396
    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method indexOfNotificationLocked(Ljava/lang/String;)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7372
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7373
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 7374
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 7375
    return v1

    .line 7373
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 7378
    :cond_1f
    const/4 p1, -0x1

    return p1
.end method

.method indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 6401
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 6402
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 6403
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6404
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_27

    .line 6405
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 6406
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v3}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p2, :cond_24

    .line 6407
    return v2

    .line 6404
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 6410
    :cond_27
    const/4 p1, -0x1

    return p1
.end method

.method init(Landroid/os/Looper;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/app/AppOpsManager;Landroid/os/UserManager;)V
    .registers 32
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1663
    move-object v1, p0

    move-object v2, p4

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1664
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "max_notification_enqueue_rate"

    const/high16 v5, 0x40a00000  # 5.0f

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 1668
    nop

    .line 1669
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "accessibility"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1670
    move-object/from16 v0, p14

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 1671
    move-object/from16 v0, p17

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 1672
    move-object/from16 v0, p18

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1673
    move-object v0, p2

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1674
    move-object v0, p3

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 1675
    move-object/from16 v0, p19

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1676
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 1677
    move-object/from16 v0, p15

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1678
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1679
    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 1680
    move-object/from16 v0, p12

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1681
    nop

    .line 1682
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1681
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 1683
    move-object/from16 v0, p16

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1684
    move-object/from16 v0, p20

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    .line 1686
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object v4, p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1687
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1690
    const v0, 0x107005b

    const/4 v4, 0x0

    :try_start_90
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_94
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_90 .. :try_end_94} :catch_95

    .line 1693
    goto :goto_98

    .line 1691
    :catch_95
    move-exception v0

    .line 1692
    new-array v0, v4, [Ljava/lang/String;

    .line 1694
    :goto_98
    move-object/from16 v5, p10

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 1695
    new-instance v5, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v5}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1696
    new-instance v5, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 1697
    move-object/from16 v5, p7

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 1698
    new-instance v5, Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/notification/ZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;)V

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 1699
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$7;

    invoke-direct {v6, p0}, Lcom/android/server/notification/NotificationManagerService$7;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {v5, v6}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 1725
    new-instance v5, Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/server/notification/PreferencesHelper;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 1729
    new-instance v5, Lcom/android/server/notification/RankingHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 p14, v5

    move-object/from16 p15, v6

    move-object/from16 p16, v7

    move-object/from16 p17, v8

    move-object/from16 p18, v9

    move-object/from16 p19, v10

    move-object/from16 p20, v0

    invoke-direct/range {p14 .. p20}, Lcom/android/server/notification/RankingHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/RankingConfig;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1735
    move-object/from16 v5, p9

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 1736
    move-object/from16 v5, p13

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    .line 1739
    move-object/from16 v5, p5

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 1742
    move-object/from16 v5, p6

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 1745
    new-instance v0, Lcom/android/server/notification/-$$Lambda$V4J7df5A6vhSIuw7Ym9xgkfahto;

    invoke-direct {v0, p0}, Lcom/android/server/notification/-$$Lambda$V4J7df5A6vhSIuw7Ym9xgkfahto;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    .line 1747
    move-object/from16 v5, p11

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 1748
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->loadPolicyFile()V

    .line 1750
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1751
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_134

    .line 1752
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v0, v5}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V

    .line 1755
    :cond_134
    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 1756
    const/4 v5, 0x5

    invoke-virtual {p4, v5}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 1758
    const v2, 0x107005a

    const/16 v5, 0x11

    sget-object v6, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    invoke-static {v3, v2, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    .line 1762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x1040186

    .line 1763
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1762
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationUri:Landroid/net/Uri;

    .line 1764
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1765
    invoke-virtual {v2, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v2, 0x2

    .line 1766
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1767
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    .line 1768
    const v0, 0x10500a5

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationVolume:F

    .line 1770
    const v0, 0x11100ec

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    .line 1771
    const v0, 0x1110093

    .line 1772
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    .line 1778
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1af

    .line 1780
    iput-boolean v2, v1, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    .line 1782
    :cond_1af
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->initZenMode()V

    .line 1783
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 1785
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 1786
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->listenForCallState()V

    .line 1788
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v0, p0, v5}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    .line 1790
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$Archive;

    const v5, 0x10e008f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-direct {v0, v5}, Lcom/android/server/notification/NotificationManagerService$Archive;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    .line 1793
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.leanback"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f6

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 1794
    const-string v5, "android.hardware.type.television"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f4

    goto :goto_1f6

    :cond_1f4
    move v2, v4

    goto :goto_1f7

    :cond_1f6
    :goto_1f6
    nop

    :goto_1f7
    iput-boolean v2, v1, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    .line 1796
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 1797
    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    .line 1798
    const v0, 0x111007d

    .line 1799
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationEffectsEnabledForAutomotive:Z

    .line 1801
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/notification/PreferencesHelper;->lockChannelsForOEM([Ljava/lang/String;)V

    .line 1804
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setPriorityOnlyDndExemptPackages([Ljava/lang/String;)V

    .line 1806
    return-void
.end method

.method protected isBlocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationUsageStats;)Z
    .registers 5

    .line 5325
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isBlocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5326
    const-string v0, "NotificationService"

    const-string v1, "Suppressing notification from package by user request."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5327
    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 5328
    const/4 p1, 0x1

    return p1

    .line 5330
    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method isCallerInstantApp(II)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7497
    const-string v0, "Unknown uid "

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 7498
    return v2

    .line 7501
    :cond_a
    const/4 v1, -0x1

    if-ne p2, v1, :cond_e

    .line 7502
    move p2, v2

    .line 7506
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 7507
    if-eqz v1, :cond_41

    .line 7510
    aget-object v1, v1, v2

    .line 7511
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v3, p1, v1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 7513
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v1, v2, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 7514
    if-eqz p2, :cond_2a

    .line 7517
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p1

    return p1

    .line 7515
    :cond_2a
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7508
    :cond_41
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_56} :catch_56

    .line 7518
    :catch_56
    move-exception p2

    .line 7519
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected isCallerSystemOrPhone()Z
    .registers 2

    .line 7435
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    return v0
.end method

.method protected isCallingUidSystem()Z
    .registers 3

    .line 7424
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 7425
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isPackagePausedOrSuspended(Ljava/lang/String;I)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 5594
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 5596
    nop

    .line 5597
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 5596
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManagerInternal;->getDistractingPackageRestrictions(Ljava/lang/String;I)I

    move-result v0

    .line 5598
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 5600
    :goto_1c
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result p1

    or-int/2addr p1, v0

    .line 5602
    return p1
.end method

.method protected isUidSystemOrPhone(I)Z
    .registers 4

    .line 7429
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 7430
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_11

    if-nez p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method protected isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5732
    iget-object v0, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "INTERRUPTIVENESS: "

    const-string v3, "NotificationService"

    if-eqz v0, :cond_39

    iget-object v0, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 5733
    sget-boolean p1, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p1, :cond_38

    .line 5734
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5735
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not interruptive: summary"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5734
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5737
    :cond_38
    return v1

    .line 5740
    :cond_39
    const/4 v0, 0x1

    if-nez p1, :cond_5c

    .line 5741
    sget-boolean p1, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p1, :cond_5b

    .line 5742
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5743
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is interruptive: new notification"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5742
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5745
    :cond_5b
    return v0

    .line 5748
    :cond_5c
    nop

    .line 5756
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 5757
    iget-object v4, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 5758
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v5, :cond_2a3

    iget-object v5, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v5, :cond_73

    goto/16 :goto_2a3

    .line 5768
    :cond_73
    iget-object v5, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_9f

    .line 5769
    sget-boolean p1, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p1, :cond_9e

    .line 5770
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5771
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not interruptive: foreground service"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5770
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5773
    :cond_9e
    return v1

    .line 5776
    :cond_9f
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 5777
    iget-object v7, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 5778
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-nez v7, :cond_135

    .line 5779
    sget-boolean p1, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p1, :cond_134

    .line 5780
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5781
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is interruptive: changed title"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5780
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5782
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p2, v9, [Ljava/lang/Object;

    aput-object v5, p2, v1

    .line 5783
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, p2, v0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p2, v8

    .line 5782
    const-string v4, "   old title: %s (%s@0x%08x)"

    invoke-static {v4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5784
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p2, v9, [Ljava/lang/Object;

    aput-object v6, p2, v1

    .line 5785
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v8

    .line 5784
    const-string v1, "   new title: %s (%s@0x%08x)"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5787
    :cond_134
    return v0

    .line 5791
    :cond_135
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.text"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 5792
    iget-object v7, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 5793
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c9

    .line 5794
    sget-boolean p1, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p1, :cond_1c8

    .line 5795
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5796
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is interruptive: changed text"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5795
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5797
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p2, v9, [Ljava/lang/Object;

    aput-object v5, p2, v1

    .line 5798
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, p2, v0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p2, v8

    .line 5797
    const-string v4, "   old text: %s (%s@0x%08x)"

    invoke-static {v4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5799
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p2, v9, [Ljava/lang/Object;

    aput-object v6, p2, v1

    .line 5800
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v8

    .line 5799
    const-string v1, "   new text: %s (%s@0x%08x)"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5802
    :cond_1c8
    return v0

    .line 5805
    :cond_1c9
    invoke-virtual {p1}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v5

    invoke-virtual {v4}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v6

    if-eq v5, v6, :cond_1f3

    .line 5806
    sget-boolean p1, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p1, :cond_1f2

    .line 5807
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5808
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is interruptive: completed progress"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5807
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5810
    :cond_1f2
    return v0

    .line 5814
    :cond_1f3
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v5

    if-eqz v5, :cond_219

    .line 5815
    sget-boolean p1, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p1, :cond_218

    .line 5816
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5817
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not interruptive: bubble"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5816
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5819
    :cond_218
    return v1

    .line 5823
    :cond_219
    invoke-static {p1, v4}, Landroid/app/Notification;->areActionsVisiblyDifferent(Landroid/app/Notification;Landroid/app/Notification;)Z

    move-result v5

    if-eqz v5, :cond_23f

    .line 5824
    sget-boolean p1, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p1, :cond_23e

    .line 5825
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5826
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is interruptive: changed actions"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5825
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5828
    :cond_23e
    return v0

    .line 5832
    :cond_23f
    :try_start_23f
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 5833
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 5836
    invoke-static {p1, v4}, Landroid/app/Notification;->areStyledNotificationsVisiblyDifferent(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result v5

    if-eqz v5, :cond_275

    .line 5837
    sget-boolean p1, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p1, :cond_274

    .line 5838
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5839
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is interruptive: styles differ"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5838
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5841
    :cond_274
    return v0

    .line 5845
    :cond_275
    invoke-static {p1, v4}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result p1

    if-eqz p1, :cond_29b

    .line 5846
    sget-boolean p1, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p1, :cond_29a

    .line 5847
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5848
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is interruptive: remoteviews differ"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5847
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29a
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_29a} :catch_29c

    .line 5850
    :cond_29a
    return v0

    .line 5854
    :cond_29b
    goto :goto_2a2

    .line 5852
    :catch_29c
    move-exception p1

    .line 5853
    const-string p2, "error recovering builder"

    invoke-static {v3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5855
    :goto_2a2
    return v1

    .line 5759
    :cond_2a3
    :goto_2a3
    sget-boolean p1, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p1, :cond_2c2

    .line 5760
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5761
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not interruptive: no extras"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5760
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5763
    :cond_2c2
    return v1
.end method

.method keepProcessAliveIfNeededLocked(I)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 6416
    nop

    .line 6417
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 6418
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6419
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_a
    if-ge v3, v1, :cond_1b

    .line 6420
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 6421
    iget v5, v5, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    if-ne v5, p1, :cond_18

    .line 6422
    add-int/lit8 v4, v4, 0x1

    .line 6419
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 6426
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v4, :cond_22

    const/4 v2, 0x1

    :cond_22
    const-string/jumbo v3, "toast"

    invoke-interface {v0, v1, p1, v2, v3}, Landroid/app/IActivityManager;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_28} :catch_29

    .line 6429
    goto :goto_2a

    .line 6427
    :catch_29
    move-exception p1

    .line 6430
    :goto_2a
    return-void
.end method

.method public synthetic lambda$doChannelWarningToast$1$NotificationManagerService(Ljava/lang/CharSequence;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5178
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 5179
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_notification_channel_warnings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    move v0, v1

    .line 5181
    :goto_17
    if-eqz v0, :cond_2a

    .line 5182
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v0, v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 5184
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 5186
    :cond_2a
    return-void
.end method

.method public synthetic lambda$playVibration$2$NotificationManagerService(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V
    .registers 11

    .line 6219
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 6221
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 6219
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v0

    .line 6222
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delaying vibration by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6224
    :cond_2b
    int-to-long v0, v0

    :try_start_2c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 6225
    :goto_2f
    goto :goto_32

    :catch_30
    move-exception v0

    goto :goto_2f

    .line 6229
    :goto_32
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6230
    :try_start_35
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 6231
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Notification (delayed)"

    .line 6232
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v7

    .line 6231
    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    goto :goto_74

    .line 6234
    :cond_5a
    const-string p2, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No vibration for canceled notification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6236
    :goto_74
    monitor-exit v0

    .line 6237
    return-void

    .line 6236
    :catchall_76
    move-exception p1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_35 .. :try_end_78} :catchall_76

    throw p1
.end method

.method public synthetic lambda$registerDeviceConfigChange$0$NotificationManagerService(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4

    .line 1910
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1911
    return-void

    .line 1913
    :cond_e
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    .line 1914
    const-string/jumbo v0, "nas_default_service"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 1915
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    const-string v0, "key_importance"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->allowAdjustmentType(Ljava/lang/String;)V

    .line 1916
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultAssistantsIfNecessary()V

    .line 1918
    :cond_27
    return-void
.end method

.method protected loadPolicyFile()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 655
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "NotificationService"

    const-string v1, "loadPolicyFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 657
    const/4 v1, 0x0

    .line 659
    const/4 v2, 0x0

    :try_start_10
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 660
    const/4 v3, -0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;ZI)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_1a} :catch_3b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_32
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_1a} :catch_29
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_1a} :catch_1d
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1b

    goto :goto_25

    .line 672
    :catchall_1b
    move-exception v2

    goto :goto_43

    .line 669
    :catch_1d
    move-exception v2

    .line 670
    :try_start_1e
    const-string v3, "NotificationService"

    const-string v4, "Unable to parse notification policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b

    .line 672
    :goto_25
    :try_start_25
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_47

    goto :goto_40

    .line 667
    :catch_29
    move-exception v2

    .line 668
    :try_start_2a
    const-string v3, "NotificationService"

    const-string v4, "Unable to parse notification policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 665
    :catch_32
    move-exception v2

    .line 666
    const-string v3, "NotificationService"

    const-string v4, "Unable to read notification policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 661
    :catch_3b
    move-exception v3

    .line 664
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->readDefaultApprovedServices(I)V
    :try_end_3f
    .catchall {:try_start_2a .. :try_end_3f} :catchall_1b

    goto :goto_25

    .line 673
    :goto_40
    nop

    .line 674
    :try_start_41
    monitor-exit v0

    .line 675
    return-void

    .line 672
    :goto_43
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .line 674
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_47

    throw v1
.end method

.method logSmartSuggestionsVisible(Lcom/android/server/notification/NotificationRecord;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1092
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartRepliesAdded()I

    move-result v0

    if-gtz v0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartActionsAdded()I

    move-result v0

    if-lez v0, :cond_67

    .line 1093
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasSeenSmartReplies()Z

    move-result v0

    if-nez v0, :cond_67

    .line 1094
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSeenSmartReplies(Z)V

    .line 1095
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x566

    .line 1096
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x568

    .line 1098
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartRepliesAdded()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1097
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x63f

    .line 1100
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartActionsAdded()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1099
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x640

    .line 1103
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuggestionsGeneratedByAssistant()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1101
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x65d

    .line 1106
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    const/16 v0, 0x66f

    .line 1109
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getEditChoicesBeforeSending()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1107
    invoke-virtual {p2, v0, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 1110
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p2, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1112
    :cond_67
    return-void
.end method

.method protected maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 2299
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasRecordedInterruption()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2300
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2301
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2302
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v3

    .line 2300
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportInterruptiveNotification(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2303
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setRecordedInterruption(Z)V

    .line 2305
    :cond_2d
    return-void
.end method

.method public onBootPhase(I)V
    .registers 5

    .line 1969
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_51

    .line 1971
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 1974
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 1975
    const-class p1, Landroid/media/AudioManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManagerInternal;

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 1976
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1977
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/ZenModeHelper;->onSystemReady()V

    .line 1978
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1979
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/app/role/RoleManager;Landroid/content/pm/IPackageManager;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    .line 1980
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->init()V

    goto :goto_6c

    .line 1981
    :cond_51
    const/16 v0, 0x258

    if-ne p1, v0, :cond_6c

    .line 1984
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->observe()V

    .line 1985
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onBootPhaseAppsCanStart()V

    .line 1986
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onBootPhaseAppsCanStart()V

    .line 1987
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1}, Lcom/android/server/notification/ConditionProviders;->onBootPhaseAppsCanStart()V

    .line 1988
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->registerDeviceConfigChange()V

    .line 1990
    :cond_6c
    :goto_6c
    return-void
.end method

.method public onStart()V
    .registers 34

    move-object/from16 v14, p0

    move-object/from16 v6, p0

    .line 1810
    new-instance v0, Lcom/android/server/notification/SnoozeHelper;

    move-object v15, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$8;

    invoke-direct {v2, v14}, Lcom/android/server/notification/NotificationManagerService$8;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v3, v14, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/SnoozeHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/SnoozeHelper$Callback;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    .line 1826
    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1828
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    .line 1829
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-class v0, Lcom/android/server/lights/LightsManager;

    .line 1830
    invoke-virtual {v14, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/lights/LightsManager;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object v11, v0

    .line 1831
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-direct {v0, v14, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/pm/IPackageManager;)V

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-object v12, v0

    .line 1832
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v14, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    iget-object v4, v14, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 1833
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    new-instance v0, Lcom/android/server/notification/ConditionProviders;

    move-object v1, v13

    move-object v13, v0

    .line 1834
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v14, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/notification/ConditionProviders;-><init>(Landroid/content/Context;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    new-instance v0, Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v16, v0

    .line 1835
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/notification/NotificationUsageStats;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "notification_policy.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v1, "notification-policy"

    invoke-direct {v0, v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1838
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/app/ActivityManager;

    .line 1839
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getGroupHelper()Lcom/android/server/notification/GroupHelper;

    move-result-object v19

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v20

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1840
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/app/usage/UsageStatsManagerInternal;

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1841
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1842
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v23

    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1843
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1844
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/AppOpsManager;

    .line 1845
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/UserManager;

    .line 1828
    const/4 v0, 0x0

    move-object v1, v14

    move-object v14, v0

    invoke-virtual/range {v6 .. v26}, Lcom/android/server/notification/NotificationManagerService;->init(Landroid/os/Looper;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/app/AppOpsManager;Landroid/os/UserManager;)V

    .line 1848
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1849
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1850
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1851
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1852
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1853
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1854
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1855
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1856
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1857
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1858
    const-string v2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1859
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v27

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v29, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v28, v2

    move-object/from16 v30, v0

    invoke-virtual/range {v27 .. v32}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1861
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1862
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1863
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1864
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1865
    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1866
    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1867
    const-string/jumbo v0, "package"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1868
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1871
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 1872
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1873
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1874
    const-string v0, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1875
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1878
    new-instance v5, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1879
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1882
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1883
    const-string/jumbo v2, "timeout"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1884
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1886
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.os.action.SETTING_RESTORED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1887
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1889
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1890
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1892
    new-instance v0, Lorg/lineageos/internal/notification/LineageNotificationLights;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$9;

    invoke-direct {v3, v1}, Lcom/android/server/notification/NotificationManagerService$9;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-direct {v0, v2, v3}, Lorg/lineageos/internal/notification/LineageNotificationLights;-><init>(Landroid/content/Context;Lorg/lineageos/internal/notification/LineageNotificationLights$LedUpdater;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mLineageNotificationLights:Lorg/lineageos/internal/notification/LineageNotificationLights;

    .line 1899
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    const-string/jumbo v2, "notification"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/server/notification/NotificationManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1901
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/notification/NotificationManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1902
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1903
    return-void
.end method

.method protected playInCallNotification()V
    .registers 4

    .line 6262
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 6263
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "in_call_notification_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_22

    .line 6265
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$13;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$13;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6285
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$13;->start()V

    .line 6287
    :cond_22
    return-void
.end method

.method protected readDefaultApprovedServices(I)V
    .registers 11

    .line 535
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 537
    const/4 v1, 0x0

    const-string v2, ":"

    const/4 v3, 0x1

    if-eqz v0, :cond_47

    .line 539
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    move v5, v1

    :goto_1b
    if-ge v5, v4, :cond_47

    aget-object v6, v0, v5

    .line 541
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/high16 v8, 0xc0000

    .line 542
    invoke-virtual {v7, v6, v8, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->queryPackageForServices(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v6

    .line 545
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 547
    :try_start_37
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v8

    invoke-interface {v8, v7, p1, v3}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3e} :catch_3f

    .line 551
    goto :goto_43

    .line 549
    :catch_3f
    move-exception v7

    .line 550
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 552
    :goto_43
    goto :goto_2b

    .line 539
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 556
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x104015d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_70

    .line 560
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    :goto_5d
    if-ge v1, v2, :cond_70

    aget-object v4, v0, v1

    .line 562
    :try_start_61
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_68} :catch_69

    .line 565
    goto :goto_6d

    .line 563
    :catch_69
    move-exception v4

    .line 564
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 560
    :goto_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 569
    :cond_70
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->setDefaultAssistantForUser(I)V

    .line 570
    return-void
.end method

.method readPolicyXml(Ljava/io/InputStream;ZI)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 602
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 603
    const-string/jumbo p1, "notification-policy"

    invoke-static {v0, p1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 604
    nop

    .line 605
    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_22

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2, p3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_22

    move v2, v1

    goto :goto_23

    :cond_22
    move v2, p1

    .line 606
    :goto_23
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 607
    :cond_27
    :goto_27
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 608
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "zen"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 609
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4, v0, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;ZI)V

    goto :goto_52

    .line 610
    :cond_40
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ranking"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 611
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v4, v0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;ZI)V

    .line 613
    :cond_52
    :goto_52
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 614
    if-eqz v2, :cond_67

    .line 615
    goto :goto_27

    .line 617
    :cond_67
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {p1, v0, v4, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->readXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    .line 618
    move p1, v1

    goto :goto_ab

    .line 619
    :cond_70
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 620
    if-eqz v2, :cond_85

    .line 621
    goto :goto_27

    .line 623
    :cond_85
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {p1, v0, v4, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->readXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    .line 624
    move p1, v1

    goto :goto_ab

    .line 625
    :cond_8e
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v4}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 626
    if-eqz v2, :cond_a3

    .line 627
    goto :goto_27

    .line 629
    :cond_a3
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {p1, v0, v4, p2, p3}, Lcom/android/server/notification/ConditionProviders;->readXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    .line 631
    move p1, v1

    .line 633
    :cond_ab
    :goto_ab
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "allow-secure-notifications-on-lockscreen"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 634
    if-eqz p2, :cond_bd

    if-eqz p3, :cond_bd

    .line 635
    goto/16 :goto_27

    .line 637
    :cond_bd
    const/4 v4, 0x0

    .line 638
    const-string/jumbo v5, "value"

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->safeBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    goto/16 :goto_27

    .line 643
    :cond_cd
    if-nez p1, :cond_e1

    .line 644
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->migrateToXml()V

    .line 645
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->migrateToXml()V

    .line 646
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1}, Lcom/android/server/notification/ConditionProviders;->migrateToXml()V

    .line 647
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 650
    :cond_e1
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultAssistantsIfNecessary()V

    .line 651
    return-void
.end method

.method removeAutogroupKeyLocked(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 4371
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 4372
    if-nez v0, :cond_b

    .line 4373
    return-void

    .line 4375
    :cond_b
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 4376
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 4377
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationUnautogrouped(Ljava/lang/String;)V

    .line 4378
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p1}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 4380
    :cond_1f
    return-void
.end method

.method protected reportSeen(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 2223
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isProxied()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2224
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2225
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result p1

    const/16 v2, 0xa

    .line 2224
    invoke-virtual {v0, v1, p1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 2228
    :cond_1d
    return-void
.end method

.method protected reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5

    .line 2312
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2313
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result p1

    .line 2312
    const/4 v2, 0x7

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 2315
    return-void
.end method

.method resetAssistantUserSet(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 8815
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    .line 8816
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setUserSet(IZ)V

    .line 8817
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 8818
    return-void
.end method

.method resolveNotificationUid(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5192
    const/4 v0, -0x1

    if-ne p4, v0, :cond_4

    .line 5193
    const/4 p4, 0x0

    .line 5196
    :cond_4
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isCallerSameApp(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 5197
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 5198
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isCallerSameApp(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 5199
    :cond_16
    return p3

    .line 5202
    :cond_17
    nop

    .line 5204
    :try_start_18
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, p4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_1e} :catch_1f

    .line 5207
    goto :goto_21

    .line 5205
    :catch_1f
    move-exception v1

    move v1, v0

    .line 5209
    :goto_21
    if-eq v1, v0, :cond_32

    invoke-direct {p0, p1, p3}, Lcom/android/server/notification/NotificationManagerService;->isCallerAndroid(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 5210
    invoke-virtual {v0, p2, v1, p1, p3}, Lcom/android/server/notification/PreferencesHelper;->isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 5212
    :cond_31
    return v1

    .line 5215
    :cond_32
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot post for pkg "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in user "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method scheduleTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5923
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5f

    .line 5924
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 5927
    const-string/jumbo v4, "timeout"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 5928
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 5927
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 5929
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 5930
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 5924
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 5932
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    .line 5933
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 5932
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 5935
    :cond_5f
    return-void
.end method

.method sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .registers 4

    .line 6696
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 6697
    return-void

    .line 6700
    :cond_9
    const/16 v0, 0x40

    .line 6701
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 6702
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 6703
    const-class p2, Landroid/app/Notification;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 6704
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 6705
    iget-object p1, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 6706
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2d

    .line 6707
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6710
    :cond_2d
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6711
    return-void
.end method

.method setAccessibilityManager(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1648
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1649
    return-void
.end method

.method setAudioManager(Landroid/media/AudioManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1516
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 1517
    return-void
.end method

.method protected setDefaultAssistantForUser(I)V
    .registers 8

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 574
    const/4 v2, 0x0

    const/high16 v3, 0xc0000

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->queryPackageForServices(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 577
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 578
    const-string/jumbo v2, "systemui"

    const-string/jumbo v3, "nas_default_service"

    invoke-static {v2, v3}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040157

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 585
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 586
    goto :goto_36

    .line 588
    :cond_49
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 589
    const-string v4, "NotificationService"

    if-eqz v3, :cond_71

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 590
    const/4 v0, 0x1

    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZ)V

    .line 591
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Set default NAS to be %s in %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void

    .line 594
    :cond_71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid default NAS config is found: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    goto :goto_36

    .line 597
    :cond_86
    return-void
.end method

.method setFallbackVibrationPattern([J)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1600
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    .line 1601
    return-void
.end method

.method setHandler(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1595
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1596
    return-void
.end method

.method setHints(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1521
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 1522
    return-void
.end method

.method setIsAutomotive(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1628
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    .line 1629
    return-void
.end method

.method setIsTelevision(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1638
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    .line 1639
    return-void
.end method

.method setLights(Lcom/android/server/lights/Light;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1531
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 1532
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 1533
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    .line 1534
    return-void
.end method

.method protected setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZ)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4304
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object p2

    .line 4305
    if-eqz p2, :cond_7f

    .line 4306
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 4307
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 4308
    const/4 v1, 0x0

    if-nez p1, :cond_2f

    .line 4309
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 4310
    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v2

    .line 4309
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4311
    if-eqz v2, :cond_c

    .line 4312
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZ)V

    goto :goto_c

    .line 4317
    :cond_2f
    if-eqz p3, :cond_47

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4318
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getRequiredPermission()Ljava/lang/String;

    move-result-object v5

    .line 4317
    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 4319
    :cond_47
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1, p3}, Lcom/android/server/notification/ConditionProviders;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 4321
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 4324
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4326
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x40000000  # 2.0f

    .line 4327
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 4328
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v3, 0x0

    .line 4324
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4330
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 4332
    :cond_7e
    goto :goto_c

    .line 4334
    :cond_7f
    return-void
.end method

.method setNotificationEffectsEnabledForAutomotive(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1633
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationEffectsEnabledForAutomotive:Z

    .line 1634
    return-void
.end method

.method setPackageManager(Landroid/content/pm/IPackageManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1605
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1606
    return-void
.end method

.method setPreferencesHelper(Lcom/android/server/notification/PreferencesHelper;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1614
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    return-void
.end method

.method setRankingHandler(Lcom/android/server/notification/RankingHandler;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1618
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 1619
    return-void
.end method

.method setRankingHelper(Lcom/android/server/notification/RankingHelper;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1610
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1611
    return-void
.end method

.method setScreenOn(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1538
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    .line 1539
    return-void
.end method

.method setSystemReady(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1590
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 1591
    return-void
.end method

.method setUsageStats(Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1643
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 1644
    return-void
.end method

.method setVibrator(Landroid/os/Vibrator;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1526
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 1527
    return-void
.end method

.method setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1623
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 1624
    return-void
.end method

.method shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6139
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 6140
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_10

    .line 6141
    return v2

    .line 6145
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v1

    .line 6146
    if-eqz v1, :cond_1a

    .line 6147
    invoke-static {p1, v1}, Lcom/android/server/notification/ZenLog;->traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 6148
    return v2

    .line 6152
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 6153
    return v2

    .line 6157
    :cond_21
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 6158
    invoke-virtual {v0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 6159
    return v2

    .line 6164
    :cond_30
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 6165
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationUsageStats;->isAlertRateLimited(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 6166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Muting recently noisy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6167
    return v2

    .line 6170
    :cond_59
    const/4 p1, 0x0

    return p1
.end method

.method showNextToastLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 6291
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 6292
    :goto_9
    if-eqz v0, :cond_82

    .line 6293
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v3, "NotificationService"

    if-eqz v2, :cond_31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Show pkg="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " callback="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6295
    :cond_31
    :try_start_31
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    invoke-interface {v2, v4}, Landroid/app/ITransientNotification;->show(Landroid/os/IBinder;)V

    .line 6296
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleDurationReachedLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3b} :catch_3c

    .line 6297
    return-void

    .line 6298
    :catch_3c
    move-exception v2

    .line 6299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object died trying to show notification "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6302
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 6303
    if-ltz v2, :cond_6a

    .line 6304
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6306
    :cond_6a
    iget v0, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveIfNeededLocked(I)V

    .line 6307
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_80

    .line 6308
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    goto :goto_81

    .line 6310
    :cond_80
    const/4 v0, 0x0

    .line 6312
    :goto_81
    goto :goto_9

    .line 6314
    :cond_82
    return-void
.end method

.method protected simulatePackageDistractionBroadcast(I[Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 8847
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    .line 8850
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8851
    const-string v1, "android.intent.extra.changed_package_list"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8852
    const-string p2, "android.intent.extra.distraction_restrictions"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8854
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8855
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8857
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 8858
    return-void
.end method

.method protected simulatePackageSuspendBroadcast(ZLjava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 8830
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    .line 8833
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8834
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "android.intent.extra.changed_package_list"

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8837
    if-eqz p1, :cond_18

    const-string p1, "android.intent.action.PACKAGES_SUSPENDED"

    goto :goto_1a

    .line 8838
    :cond_18
    const-string p1, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 8839
    :goto_1a
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8840
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8842
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 8843
    return-void
.end method

.method snoozeNotificationInt(Ljava/lang/String;JLjava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 13

    .line 7117
    if-nez p5, :cond_4

    const/4 p5, 0x0

    goto :goto_a

    :cond_4
    iget-object p5, p5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p5

    .line 7118
    :goto_a
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_12

    if-eqz p4, :cond_14

    :cond_12
    if-nez p1, :cond_15

    .line 7119
    :cond_14
    return-void

    .line 7122
    :cond_15
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_38

    .line 7123
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const-string/jumbo p5, "snooze event(%s, %d, %s, %s)"

    invoke-static {p5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    const-string v0, "NotificationService"

    invoke-static {v0, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7127
    :cond_38
    iget-object p5, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p5, v6}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7128
    return-void
.end method

.method protected unhideNotificationsForPackages([Ljava/lang/String;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7401
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7402
    :try_start_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 7403
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7404
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7405
    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_33

    .line 7406
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 7407
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 7408
    invoke-virtual {v5, v3}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 7409
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7405
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 7413
    :cond_33
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyUnhiddenLocked(Ljava/util/List;)V

    .line 7414
    monitor-exit v0

    .line 7415
    return-void

    .line 7414
    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 5

    .line 7131
    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_a

    :cond_4
    iget-object p2, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p2

    .line 7132
    :goto_a
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_23

    .line 7133
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string/jumbo p2, "unsnooze event(%s, %s)"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "NotificationService"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7135
    :cond_23
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/SnoozeHelper;->repost(Ljava/lang/String;)V

    .line 7136
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 7137
    return-void
.end method

.method updateLightsLocked()V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7225
    const/4 v0, 0x0

    move-object v1, v0

    .line 7226
    :goto_2
    const/4 v2, 0x1

    if-nez v1, :cond_41

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_41

    .line 7227
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7228
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 7229
    if-nez v2, :cond_3f

    .line 7230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LED Notification does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotificationService"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 7231
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7233
    :cond_3f
    move-object v1, v2

    goto :goto_2

    .line 7235
    :cond_41
    if-eqz v1, :cond_48

    .line 7236
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v0

    goto :goto_49

    :cond_48
    nop

    .line 7237
    :goto_49
    if-eqz v1, :cond_ca

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mLineageNotificationLights:Lorg/lineageos/internal/notification/LineageNotificationLights;

    if-eqz v3, :cond_ca

    if-nez v0, :cond_53

    goto/16 :goto_ca

    .line 7242
    :cond_53
    iget v3, v0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    .line 7243
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->isLedForcedOn(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v4

    if-eqz v4, :cond_5f

    if-nez v3, :cond_5f

    .line 7247
    const/high16 v3, 0x1000000

    .line 7250
    :cond_5f
    new-instance v10, Lorg/lineageos/internal/notification/LedValues;

    iget v4, v0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    iget v0, v0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    invoke-direct {v10, v3, v4, v0}, Lorg/lineageos/internal/notification/LedValues;-><init>(III)V

    .line 7251
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mLineageNotificationLights:Lorg/lineageos/internal/notification/LineageNotificationLights;

    iget-object v0, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 7252
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    if-nez v0, :cond_84

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_81

    goto :goto_84

    :cond_81
    const/4 v0, 0x0

    move v8, v0

    goto :goto_85

    :cond_84
    :goto_84
    move v8, v2

    .line 7253
    :goto_85
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v9

    .line 7251
    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Lorg/lineageos/internal/notification/LineageNotificationLights;->calcLights(Lorg/lineageos/internal/notification/LedValues;Ljava/lang/String;Landroid/app/Notification;ZI)V

    .line 7255
    invoke-virtual {v10}, Lorg/lineageos/internal/notification/LedValues;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_99

    .line 7256
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_c9

    .line 7258
    :cond_99
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v10}, Lorg/lineageos/internal/notification/LedValues;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setModes(I)V

    .line 7261
    invoke-virtual {v10}, Lorg/lineageos/internal/notification/LedValues;->getOnMs()I

    move-result v0

    if-ne v0, v2, :cond_b8

    invoke-virtual {v10}, Lorg/lineageos/internal/notification/LedValues;->getOffMs()I

    move-result v0

    if-nez v0, :cond_b8

    .line 7262
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v10}, Lorg/lineageos/internal/notification/LedValues;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_c9

    .line 7264
    :cond_b8
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v10}, Lorg/lineageos/internal/notification/LedValues;->getColor()I

    move-result v1

    .line 7265
    invoke-virtual {v10}, Lorg/lineageos/internal/notification/LedValues;->getOnMs()I

    move-result v3

    invoke-virtual {v10}, Lorg/lineageos/internal/notification/LedValues;->getOffMs()I

    move-result v4

    .line 7264
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 7268
    :goto_c9
    return-void

    .line 7238
    :cond_ca
    :goto_ca
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    .line 7239
    return-void
.end method

.method updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V
    .registers 21
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6864
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    if-eqz v7, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    :goto_11
    move-object v9, v1

    .line 6865
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v10, "NotificationService"

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": updating permissions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6867
    :cond_2c
    const/4 v1, 0x0

    if-eqz v7, :cond_35

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGrantableUris()Landroid/util/ArraySet;

    move-result-object v2

    move-object v11, v2

    goto :goto_36

    :cond_35
    move-object v11, v1

    .line 6868
    :goto_36
    if-eqz v8, :cond_3e

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getGrantableUris()Landroid/util/ArraySet;

    move-result-object v2

    move-object v12, v2

    goto :goto_3f

    :cond_3e
    move-object v12, v1

    .line 6871
    :goto_3f
    if-nez v11, :cond_44

    if-nez v12, :cond_44

    .line 6872
    return-void

    .line 6876
    :cond_44
    nop

    .line 6877
    if-eqz v7, :cond_4a

    .line 6878
    iget-object v2, v7, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    goto :goto_4b

    .line 6880
    :cond_4a
    move-object v2, v1

    :goto_4b
    if-eqz v8, :cond_51

    if-nez v2, :cond_51

    .line 6881
    iget-object v2, v8, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    .line 6885
    :cond_51
    if-eqz v11, :cond_84

    if-nez v2, :cond_84

    .line 6886
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_6d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": creating owner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6887
    :cond_6d
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOTIF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 6891
    :cond_84
    if-nez v11, :cond_bd

    if-eqz v2, :cond_bd

    .line 6892
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 6894
    :try_start_8c
    sget-boolean v5, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v5, :cond_a4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": destroying owner"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6895
    :cond_a4
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 v6, -0x1

    .line 6896
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v13

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 6895
    invoke-interface {v5, v2, v1, v6, v13}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_b2
    .catchall {:try_start_8c .. :try_end_b2} :catchall_b8

    .line 6897
    nop

    .line 6899
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6900
    move-object v13, v1

    goto :goto_be

    .line 6899
    :catchall_b8
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 6904
    :cond_bd
    move-object v13, v2

    :goto_be
    const/4 v14, 0x0

    if-eqz v11, :cond_105

    if-eqz v13, :cond_105

    .line 6905
    move v15, v14

    :goto_c4
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v15, v1, :cond_105

    .line 6906
    invoke-virtual {v11, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/Uri;

    .line 6907
    if-eqz v12, :cond_d9

    invoke-virtual {v12, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_102

    .line 6908
    :cond_d9
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_f4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": granting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6909
    :cond_f4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v4

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    .line 6905
    :cond_102
    add-int/lit8 v15, v15, 0x1

    goto :goto_c4

    .line 6916
    :cond_105
    if-eqz v12, :cond_143

    if-eqz v13, :cond_143

    .line 6917
    nop

    :goto_10a
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v14, v1, :cond_143

    .line 6918
    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 6919
    if-eqz v11, :cond_11e

    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_140

    .line 6920
    :cond_11e
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_139

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": revoking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6921
    :cond_139
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v2

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 6917
    :cond_140
    add-int/lit8 v14, v14, 0x1

    goto :goto_10a

    .line 6926
    :cond_143
    if-eqz v7, :cond_147

    .line 6927
    iput-object v13, v7, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    .line 6929
    :cond_147
    return-void
.end method
