.class public Lcom/android/server/notification/NotificationManagerService;
.super Lcom/android/server/SystemService;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerService$NMSInjector;,
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
        Lcom/android/server/notification/NotificationManagerService$Archive;
    }
.end annotation


# static fields
.field private static final ACTION_DELAYED_NOTIFICATION:Ljava/lang/String; = "com.android.server.notification"

.field private static final ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field static final DBG:Z

.field private static final DB_VERSION:I = 0x1

.field private static final DEBUG_BREATH_LIGHT:Z = true

.field static final DEBUG_INTERRUPTIVENESS:Z

.field static final DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

.field static final DEFAULT_MAX_NOTIFICATION_ENQUEUE_RATE:F = 5.0f

.field static final DEFAULT_STREAM_TYPE:I = 0x5

.field static final DEFAULT_VIBRATE_PATTERN:[J

.field private static final DEF_LOCK_SCREEN_SHOW_NOTIFICATION:I = 0x1

.field private static final DELAY_FOR_ASSISTANT_TIME:J = 0x64L

.field static final ENABLE_BLOCKED_TOASTS:Z = true

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field private static final EVENTLOG_ENQUEUE_STATUS_IGNORED:I = 0x2

.field private static final EVENTLOG_ENQUEUE_STATUS_NEW:I = 0x0

.field private static final EVENTLOG_ENQUEUE_STATUS_UPDATE:I = 0x1

.field private static final EXTRA_KEY:Ljava/lang/String; = "key"

.field static final FINISH_TOKEN_TIMEOUT:I = 0x2af8

.field private static final FLYME_LAUNCHER:Ljava/lang/String; = "com.meizu.flyme.launcher"

.field private static final FROM_DEFAULT:I = -0x1

.field private static final FROM_FILTER_PANEL:I = 0x1

.field private static final FROM_PANEL:I = 0x0

.field private static final LOCKSCREEN_ALLOW_SECURE_NOTIFICATIONS_TAG:Ljava/lang/String; = "allow-secure-notifications-on-lockscreen"

.field private static final LOCKSCREEN_ALLOW_SECURE_NOTIFICATIONS_VALUE:Ljava/lang/String; = "value"

.field private static final LOCK_SCREEN_ALL_NOTIFICATION:I = 0x1

.field private static final LOCK_SCREEN_NONE_NOTIFICATION:I = 0x0

.field private static final LOCK_SCREEN_PERIOD_NOTIFICATION:I = 0x2

.field static final LONG_DELAY:I = 0xdac

.field static final MATCHES_CALL_FILTER_CONTACTS_TIMEOUT_MS:I = 0xbb8

.field static final MATCHES_CALL_FILTER_TIMEOUT_AFFINITY:F = 1.0f

.field static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

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

.field private static final NOTIFICATION_DELAY:I = 0x3a98

.field private static final REQUEST_CODE_TIMEOUT:I = 0x1

.field private static final SCHEME_TIMEOUT:Ljava/lang/String; = "timeout"

.field static final SHORT_DELAY:I = 0x7d0

.field static final SNOOZE_UNTIL_UNSPECIFIED:J = -0x1L

.field static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_NOTIFICATION_POLICY:Ljava/lang/String; = "notification-policy"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field static final VIBRATE_PATTERN_MAXLEN:I = 0x11

.field private static final WHITELIST_TOKEN:Landroid/os/IBinder;

.field private static final isProductInternational:Z


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

.field private mBreathLightDoubleFlashing:Z

.field private mBreathLightOn:Z

.field private mBreathLightReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonLight:Lcom/android/server/lights/Light;

.field private mCallNotificationToken:Landroid/os/Binder;

.field private mCallState:I

.field private mCompanionManager:Landroid/companion/ICompanionDeviceManager;

.field private mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private mDisableNotificationEffects:Z

.field mDisableProximityRunnable:Ljava/lang/Runnable;

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

.field private mFirewall:Lcom/android/server/notification/NotificationFirewall;

.field private mFlashSender:Landroid/app/PendingIntent;

.field final mForegroundToken:Landroid/os/IBinder;

.field private mGroupHelper:Lcom/android/server/notification/GroupHelper;

.field private mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

.field mHasLight:Z

.field protected mInCall:Z

.field private mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

.field private mInCallNotificationUri:Landroid/net/Uri;

.field private mInCallNotificationVolume:F

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mInterceptThread:Landroid/os/HandlerThread;

.field private final mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

.field private mInterruptionFilter:I

.field private mIsAutomotive:Z

.field private mIsTelevision:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastOverRateLogTime:J

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

.field private mPM:Landroid/os/PowerManager;

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mPackageManagerClient:Landroid/content/pm/PackageManager;

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

.field private mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field mProximitySensorEnabled:Z

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field private mRankingHelper:Lcom/android/server/notification/RankingHelper;

.field private final mRankingThread:Landroid/os/HandlerThread;

.field private final mRestoreReceiver:Landroid/content/BroadcastReceiver;

.field private mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

.field mScreenOn:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field final mService:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

.field private final mShutdownReceiver:Landroid/content/BroadcastReceiver;

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

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeUpScreenRunnable:Ljava/lang/Runnable;

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field protected mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 299
    const-string v0, "NotificationService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 300
    nop

    .line 301
    const-string v0, "debug.child_notifs"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->ENABLE_CHILD_NOTIFICATIONS:Z

    .line 303
    const-string v0, "debug.notification.interruptiveness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    .line 328
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_6e

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 338
    const-string/jumbo v0, "key_contextual_actions"

    const-string/jumbo v1, "key_text_replies"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

    .line 342
    const-string v0, "android.app.role.DIALER"

    const-string v1, "android.app.role.EMERGENCY"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/notification/NotificationManagerService;

    .line 370
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    .line 472
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    .line 473
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 474
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    .line 9387
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->isProductInternational:Z

    return-void

    nop

    :array_6e
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;

    .line 1582
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 393
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    .line 395
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ranker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    .line 412
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 414
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 416
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 419
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    .line 420
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    .line 426
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    .line 429
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 430
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 432
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 434
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 436
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    .line 438
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 439
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 442
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    .line 465
    new-instance v3, Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v3}, Lcom/android/server/notification/ManagedServices$UserProfiles;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 470
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    .line 477
    const/high16 v0, 0x40a00000  # 5.0f

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 770
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 1207
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1219
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$3;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 1239
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$4;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

    .line 1262
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$5;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1412
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$6;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2408
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$10;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$10;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    .line 4885
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$11;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    .line 9410
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$17;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$17;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 9420
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$18;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$18;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 9443
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$19;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$19;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableProximityRunnable:Ljava/lang/Runnable;

    .line 9454
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$20;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$20;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWakeUpScreenRunnable:Ljava/lang/Runnable;

    .line 9462
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$21;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$21;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mBreathLightReceiver:Landroid/content/BroadcastReceiver;

    .line 9628
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mProximitySensorEnabled:Z

    .line 9637
    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mFlashSender:Landroid/app/PendingIntent;

    .line 9642
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "intercept"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterceptThread:Landroid/os/HandlerThread;

    .line 1583
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    sput-object v0, Landroid/app/Notification;->processWhitelistToken:Landroid/os/IBinder;

    .line 1584
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Z

    .line 297
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Lcom/android/server/notification/NotificationRecord;

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/IActivityManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->enableProximityLockLocked()V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/notification/NotificationManagerService;)Landroid/hardware/Sensor;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/android/server/notification/NotificationManagerService;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Z

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->proximityChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->disableProximityLockLocked()V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->wakeUpScreen()V

    return-void
.end method

.method static synthetic access$10902(Lcom/android/server/notification/NotificationManagerService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Landroid/app/PendingIntent;

    .line 297
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mFlashSender:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$11100(Lcom/android/server/notification/NotificationManagerService;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Z

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->turnOnBreathLight(Z)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZI)V
    .registers 15
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Ljava/util/ArrayList;
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # Ljava/lang/String;
    .param p5, "x5"  # Z
    .param p6, "x6"  # Ljava/lang/String;
    .param p7, "x7"  # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .param p8, "x8"  # Z
    .param p9, "x9"  # I
    .param p10, "x10"  # Z
    .param p11, "x11"  # I
    .param p12, "x12"  # Ljava/lang/String;
    .param p13, "x13"  # Z
    .param p14, "x14"  # I

    .line 297
    invoke-direct/range {p0 .. p14}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .registers 1

    .line 297
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateFlymeLauncherNotificationListenerAccess()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$1700()I
    .registers 1

    .line 297
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    return v0
.end method

.method static synthetic access$1800()I
    .registers 1

    .line 297
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    return v0
.end method

.method static synthetic access$1900(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "x0"  # Ljava/lang/String;
    .param p1, "x1"  # I

    .line 297
    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->exitIdle()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/notification/NotificationManagerService;I)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # I

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->getMainAppUid(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->turnOffBreathLight()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/notification/NotificationManagerService;)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/notification/NotificationManagerService;F)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # F

    .line 297
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateInterruptionFilterLocked()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # Ljava/lang/String;

    .line 297
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->clearAutogroupSummaryLocked(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->interceptToastIfNeed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationFirewall;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mFirewall:Lcom/android/server/notification/NotificationFirewall;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/notification/NotificationManagerService;I)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # I

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->getClonedAppUid(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V
    .registers 6
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I
    .param p3, "x3"  # Landroid/app/NotificationChannelGroup;
    .param p4, "x4"  # Z
    .param p5, "x5"  # Z

    .line 297
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I
    .param p3, "x3"  # Landroid/app/NotificationChannel;
    .param p4, "x4"  # Z

    .line 297
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationChannelInt(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUiOrShell()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Landroid/service/notification/StatusBarNotification;
    .param p2, "x2"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateListenerHintsLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateEffectsSuppressorLocked()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"  # I

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"  # I

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Ljava/io/PrintWriter;
    .param p2, "x2"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Ljava/io/FileDescriptor;
    .param p2, "x2"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpProto(Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Ljava/io/PrintWriter;
    .param p2, "x2"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;ZI)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Ljava/io/OutputStream;
    .param p2, "x2"  # Z
    .param p3, "x3"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;ZI)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/util/function/TriPredicate;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"  # Landroid/service/notification/Adjustment;

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->applyAdjustment(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    return v0
.end method

.method static synthetic access$6702(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Z

    .line 297
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 7
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Ljava/util/ArrayList;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # Ljava/lang/String;
    .param p4, "x4"  # I
    .param p5, "x5"  # I

    .line 297
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 7
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Ljava/util/ArrayList;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # Ljava/lang/String;
    .param p4, "x4"  # I
    .param p5, "x5"  # I

    .line 297
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearLightsLocked()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Lcom/android/server/notification/NotificationRecord;

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V
    .registers 6
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"  # Z
    .param p3, "x3"  # I
    .param p4, "x4"  # Z
    .param p5, "x5"  # Ljava/lang/String;

    .line 297
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V
    .registers 8
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"  # Z
    .param p3, "x3"  # I
    .param p4, "x4"  # I
    .param p5, "x5"  # I
    .param p6, "x6"  # Z
    .param p7, "x7"  # Ljava/lang/String;

    .line 297
    invoke-direct/range {p0 .. p7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V
    .registers 7
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # Ljava/lang/String;
    .param p5, "x5"  # Z
    .param p6, "x6"  # Lcom/android/server/notification/NotificationManagerService$FlagChecker;

    .line 297
    invoke-direct/range {p0 .. p6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # I
    .param p4, "x4"  # Lcom/android/server/notification/NotificationRecord;

    .line 297
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->flagNotificationForBubbles(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"  # Lcom/android/server/notification/NotificationRecord;
    .param p3, "x3"  # I
    .param p4, "x4"  # I

    .line 297
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Lcom/android/server/notification/NotificationRecord;

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isBlocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/KeyguardManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/android/server/notification/NotificationManagerService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Landroid/app/KeyguardManager;

    .line 297
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Lcom/android/server/notification/NotificationRecord;

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isCritical(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Landroid/service/notification/StatusBarNotification;

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasAutoGroupSummaryLocked(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/GroupHelper;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic access$8402(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Binder;)Landroid/os/Binder;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Landroid/os/Binder;

    .line 297
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    return-object p1
.end method

.method static synthetic access$8500(Lcom/android/server/notification/NotificationManagerService;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/server/notification/NotificationManagerService;)Landroid/media/AudioAttributes;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/server/notification/NotificationManagerService;)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationVolume:F

    return v0
.end method

.method static synthetic access$8800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleDurationReached(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)Z
    .registers 6
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # I
    .param p4, "x4"  # Lcom/android/server/notification/NotificationRecord;

    .line 297
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isNotificationAppropriateToBubble(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9000(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSendRankingUpdate()V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # I

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerHintsChanged(I)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # I

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerInterruptionFilterChanged(I)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/notification/NotificationManagerService;ZI[Ljava/lang/String;[I)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Z
    .param p2, "x2"  # I
    .param p3, "x3"  # [Ljava/lang/String;
    .param p4, "x4"  # [I

    .line 297
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->handleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Landroid/os/Message;

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleRankingReconsideration(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V
    .registers 14
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Ljava/util/ArrayList;
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # Ljava/lang/String;
    .param p5, "x5"  # Z
    .param p6, "x6"  # Ljava/lang/String;
    .param p7, "x7"  # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .param p8, "x8"  # Z
    .param p9, "x9"  # I
    .param p10, "x10"  # Z
    .param p11, "x11"  # I
    .param p12, "x12"  # Ljava/lang/String;
    .param p13, "x13"  # Z

    .line 297
    invoke-direct/range {p0 .. p13}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 297
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return v0
.end method

.method static synthetic access$9602(Lcom/android/server/notification/NotificationManagerService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # I

    .line 297
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return p1
.end method

.method static synthetic access$9700(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # I

    .line 297
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v0

    return-object v0
.end method

.method private addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 11
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "overrideGroupKey"  # Ljava/lang/String;

    .line 4503
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4504
    .local v0, "signals":Landroid/os/Bundle;
    const-string/jumbo v1, "key_group_key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4505
    new-instance v7, Landroid/service/notification/Adjustment;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4506
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    const-string v5, ""

    move-object v1, v7

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Landroid/service/notification/Adjustment;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;I)V

    .line 4507
    .local v1, "adjustment":Landroid/service/notification/Adjustment;
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    .line 4508
    return-void
.end method

.method private addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 5
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hint"  # I

    .line 2245
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_12

    .line 2246
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2249
    :cond_12
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 2250
    .local v0, "hintListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2251
    return-void
.end method

.method private addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 4
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"  # I

    .line 2231
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_8

    .line 2232
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 2235
    :cond_8
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_10

    .line 2236
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 2239
    :cond_10
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_18

    .line 2240
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 2242
    :cond_18
    return-void
.end method

.method private applyAdjustment(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V
    .registers 8
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "adjustment"  # Landroid/service/notification/Adjustment;

    .line 4457
    if-nez p1, :cond_3

    .line 4458
    return-void

    .line 4460
    :cond_3
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 4461
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v0

    .line 4462
    .local v0, "adjustments":Landroid/os/Bundle;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 4463
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4464
    .local v1, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
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

    .line 4465
    .local v3, "potentialKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isAdjustmentAllowed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 4466
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4468
    .end local v3  # "potentialKey":Ljava/lang/String;
    :cond_35
    goto :goto_1e

    .line 4469
    :cond_36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4470
    .local v3, "removeKey":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4471
    .end local v3  # "removeKey":Ljava/lang/String;
    goto :goto_3a

    .line 4472
    :cond_4a
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    .line 4474
    .end local v0  # "adjustments":Landroid/os/Bundle;
    .end local v1  # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4d
    return-void
.end method

.method private applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6727
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    .line 6728
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 6729
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 6730
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 6729
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    goto :goto_1f

    .line 6732
    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    .line 6734
    :goto_1f
    return-void
.end method

.method private calculateHints()I
    .registers 6

    .line 2254
    const/4 v0, 0x0

    .line 2255
    .local v0, "hints":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_23

    .line 2256
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2257
    .local v2, "hint":I
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 2259
    .local v3, "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_20

    .line 2260
    or-int/2addr v0, v2

    .line 2255
    .end local v2  # "hint":I
    .end local v3  # "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2264
    .end local v1  # "i":I
    :cond_23
    return v0
.end method

.method private calculateSuppressedEffects()J
    .registers 6

    .line 2268
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result v0

    .line 2269
    .local v0, "hints":I
    const-wide/16 v1, 0x0

    .line 2271
    .local v1, "suppressedEffects":J
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_d

    .line 2272
    const-wide/16 v3, 0x3

    or-long/2addr v1, v3

    .line 2275
    :cond_d
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_14

    .line 2276
    const-wide/16 v3, 0x1

    or-long/2addr v1, v3

    .line 2279
    :cond_14
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1b

    .line 2280
    const-wide/16 v3, 0x2

    or-long/2addr v1, v3

    .line 2283
    :cond_1b
    return-wide v1
.end method

.method private static callStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"  # I

    .line 7696
    if-eqz p0, :cond_20

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    .line 7700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALL_STATE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7699
    :cond_1a
    const-string v0, "CALL_STATE_OFFHOOK"

    return-object v0

    .line 7698
    :cond_1d
    const-string v0, "CALL_STATE_RINGING"

    return-object v0

    .line 7697
    :cond_20
    const-string v0, "CALL_STATE_IDLE"

    return-object v0
.end method

.method private cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V
    .registers 29
    .param p2, "callingUid"  # I
    .param p3, "callingPid"  # I
    .param p4, "pkg"  # Ljava/lang/String;
    .param p5, "nullPkgIndicatesUserSwitch"  # Z
    .param p6, "channelId"  # Ljava/lang/String;
    .param p7, "flagChecker"  # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .param p8, "includeCurrentProfiles"  # Z
    .param p9, "userId"  # I
    .param p10, "sendDelete"  # Z
    .param p11, "reason"  # I
    .param p12, "listenerName"  # Ljava/lang/String;
    .param p13, "wasPosted"  # Z
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

    .line 7264
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    const/4 v14, -0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZI)V

    .line 7267
    return-void
.end method

.method private cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZI)V
    .registers 32
    .param p2, "callingUid"  # I
    .param p3, "callingPid"  # I
    .param p4, "pkg"  # Ljava/lang/String;
    .param p5, "nullPkgIndicatesUserSwitch"  # Z
    .param p6, "channelId"  # Ljava/lang/String;
    .param p7, "flagChecker"  # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .param p8, "includeCurrentProfiles"  # Z
    .param p9, "userId"  # I
    .param p10, "sendDelete"  # Z
    .param p11, "reason"  # I
    .param p12, "listenerName"  # Ljava/lang/String;
    .param p13, "wasPosted"  # Z
    .param p14, "from"  # I
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
            "ZI)V"
        }
    .end annotation

    .line 9543
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move/from16 v11, p9

    move/from16 v12, p14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAllNotificationsByListLocked: from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p11

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9544
    const/4 v0, 0x0

    .line 9545
    .local v0, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    move-object v15, v0

    move v14, v1

    .end local v0  # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .local v14, "i":I
    .local v15, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    :goto_3d
    if-ltz v14, :cond_e4

    .line 9546
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 9549
    .local v5, "r":Lcom/android/server/notification/NotificationRecord;
    const/4 v0, -0x1

    if-eq v12, v0, :cond_66

    .line 9550
    if-nez v12, :cond_58

    iget-object v1, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v1, v1, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    if-nez v1, :cond_54

    goto :goto_58

    :cond_54
    move-object/from16 v4, p7

    goto/16 :goto_e0

    :cond_58
    :goto_58
    if-ne v12, v6, :cond_66

    iget-object v1, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v1, v1, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    if-nez v1, :cond_66

    .line 9551
    move-object/from16 v4, p7

    goto/16 :goto_e0

    .line 9555
    :cond_66
    if-eqz p8, :cond_72

    .line 9556
    invoke-direct {v7, v5, v11}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 9557
    move-object/from16 v4, p7

    goto/16 :goto_e0

    .line 9559
    :cond_72
    invoke-direct {v7, v5, v11}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 9560
    move-object/from16 v4, p7

    goto/16 :goto_e0

    .line 9563
    :cond_7c
    if-eqz p5, :cond_89

    if-nez v9, :cond_89

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    if-ne v1, v0, :cond_89

    .line 9564
    move-object/from16 v4, p7

    goto :goto_e0

    .line 9566
    :cond_89
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v0

    move-object/from16 v4, p7

    invoke-interface {v4, v0}, Lcom/android/server/notification/NotificationManagerService$FlagChecker;->apply(I)Z

    move-result v0

    if-nez v0, :cond_96

    .line 9567
    goto :goto_e0

    .line 9569
    :cond_96
    if-eqz v9, :cond_a5

    iget-object v0, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 9570
    goto :goto_e0

    .line 9572
    :cond_a5
    if-eqz v10, :cond_b6

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    .line 9573
    goto :goto_e0

    .line 9575
    :cond_b6
    if-nez v15, :cond_be

    .line 9576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 9578
    :cond_be
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9579
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9580
    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSentiment(I)V

    .line 9581
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9582
    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, p13

    move-object/from16 v16, v5

    .end local v5  # "r":Lcom/android/server/notification/NotificationRecord;
    .local v16, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v5, p12

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    .line 9545
    .end local v16  # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_e0
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_3d

    .line 9584
    .end local v14  # "i":I
    :cond_e4
    if-eqz v15, :cond_10d

    .line 9585
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 9586
    .local v14, "M":I
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_ec
    if-ge v6, v14, :cond_108

    .line 9587
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p12

    move/from16 v16, v6

    .end local v6  # "i":I
    .local v16, "i":I
    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 9586
    add-int/lit8 v6, v16, 0x1

    .end local v16  # "i":I
    .restart local v6  # "i":I
    goto :goto_ec

    :cond_108
    move/from16 v16, v6

    .line 9590
    .end local v6  # "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 9592
    .end local v14  # "M":I
    :cond_10d
    return-void
.end method

.method private cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V
    .registers 28
    .param p2, "parentNotification"  # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"  # I
    .param p4, "callingPid"  # I
    .param p5, "listenerName"  # Ljava/lang/String;
    .param p6, "sendDelete"  # Z
    .param p7, "wasPosted"  # Z
    .param p8, "flagChecker"  # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
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

    .line 7325
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p8

    move-object/from16 v2, p2

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 7326
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v14

    .line 7327
    .local v14, "userId":I
    const/16 v15, 0xc

    .line 7328
    .local v15, "reason":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v13, v4

    .local v13, "i":I
    :goto_19
    if-ltz v13, :cond_c6

    .line 7329
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/android/server/notification/NotificationRecord;

    .line 7330
    .local v12, "childR":Lcom/android/server/notification/NotificationRecord;
    iget-object v11, v12, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 7331
    .local v11, "childSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_b9

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-nez v4, :cond_b9

    .line 7332
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 7333
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_a9

    if-eqz v1, :cond_5c

    .line 7334
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/server/notification/NotificationManagerService$FlagChecker;->apply(I)Z

    move-result v4

    if-eqz v4, :cond_57

    goto :goto_5c

    :cond_57
    move-object/from16 v4, p0

    move v1, v13

    goto/16 :goto_c0

    :cond_5c
    :goto_5c
    iget-object v4, v11, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v4, v4, Landroid/service/notification/StatusBarNotification$Filter;->filterByUserBefore:Z

    if-nez v4, :cond_a1

    .line 7339
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    .line 7340
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc

    .line 7339
    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v3

    move v9, v14

    move-object/from16 v18, v11

    .end local v11  # "childSbn":Landroid/service/notification/StatusBarNotification;
    .local v18, "childSbn":Landroid/service/notification/StatusBarNotification;
    move/from16 v11, v16

    move-object/from16 v16, v12

    .end local v12  # "childR":Lcom/android/server/notification/NotificationRecord;
    .local v16, "childR":Lcom/android/server/notification/NotificationRecord;
    move/from16 v12, v17

    move v1, v13

    .end local v13  # "i":I
    .local v1, "i":I
    move-object/from16 v13, p5

    invoke-static/range {v4 .. v13}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 7341
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7342
    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7343
    const/16 v8, 0xc

    move-object/from16 v5, p0

    move-object/from16 v6, v16

    move/from16 v7, p6

    move/from16 v9, p7

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    goto :goto_c0

    .line 7334
    .end local v1  # "i":I
    .end local v16  # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v18  # "childSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v11  # "childSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v12  # "childR":Lcom/android/server/notification/NotificationRecord;
    .restart local v13  # "i":I
    :cond_a1
    move-object/from16 v4, p0

    move-object/from16 v18, v11

    move-object/from16 v16, v12

    move v1, v13

    .end local v11  # "childSbn":Landroid/service/notification/StatusBarNotification;
    .end local v12  # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v13  # "i":I
    .restart local v1  # "i":I
    .restart local v16  # "childR":Lcom/android/server/notification/NotificationRecord;
    .restart local v18  # "childSbn":Landroid/service/notification/StatusBarNotification;
    goto :goto_c0

    .line 7333
    .end local v1  # "i":I
    .end local v16  # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v18  # "childSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v11  # "childSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v12  # "childR":Lcom/android/server/notification/NotificationRecord;
    .restart local v13  # "i":I
    :cond_a9
    move-object/from16 v4, p0

    move-object/from16 v18, v11

    move-object/from16 v16, v12

    move v1, v13

    .end local v11  # "childSbn":Landroid/service/notification/StatusBarNotification;
    .end local v12  # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v13  # "i":I
    .restart local v1  # "i":I
    .restart local v16  # "childR":Lcom/android/server/notification/NotificationRecord;
    .restart local v18  # "childSbn":Landroid/service/notification/StatusBarNotification;
    goto :goto_c0

    .line 7332
    .end local v1  # "i":I
    .end local v16  # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v18  # "childSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v11  # "childSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v12  # "childR":Lcom/android/server/notification/NotificationRecord;
    .restart local v13  # "i":I
    :cond_b1
    move-object/from16 v4, p0

    move-object/from16 v18, v11

    move-object/from16 v16, v12

    move v1, v13

    .end local v11  # "childSbn":Landroid/service/notification/StatusBarNotification;
    .end local v12  # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v13  # "i":I
    .restart local v1  # "i":I
    .restart local v16  # "childR":Lcom/android/server/notification/NotificationRecord;
    .restart local v18  # "childSbn":Landroid/service/notification/StatusBarNotification;
    goto :goto_c0

    .line 7331
    .end local v1  # "i":I
    .end local v16  # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v18  # "childSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v11  # "childSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v12  # "childR":Lcom/android/server/notification/NotificationRecord;
    .restart local v13  # "i":I
    :cond_b9
    move-object/from16 v4, p0

    move-object/from16 v18, v11

    move-object/from16 v16, v12

    move v1, v13

    .line 7328
    .end local v11  # "childSbn":Landroid/service/notification/StatusBarNotification;
    .end local v12  # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v13  # "i":I
    .restart local v1  # "i":I
    :goto_c0
    add-int/lit8 v13, v1, -0x1

    move-object/from16 v1, p8

    .end local v1  # "i":I
    .restart local v13  # "i":I
    goto/16 :goto_19

    .line 7346
    .end local v13  # "i":I
    :cond_c6
    return-void
.end method

.method private cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V
    .registers 20
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "callingUid"  # I
    .param p3, "callingPid"  # I
    .param p4, "listenerName"  # Ljava/lang/String;
    .param p5, "sendDelete"  # Z
    .param p6, "flagChecker"  # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7303
    move-object v9, p0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v10

    .line 7304
    .local v10, "n":Landroid/app/Notification;
    invoke-virtual {v10}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-nez v0, :cond_c

    .line 7305
    return-void

    .line 7308
    :cond_c
    move-object v11, p1

    iget-object v0, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 7310
    .local v12, "pkg":Ljava/lang/String;
    if-nez v12, :cond_34

    .line 7311
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

    .line 7312
    :cond_33
    return-void

    .line 7315
    :cond_34
    iget-object v1, v9, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 7317
    iget-object v1, v9, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 7319
    return-void
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V
    .registers 26
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"  # Z
    .param p3, "reason"  # I
    .param p4, "rank"  # I
    .param p5, "count"  # I
    .param p6, "wasPosted"  # Z
    .param p7, "listenerName"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6933
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    .line 6936
    .local v12, "canceledKey":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 6938
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->getDismissalSurface()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1c

    .line 6939
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSurface(I)V

    .line 6943
    :cond_1c
    if-eqz p2, :cond_58

    .line 6944
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v4, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 6945
    .local v4, "deleteIntent":Landroid/app/PendingIntent;
    if-eqz v4, :cond_58

    .line 6948
    :try_start_26
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 6949
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v5

    sget-object v6, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    invoke-virtual {v0, v5, v6}, Landroid/app/ActivityManagerInternal;->clearPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;)V

    .line 6951
    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_3a
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_26 .. :try_end_3a} :catch_3b

    .line 6956
    goto :goto_58

    .line 6952
    :catch_3b
    move-exception v0

    .line 6955
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canceled PendingIntent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NotificationService"

    invoke-static {v6, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6961
    .end local v0  # "ex":Landroid/app/PendingIntent$CanceledException;
    .end local v4  # "deleteIntent":Landroid/app/PendingIntent;
    :cond_58
    :goto_58
    if-eqz p6, :cond_c3

    .line 6963
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_7e

    .line 6964
    const/16 v0, 0x12

    if-eq v11, v0, :cond_6b

    .line 6965
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 6967
    :cond_6b
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v4

    invoke-virtual {v0, v2, v11, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 6968
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$13;

    invoke-direct {v4, v1, v2}, Lcom/android/server/notification/NotificationManagerService$13;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 6977
    :cond_7e
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_a2

    .line 6978
    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 6979
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 6981
    .local v5, "identity":J
    :try_start_8d
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    .line 6982
    .local v0, "player":Landroid/media/IRingtonePlayer;
    if-eqz v0, :cond_9f

    .line 6983
    invoke-interface {v0}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_98} :catch_9e
    .catchall {:try_start_8d .. :try_end_98} :catchall_99

    goto :goto_9f

    .line 6987
    .end local v0  # "player":Landroid/media/IRingtonePlayer;
    :catchall_99
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 6985
    :catch_9e
    move-exception v0

    .line 6987
    :cond_9f
    :goto_9f
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6992
    .end local v5  # "identity":J
    :cond_a2
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 6993
    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 6994
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 6996
    .local v4, "identity":J
    :try_start_b0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V
    :try_end_b5
    .catchall {:try_start_b0 .. :try_end_b5} :catchall_b9

    .line 6999
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7000
    goto :goto_be

    .line 6999
    :catchall_b9
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 7004
    .end local v4  # "identity":J
    :cond_be
    :goto_be
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7009
    :cond_c3
    const/4 v0, 0x2

    if-eq v11, v0, :cond_d3

    const/4 v0, 0x3

    if-eq v11, v0, :cond_d3

    packed-switch v11, :pswitch_data_188

    goto :goto_de

    .line 7021
    :pswitch_cd  #0x8, 0x9
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationUsageStats;->registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_de

    .line 7014
    :cond_d3
    :pswitch_d3  #0xa
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/PreferencesHelper;->addPackageRemoveByUserNumber(Lcom/android/server/notification/NotificationRecord;)V

    .line 7017
    :pswitch_d8  #0xb
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationUsageStats;->registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 7018
    nop

    .line 7025
    :goto_de
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    .line 7026
    .local v0, "groupKey":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .line 7027
    .local v13, "groupSummary":Lcom/android/server/notification/NotificationRecord;
    if-eqz v13, :cond_fc

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fc

    .line 7028
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7030
    :cond_fc
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/util/ArrayMap;

    .line 7031
    .local v14, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v14, :cond_130

    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_130

    .line 7032
    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7036
    :cond_130
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;)V

    .line 7038
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 7039
    .local v9, "now":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getItemLogMaker()Landroid/metrics/LogMaker;

    move-result-object v4

    const/4 v5, 0x5

    .line 7040
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 7041
    invoke-virtual {v4, v11}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v15

    .line 7042
    .local v15, "logMaker":Landroid/metrics/LogMaker;
    move/from16 v8, p4

    if-eq v8, v3, :cond_164

    move/from16 v7, p5

    if-eq v7, v3, :cond_166

    .line 7043
    const/16 v3, 0x31e

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    const/16 v4, 0x573

    .line 7044
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    goto :goto_166

    .line 7042
    :cond_164
    move/from16 v7, p5

    .line 7046
    :cond_166
    :goto_166
    invoke-static {v15}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 7047
    nop

    .line 7048
    invoke-virtual {v2, v9, v10}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v5

    invoke-virtual {v2, v9, v10}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v6

    invoke-virtual {v2, v9, v10}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v16

    .line 7047
    move-object v3, v12

    move/from16 v4, p3

    move/from16 v7, v16

    move/from16 v8, p4

    move-wide/from16 v16, v9

    .end local v9  # "now":J
    .local v16, "now":J
    move/from16 v9, p5

    move-object/from16 v10, p7

    invoke-static/range {v3 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCanceled(Ljava/lang/String;IIIIIILjava/lang/String;)V

    .line 7050
    return-void

    nop

    :pswitch_data_188
    .packed-switch 0x8
        :pswitch_cd  #00000008
        :pswitch_cd  #00000009
        :pswitch_d3  #0000000a
        :pswitch_d8  #0000000b
    .end packed-switch
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V
    .registers 14
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"  # Z
    .param p3, "reason"  # I
    .param p4, "wasPosted"  # Z
    .param p5, "listenerName"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6927
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V

    .line 6928
    return-void
.end method

.method private checkCallerIsSameApp(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;

    .line 7658
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;II)V

    .line 7659
    return-void
.end method

.method private checkCallerIsSameApp(Ljava/lang/String;II)V
    .registers 9
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "userId"  # I

    .line 7663
    const-string v0, "Unknown package "

    :try_start_2
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 7665
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_3e

    .line 7668
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 7674
    .end local v1  # "ai":Landroid/content/pm/ApplicationInfo;
    nop

    .line 7675
    return-void

    .line 7669
    .restart local v1  # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_15
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " gave package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " which is owned by uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService;
    .end local p1  # "pkg":Ljava/lang/String;
    .end local p2  # "uid":I
    .end local p3  # "userId":I
    throw v2

    .line 7666
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService;
    .restart local p1  # "pkg":Ljava/lang/String;
    .restart local p2  # "uid":I
    .restart local p3  # "userId":I
    :cond_3e
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService;
    .end local p1  # "pkg":Ljava/lang/String;
    .end local p2  # "uid":I
    .end local p3  # "userId":I
    throw v2
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_53} :catch_53

    .line 7672
    .end local v1  # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService;
    .restart local p1  # "pkg":Ljava/lang/String;
    .restart local p2  # "uid":I
    .restart local p3  # "userId":I
    :catch_53
    move-exception v1

    .line 7673
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkCallerIsSystem()V
    .registers 4

    .line 7580
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7581
    return-void

    .line 7583
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
    .param p1, "pkg"  # Ljava/lang/String;

    .line 7597
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7598
    return-void

    .line 7600
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 7601
    return-void
.end method

.method private checkCallerIsSystemOrShell()V
    .registers 3

    .line 7573
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_9

    .line 7574
    return-void

    .line 7576
    :cond_9
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    .line 7577
    return-void
.end method

.method private checkCallerIsSystemOrSystemUiOrShell()V
    .registers 4

    .line 7587
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_9

    .line 7588
    return-void

    .line 7590
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7591
    return-void

    .line 7593
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7594
    return-void
.end method

.method private checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z
    .registers 25
    .param p1, "userId"  # I
    .param p2, "uid"  # I
    .param p3, "id"  # I
    .param p4, "tag"  # Ljava/lang/String;
    .param p5, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p6, "isAutogroup"  # Z

    .line 5374
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p5

    iget-object v0, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 5375
    .local v4, "pkg":Ljava/lang/String;
    nop

    .line 5376
    move/from16 v5, p2

    invoke-virtual {v1, v5}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_22

    const-string v0, "android"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_22

    :cond_20
    move v0, v7

    goto :goto_23

    :cond_22
    :goto_22
    move v0, v6

    :goto_23
    move v8, v0

    .line 5377
    .local v8, "isSystemNotification":Z
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isListenerPackage(Ljava/lang/String;)Z

    move-result v9

    .line 5381
    .local v9, "isNotificationFromListener":Z
    if-nez v8, :cond_118

    if-nez v9, :cond_118

    sget-object v0, Lcom/android/server/notification/CloudNotificationHelper;->CLOUD_PACKAGE_NAME:Ljava/lang/String;

    .line 5383
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_113

    .line 5386
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v10

    .line 5387
    :try_start_39
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5388
    .local v0, "callingUid":I
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v12, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_6e

    .line 5389
    invoke-virtual {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService;->isCallerInstantApp(II)Z

    move-result v11

    if-nez v11, :cond_52

    goto :goto_6e

    .line 5394
    :cond_52
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Instant app "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " cannot create notifications"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v4  # "pkg":Ljava/lang/String;
    .end local v8  # "isSystemNotification":Z
    .end local v9  # "isNotificationFromListener":Z
    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService;
    .end local p1  # "userId":I
    .end local p2  # "uid":I
    .end local p3  # "id":I
    .end local p4  # "tag":Ljava/lang/String;
    .end local p5  # "r":Lcom/android/server/notification/NotificationRecord;
    .end local p6  # "isAutogroup":Z
    throw v6

    .line 5399
    .restart local v4  # "pkg":Ljava/lang/String;
    .restart local v8  # "isSystemNotification":Z
    .restart local v9  # "isNotificationFromListener":Z
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService;
    .restart local p1  # "userId":I
    .restart local p2  # "uid":I
    .restart local p3  # "id":I
    .restart local p4  # "tag":Ljava/lang/String;
    .restart local p5  # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local p6  # "isAutogroup":Z
    :cond_6e
    :goto_6e
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v12, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_d7

    .line 5400
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v11

    if-nez v11, :cond_d7

    if-nez p6, :cond_d7

    .line 5403
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v11, v4}, Lcom/android/server/notification/NotificationUsageStats;->getAppEnqueueRate(Ljava/lang/String;)F

    move-result v11

    .line 5404
    .local v11, "appEnqueueRate":F
    iget v12, v1, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    cmpl-float v12, v11, v12

    if-lez v12, :cond_d7

    .line 5405
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v6, v4}, Lcom/android/server/notification/NotificationUsageStats;->registerOverRateQuota(Ljava/lang/String;)V

    .line 5406
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 5407
    .local v12, "now":J
    iget-wide v14, v1, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    sub-long v14, v12, v14

    const-wide/16 v16, 0x1388

    cmp-long v6, v14, v16

    if-lez v6, :cond_d5

    .line 5408
    const-string v6, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Package enqueue rate is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, ". Shedding "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5409
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ". package="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 5408
    invoke-static {v6, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5410
    iput-wide v12, v1, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    .line 5412
    :cond_d5
    monitor-exit v10
    :try_end_d6
    .catchall {:try_start_39 .. :try_end_d6} :catchall_10a

    return v7

    .line 5417
    .end local v11  # "appEnqueueRate":F
    .end local v12  # "now":J
    :cond_d7
    move/from16 v11, p3

    move-object/from16 v12, p4

    :try_start_db
    invoke-virtual {v1, v4, v2, v11, v12}, Lcom/android/server/notification/NotificationManagerService;->getNotificationCountLocked(Ljava/lang/String;IILjava/lang/String;)I

    move-result v13

    .line 5418
    .local v13, "count":I
    const/16 v14, 0x32

    if-lt v13, v14, :cond_108

    .line 5419
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v6, v4}, Lcom/android/server/notification/NotificationUsageStats;->registerOverCountQuota(Ljava/lang/String;)V

    .line 5420
    const-string v6, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Package has already posted or enqueued "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " notifications.  Not showing more.  package="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5422
    monitor-exit v10

    return v7

    .line 5424
    .end local v0  # "callingUid":I
    .end local v13  # "count":I
    :cond_108
    monitor-exit v10

    goto :goto_11c

    :catchall_10a
    move-exception v0

    move/from16 v11, p3

    move-object/from16 v12, p4

    :goto_10f
    monitor-exit v10
    :try_end_110
    .catchall {:try_start_db .. :try_end_110} :catchall_111

    throw v0

    :catchall_111
    move-exception v0

    goto :goto_10f

    .line 5383
    :cond_113
    move/from16 v11, p3

    move-object/from16 v12, p4

    goto :goto_11c

    .line 5381
    :cond_118
    move/from16 v11, p3

    move-object/from16 v12, p4

    .line 5428
    :goto_11c
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v2, v4, v10}, Lcom/android/server/notification/SnoozeHelper;->isSnoozed(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_161

    .line 5429
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v6, 0x6

    .line 5430
    invoke-virtual {v0, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v6, 0x33f

    .line 5431
    invoke-virtual {v0, v6}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 5429
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 5432
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_158

    .line 5433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignored enqueue for snoozed notification "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "NotificationService"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5435
    :cond_158
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/SnoozeHelper;->update(ILcom/android/server/notification/NotificationRecord;)V

    .line 5436
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 5437
    return v7

    .line 5442
    :cond_161
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/notification/NotificationManagerService;->isBlocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationUsageStats;)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 5444
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    const/4 v10, -0x2

    invoke-static {v0, v6, v10}, Lcom/android/server/notification/CloudNotificationHelper;->callReplyIntent(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;I)V

    .line 5446
    return v7

    .line 5449
    :cond_174
    return v6
.end method

.method private checkRestrictedCategories(Landroid/app/Notification;)V
    .registers 5
    .param p1, "notification"  # Landroid/app/Notification;

    .line 7614
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v1, "android.hardware.type.automotive"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    if-nez v0, :cond_c

    .line 7615
    return-void

    .line 7620
    :cond_c
    goto :goto_19

    .line 7617
    :catch_d
    move-exception v0

    .line 7618
    .local v0, "re":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_19

    const-string v1, "NotificationService"

    const-string v2, "Unable to confirm if it\'s safe to skip category restrictions check thus the check will be done anyway"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7621
    .end local v0  # "re":Landroid/os/RemoteException;
    :cond_19
    :goto_19
    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v1, "car_emergency"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 7622
    const-string v1, "car_warning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 7623
    const-string v1, "car_information"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 7624
    :cond_37
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    .line 7626
    :cond_3a
    return-void
.end method

.method static clamp(III)I
    .registers 4
    .param p0, "x"  # I
    .param p1, "low"  # I
    .param p2, "high"  # I

    .line 6880
    if-ge p0, p1, :cond_4

    move v0, p1

    goto :goto_9

    :cond_4
    if-le p0, p2, :cond_8

    move v0, p2

    goto :goto_9

    :cond_8
    move v0, p0

    :goto_9
    return v0
.end method

.method private clearAutogroupSummaryLocked(ILjava/lang/String;)V
    .registers 12
    .param p1, "userId"  # I
    .param p2, "pkg"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 4513
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 4514
    .local v0, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2e

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 4516
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    .line 4517
    .local v1, "removed":Lcom/android/server/notification/NotificationRecord;
    if-eqz v1, :cond_2e

    .line 4518
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v8

    .line 4519
    .local v8, "wasPosted":Z
    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    move v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    .line 4522
    .end local v1  # "removed":Lcom/android/server/notification/NotificationRecord;
    .end local v8  # "wasPosted":Z
    :cond_2e
    return-void
.end method

.method private clearLightsLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 1203
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1204
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 1205
    return-void
.end method

.method private clearSoundLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 1176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 1177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1179
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    .line 1180
    .local v2, "player":Landroid/media/IRingtonePlayer;
    if-eqz v2, :cond_19

    .line 1181
    invoke-interface {v2}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_18
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    goto :goto_19

    .line 1185
    .end local v2  # "player":Landroid/media/IRingtonePlayer;
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1183
    :catch_18
    move-exception v2

    .line 1185
    :cond_19
    :goto_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1186
    nop

    .line 1187
    return-void
.end method

.method private clearVibrateLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 1191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 1192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1194
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1196
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1197
    nop

    .line 1198
    return-void

    .line 1196
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V
    .registers 32
    .param p1, "userId"  # I
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "triggeringKey"  # Ljava/lang/String;

    .line 4532
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    const/4 v1, 0x0

    .line 4533
    .local v1, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    iget-object v2, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4534
    :try_start_8
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_17c

    move-object/from16 v10, p3

    :try_start_c
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_176

    .line 4535
    .local v0, "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_1b

    .line 4538
    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    return-void

    .line 4591
    .end local v0  # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    :catchall_16
    move-exception v0

    move/from16 v11, p1

    goto/16 :goto_183

    .line 4540
    .restart local v0  # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    :cond_1b
    :try_start_1b
    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4541
    .local v3, "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_176

    move v11, v4

    .line 4542
    .end local p1  # "userId":I
    .local v11, "userId":I
    :try_start_26
    iget-object v4, v8, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_172

    .line 4543
    .local v4, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v4, :cond_3a

    .line 4544
    :try_start_34
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_185

    move-object v4, v5

    .line 4546
    :cond_3a
    :try_start_3a
    iget-object v5, v8, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4547
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_132

    .line 4549
    nop

    .line 4550
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.appInfo"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 4552
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 4553
    .local v7, "extras":Landroid/os/Bundle;
    const-string v12, "android.appInfo"

    invoke-virtual {v7, v12, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4554
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v12

    .line 4555
    .local v12, "channelId":Ljava/lang/String;
    new-instance v13, Landroid/app/Notification$Builder;

    .line 4556
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4557
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 4558
    invoke-virtual {v13, v6}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x2

    .line 4559
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    move-result-object v13

    const-string/jumbo v14, "ranker_group"

    .line 4560
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v13

    const/16 v14, 0x400

    .line 4561
    invoke-virtual {v13, v14, v6}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v13

    const/16 v14, 0x200

    .line 4562
    invoke-virtual {v13, v14, v6}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 4563
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget v14, v14, Landroid/app/Notification;->color:I

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 4564
    invoke-virtual {v13, v6}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 4565
    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    .line 4566
    .local v13, "summaryNotification":Landroid/app/Notification;
    iget-object v14, v13, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v14, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4567
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14
    :try_end_bf
    .catchall {:try_start_3a .. :try_end_bf} :catchall_172

    move-object/from16 v26, v14

    .line 4568
    .local v26, "appIntent":Landroid/content/Intent;
    if-eqz v26, :cond_da

    .line 4569
    nop

    .line 4570
    :try_start_c4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v20

    .line 4569
    move-object/from16 v17, v26

    invoke-static/range {v15 .. v20}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v14

    iput-object v14, v13, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;
    :try_end_da
    .catchall {:try_start_c4 .. :try_end_da} :catchall_185

    .line 4574
    :cond_da
    :try_start_da
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v9}, Lcom/android/server/notification/CloudNotificationHelper;->putOrigPackageName(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;)V

    .line 4577
    new-instance v27, Landroid/service/notification/StatusBarNotification;

    .line 4578
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 4579
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v16

    const v17, 0x7fffffff

    const-string/jumbo v18, "ranker_group"

    .line 4581
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v19

    .line 4582
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v20

    .line 4583
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v22

    const-string/jumbo v23, "ranker_group"

    .line 4584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v14, v27

    move-object/from16 v21, v13

    invoke-direct/range {v14 .. v25}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    move-object/from16 v14, v27

    .line 4585
    .local v14, "summarySbn":Landroid/service/notification/StatusBarNotification;
    new-instance v15, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6
    :try_end_113
    .catchall {:try_start_da .. :try_end_113} :catchall_172

    .line 4586
    move-object/from16 v16, v1

    .end local v1  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .local v16, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :try_start_115
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-direct {v15, v6, v14, v1}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V
    :try_end_11c
    .catchall {:try_start_115 .. :try_end_11c} :catchall_12e

    move-object v1, v15

    .line 4587
    .end local v16  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v1  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    nop

    .line 4588
    :try_start_11e
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getIsAppImportanceLocked()Z

    move-result v6

    .line 4587
    invoke-virtual {v1, v6}, Lcom/android/server/notification/NotificationRecord;->setIsAppImportanceLocked(Z)V

    .line 4589
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v9, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12c
    .catchall {:try_start_11e .. :try_end_12c} :catchall_185

    move-object v12, v1

    goto :goto_136

    .line 4591
    .end local v0  # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .end local v1  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .end local v3  # "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    .end local v4  # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7  # "extras":Landroid/os/Bundle;
    .end local v12  # "channelId":Ljava/lang/String;
    .end local v13  # "summaryNotification":Landroid/app/Notification;
    .end local v14  # "summarySbn":Landroid/service/notification/StatusBarNotification;
    .end local v26  # "appIntent":Landroid/content/Intent;
    .restart local v16  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :catchall_12e
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_183

    .line 4547
    .end local v16  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v0  # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v1  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v3  # "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v4  # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_132
    move-object/from16 v16, v1

    .end local v1  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v16  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v12, v16

    .line 4591
    .end local v0  # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .end local v3  # "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    .end local v4  # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .local v12, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :goto_136
    :try_start_136
    monitor-exit v2
    :try_end_137
    .catchall {:try_start_136 .. :try_end_137} :catchall_16f

    .line 4594
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->isProductInternational:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_146

    const-string/jumbo v0, "vendor.meizu.sys.cts_state"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_146

    const/4 v6, 0x1

    :cond_146
    move v0, v6

    .line 4597
    .local v0, "disableAutoGrouping":Z
    if-eqz v12, :cond_16e

    sget v3, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    iget-object v1, v12, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4598
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    iget-object v1, v12, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    .line 4597
    move-object/from16 v1, p0

    move v2, v11

    move-object v6, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v1

    if-eqz v1, :cond_16e

    if-nez v0, :cond_16e

    .line 4603
    iget-object v1, v8, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    invoke-direct {v2, v8, v11, v12}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 4605
    :cond_16e
    return-void

    .line 4591
    .end local v0  # "disableAutoGrouping":Z
    :catchall_16f
    move-exception v0

    move-object v1, v12

    goto :goto_183

    .end local v12  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v1  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :catchall_172
    move-exception v0

    move-object/from16 v16, v1

    .end local v1  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v16  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    goto :goto_183

    .end local v11  # "userId":I
    .end local v16  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v1  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local p1  # "userId":I
    :catchall_176
    move-exception v0

    move-object/from16 v16, v1

    move/from16 v11, p1

    .end local v1  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v16  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    goto :goto_183

    .end local v16  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v1  # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :catchall_17c
    move-exception v0

    move-object/from16 v10, p3

    move-object/from16 v16, v1

    move/from16 v11, p1

    .end local p1  # "userId":I
    .restart local v11  # "userId":I
    :goto_183
    :try_start_183
    monitor-exit v2
    :try_end_184
    .catchall {:try_start_183 .. :try_end_184} :catchall_185

    throw v0

    :catchall_185
    move-exception v0

    goto :goto_183
.end method

.method private createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V
    .registers 10
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "group"  # Landroid/app/NotificationChannelGroup;
    .param p4, "fromApp"  # Z
    .param p5, "fromListener"  # Z

    .line 2162
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2163
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2165
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 2166
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 2167
    .local v0, "preUpdate":Landroid/app/NotificationChannelGroup;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Z)V

    .line 2169
    if-nez p4, :cond_1a

    .line 2170
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifyChannelGroupOwner(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)V

    .line 2172
    :cond_1a
    if-nez p5, :cond_2a

    .line 2173
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 2174
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x1

    .line 2173
    invoke-virtual {v1, p1, v2, p3, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelGroupChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    .line 2177
    :cond_2a
    return-void
.end method

.method private disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 4
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 4608
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    if-eqz v0, :cond_7

    .line 4609
    const-string v0, "booleanState"

    return-object v0

    .line 4611
    :cond_7
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    .line 4612
    const-string/jumbo v0, "listenerHints"

    return-object v0

    .line 4614
    :cond_11
    if-eqz p1, :cond_41

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 4615
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2d

    .line 4616
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-eq v0, v1, :cond_2d

    .line 4618
    const-string/jumbo v0, "listenerNoti"

    return-object v0

    .line 4621
    :cond_2d
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_41

    .line 4622
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-ne v0, v1, :cond_41

    .line 4624
    const-string/jumbo v0, "listenerCall"

    return-object v0

    .line 4628
    :cond_41
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 4629
    const-string v0, "callState"

    return-object v0

    .line 4631
    :cond_50
    const/4 v0, 0x0

    return-object v0
.end method

.method private disableProximityLockLocked()V
    .registers 7

    .line 9141
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mProximitySensorEnabled:Z

    const-string v1, "NotiWakeupScreen"

    if-eqz v0, :cond_43

    .line 9144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 9146
    .local v2, "identity":J
    :try_start_a
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 9147
    const-string/jumbo v0, "mSensorManager.unregisterListener(mProximityListener)"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_3e

    .line 9149
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9150
    nop

    .line 9153
    const-wide/16 v4, 0xa

    :try_start_1d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    .line 9156
    goto :goto_22

    .line 9154
    :catch_21
    move-exception v0

    .line 9158
    :goto_22
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 9159
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 9161
    :cond_2f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mProximitySensorEnabled:Z

    .line 9163
    const-string/jumbo v0, "mProximityWakeLock.release()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9164
    const-string v0, "===================================================="

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9166
    .end local v2  # "identity":J
    goto :goto_48

    .line 9149
    .restart local v2  # "identity":J
    :catchall_3e
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 9167
    .end local v2  # "identity":J
    :cond_43
    const-string v0, "disableProximityLockLocked() failed... Proximity Sensor already disabled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9170
    :goto_48
    return-void
.end method

.method private doChannelWarningToast(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "toastText"  # Ljava/lang/CharSequence;

    .line 5325
    new-instance v0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$8Pjq1sh4PByau66KrVt7XTs1eXA;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$8Pjq1sh4PByau66KrVt7XTs1eXA;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 5335
    return-void
.end method

.method private dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "filter"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 4635
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4637
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v1, "service"

    const-string v2, "Notification Manager"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4638
    const-string v1, "bans"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/PreferencesHelper;->dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4639
    const-string/jumbo v1, "ranking"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/PreferencesHelper;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4640
    const-string/jumbo v1, "stats"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/NotificationUsageStats;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4641
    const-string v1, "channels"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/PreferencesHelper;->dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3b} :catch_3c

    .line 4644
    goto :goto_40

    .line 4642
    :catch_3c
    move-exception v1

    .line 4643
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 4645
    .end local v1  # "e":Lorg/json/JSONException;
    :goto_40
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4646
    return-void
.end method

.method private dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 10
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "filter"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 4723
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4725
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4726
    .local v1, "N":I
    if-lez v1, :cond_3b

    .line 4727
    const-string v2, "  Notification List:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4728
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_36

    .line 4729
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 4730
    .local v3, "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_28

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_33

    .line 4731
    :cond_28
    const-string v4, "    "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 4728
    .end local v3  # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 4733
    .end local v2  # "i":I
    :cond_36
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4735
    .end local v1  # "N":I
    :cond_3b
    monitor-exit v0

    .line 4736
    return-void

    .line 4735
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 21
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "filter"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 4649
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v3, p1

    invoke-direct {v0, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v10, v0

    .line 4650
    .local v10, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v11

    .line 4651
    :try_start_f
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4652
    .local v0, "N":I
    const/4 v4, 0x0

    move v12, v4

    .local v12, "i":I
    :goto_17
    if-ge v12, v0, :cond_3f

    .line 4653
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    move-object v13, v4

    .line 4654
    .local v13, "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v4, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_2f

    iget-object v4, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_2f

    goto :goto_3c

    .line 4655
    :cond_2f
    const-wide v6, 0x20b00000001L

    iget-boolean v8, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v9, 0x1

    move-object v4, v13

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    .line 4652
    .end local v13  # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_3c
    add-int/lit8 v12, v12, 0x1

    goto :goto_17

    .line 4658
    .end local v12  # "i":I
    :cond_3f
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v4

    .line 4659
    const/4 v4, 0x0

    move v12, v4

    .restart local v12  # "i":I
    :goto_48
    if-ge v12, v0, :cond_70

    .line 4660
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    move-object v13, v4

    .line 4661
    .restart local v13  # "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v4, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_60

    iget-object v4, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_60

    goto :goto_6d

    .line 4662
    :cond_60
    const-wide v6, 0x20b00000001L

    iget-boolean v8, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v9, 0x0

    move-object v4, v13

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    .line 4659
    .end local v13  # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_6d
    add-int/lit8 v12, v12, 0x1

    goto :goto_48

    .line 4665
    .end local v12  # "i":I
    :cond_70
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v4

    move-object v12, v4

    .line 4666
    .local v12, "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    move v0, v4

    .line 4667
    const/4 v4, 0x0

    move v13, v4

    .local v13, "i":I
    :goto_7e
    if-ge v13, v0, :cond_a4

    .line 4668
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    move-object v14, v4

    .line 4669
    .local v14, "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v4, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_94

    iget-object v4, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_94

    goto :goto_a1

    .line 4670
    :cond_94
    const-wide v6, 0x20b00000001L

    iget-boolean v8, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v9, 0x2

    move-object v4, v14

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    .line 4667
    .end local v14  # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_a1
    add-int/lit8 v13, v13, 0x1

    goto :goto_7e

    .line 4674
    .end local v13  # "i":I
    :cond_a4
    const-wide v4, 0x10b00000002L

    invoke-virtual {v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 4675
    .local v4, "zenLog":J
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v6, v10}, Lcom/android/server/notification/ZenModeHelper;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 4676
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_cd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 4677
    .local v7, "suppressor":Landroid/content/ComponentName;
    const-wide v8, 0x20b00000004L

    invoke-virtual {v7, v10, v8, v9}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4678
    .end local v7  # "suppressor":Landroid/content/ComponentName;
    goto :goto_b8

    .line 4679
    :cond_cd
    invoke-virtual {v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4681
    const-wide v6, 0x10b00000003L

    invoke-virtual {v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 4682
    .local v6, "listenersToken":J
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v8, v10, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4683
    invoke-virtual {v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4685
    const-wide v8, 0x10500000004L

    iget v13, v1, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-virtual {v10, v8, v9, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4687
    const/4 v8, 0x0

    move v9, v8

    .local v9, "i":I
    :goto_ed
    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v9, v13, :cond_141

    .line 4688
    const-wide v13, 0x20b00000005L

    invoke-virtual {v10, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 4691
    .local v13, "effectsToken":J
    move/from16 v16, v9

    .end local v9  # "i":I
    .local v16, "i":I
    iget-object v15, v1, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 4692
    move/from16 v8, v16

    .end local v16  # "i":I
    .local v8, "i":I
    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 4691
    move-wide v15, v4

    const-wide v3, 0x10500000001L

    .end local v4  # "zenLog":J
    .local v15, "zenLog":J
    invoke-virtual {v10, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4693
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 4694
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 4695
    .local v3, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v4, 0x0

    move v5, v4

    .local v5, "j":I
    :goto_11b
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v5, v9, :cond_135

    .line 4696
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 4697
    .local v9, "componentName":Landroid/content/ComponentName;
    move/from16 v17, v5

    .end local v5  # "j":I
    .local v17, "j":I
    const-wide v4, 0x20b00000003L

    invoke-virtual {v9, v10, v4, v5}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4695
    .end local v9  # "componentName":Landroid/content/ComponentName;
    add-int/lit8 v5, v17, 0x1

    const/4 v4, 0x0

    .end local v17  # "j":I
    .restart local v5  # "j":I
    goto :goto_11b

    :cond_135
    move/from16 v17, v5

    .line 4701
    .end local v5  # "j":I
    invoke-virtual {v10, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4687
    .end local v3  # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v13  # "effectsToken":J
    add-int/lit8 v9, v8, 0x1

    move-object/from16 v3, p1

    move-wide v4, v15

    const/4 v8, 0x0

    .end local v8  # "i":I
    .local v9, "i":I
    goto :goto_ed

    .end local v15  # "zenLog":J
    .restart local v4  # "zenLog":J
    :cond_141
    move-wide v15, v4

    move v8, v9

    .line 4704
    .end local v4  # "zenLog":J
    .end local v9  # "i":I
    .restart local v15  # "zenLog":J
    const-wide v3, 0x10b00000006L

    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 4706
    .local v3, "assistantsToken":J
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v5, v10, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4707
    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4709
    const-wide v8, 0x10b00000007L

    invoke-virtual {v10, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 4710
    .local v8, "conditionsToken":J
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v5, v10, v2}, Lcom/android/server/notification/ConditionProviders;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4711
    invoke-virtual {v10, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4713
    const-wide v13, 0x10b00000008L

    invoke-virtual {v10, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 4714
    .local v13, "rankingToken":J
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v5, v10, v2}, Lcom/android/server/notification/RankingHelper;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4715
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v5, v10, v2}, Lcom/android/server/notification/PreferencesHelper;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4716
    invoke-virtual {v10, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4717
    .end local v0  # "N":I
    .end local v3  # "assistantsToken":J
    .end local v6  # "listenersToken":J
    .end local v8  # "conditionsToken":J
    .end local v12  # "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v13  # "rankingToken":J
    .end local v15  # "zenLog":J
    monitor-exit v11
    :try_end_17c
    .catchall {:try_start_f .. :try_end_17c} :catchall_180

    .line 4719
    invoke-virtual {v10}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 4720
    return-void

    .line 4717
    :catchall_180
    move-exception v0

    :try_start_181
    monitor-exit v11
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_180

    throw v0
.end method

.method private enableProximityLockLocked()V
    .registers 7

    .line 9117
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mProximitySensorEnabled:Z

    const-string v1, "NotiWakeupScreen"

    if-nez v0, :cond_3e

    .line 9118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mProximitySensorEnabled:Z

    .line 9119
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9121
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 9123
    .local v2, "identity":J
    :try_start_12
    const-string/jumbo v0, "mSensorManager.registerListener(mProximityListener)"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9125
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_39

    .line 9129
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9130
    nop

    .line 9132
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mWakeUpScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9133
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableProximityRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9134
    .end local v2  # "identity":J
    goto :goto_43

    .line 9129
    .restart local v2  # "identity":J
    :catchall_39
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 9135
    .end local v2  # "identity":J
    :cond_3e
    const-string v0, "enableProximityLockLocked() failed...Proximity Sensor already enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9138
    :goto_43
    return-void
.end method

.method private exitIdle()V
    .registers 3

    .line 2096
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    if-eqz v0, :cond_c

    .line 2097
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const-string/jumbo v1, "notification interaction"

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 2100
    :cond_c
    goto :goto_e

    .line 2099
    :catch_d
    move-exception v0

    .line 2101
    :goto_e
    return-void
.end method

.method private findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 10
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "groupKey"  # Ljava/lang/String;
    .param p4, "userId"  # I
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

    .line 7423
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7424
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7425
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_34

    .line 7426
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 7427
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v3, p4}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 7428
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 7429
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7425
    .end local v3  # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 7432
    .end local v2  # "i":I
    :cond_34
    return-object v0
.end method

.method private findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 4
    .param p1, "key"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7441
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_a

    .line 7442
    return-object v1

    .line 7444
    :cond_a
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_14

    .line 7445
    return-object v1

    .line 7447
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 6
    .param p2, "key"  # Ljava/lang/String;
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

    .line 7495
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7496
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_21

    .line 7497
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 7498
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    return-object v2

    .line 7496
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7501
    .end local v1  # "i":I
    :cond_21
    const/4 v1, 0x0

    return-object v1
.end method

.method private findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 10
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "tag"  # Ljava/lang/String;
    .param p4, "id"  # I
    .param p5, "userId"  # I
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

    .line 7466
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7467
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_37

    .line 7468
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 7469
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v2, p5}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-ne v3, p4, :cond_34

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 7470
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

    .line 7471
    return-object v2

    .line 7467
    .end local v2  # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7474
    .end local v1  # "i":I
    :cond_37
    const/4 v1, 0x0

    return-object v1
.end method

.method private findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I
    .registers 4
    .param p1, "target"  # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6738
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    return v0
.end method

.method private findNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 11
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "tag"  # Ljava/lang/String;
    .param p4, "id"  # I
    .param p5, "userId"  # I
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

    .line 7480
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7481
    .local v0, "matching":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7482
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_3e

    .line 7483
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 7484
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v3, p5}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p4, :cond_3b

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 7485
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

    .line 7486
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7482
    .end local v3  # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 7489
    .end local v2  # "i":I
    :cond_3e
    return-object v0
.end method

.method private flagNotificationForBubbles(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)V
    .registers 7
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "oldRecord"  # Lcom/android/server/notification/NotificationRecord;

    .line 5202
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 5203
    .local v0, "notification":Landroid/app/Notification;
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isNotificationAppropriateToBubble(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5204
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_17

    .line 5206
    :cond_11
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 5208
    :goto_17
    return-void
.end method

.method private getClonedAppUid(I)I
    .registers 3
    .param p1, "mainUid"  # I

    .line 9595
    const v0, 0x5f45a60

    add-int/2addr v0, p1

    return v0
.end method

.method private getGroupHelper()Lcom/android/server/notification/GroupHelper;
    .registers 4

    .line 2000
    nop

    .line 2001
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutoGroupAtCount:I

    .line 2002
    new-instance v0, Lcom/android/server/notification/GroupHelper;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAutoGroupAtCount:I

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$9;

    invoke-direct {v2, p0}, Lcom/android/server/notification/NotificationManagerService$9;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/GroupHelper;-><init>(ILcom/android/server/notification/GroupHelper$Callback;)V

    return-object v0
.end method

.method static getLongArray(Landroid/content/res/Resources;II[J)[J
    .registers 10
    .param p0, "r"  # Landroid/content/res/Resources;
    .param p1, "resid"  # I
    .param p2, "maxlen"  # I
    .param p3, "def"  # [J

    .line 1569
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1570
    .local v0, "ar":[I
    if-nez v0, :cond_7

    .line 1571
    return-object p3

    .line 1573
    :cond_7
    array-length v1, v0

    if-le v1, p2, :cond_c

    move v1, p2

    goto :goto_d

    :cond_c
    array-length v1, v0

    .line 1574
    .local v1, "len":I
    :goto_d
    new-array v2, v1, [J

    .line 1575
    .local v2, "out":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v1, :cond_1a

    .line 1576
    aget v4, v0, v3

    int-to-long v4, v4

    aput-wide v4, v2, v3

    .line 1575
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1578
    .end local v3  # "i":I
    :cond_1a
    return-object v2
.end method

.method private getMainAppUid(I)I
    .registers 3
    .param p1, "clonedUid"  # I

    .line 9599
    const v0, 0x5f45a60

    sub-int v0, p1, v0

    return v0
.end method

.method private getRealUserId(I)I
    .registers 3
    .param p1, "userId"  # I

    .line 2400
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_6

    :cond_5
    move v0, p1

    :goto_6
    return v0
.end method

.method private getSuppressors()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 2199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2200
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_2e

    .line 2201
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2203
    .local v2, "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 2204
    .local v4, "info":Landroid/content/ComponentName;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2205
    .end local v4  # "info":Landroid/content/ComponentName;
    goto :goto_1b

    .line 2200
    .end local v2  # "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 2208
    .end local v1  # "i":I
    :cond_2e
    return-object v0
.end method

.method private grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 16
    .param p1, "owner"  # Landroid/os/IBinder;
    .param p2, "uri"  # Landroid/net/Uri;
    .param p3, "sourceUid"  # I
    .param p4, "targetPkg"  # Ljava/lang/String;
    .param p5, "targetUserId"  # I

    .line 7124
    if-eqz p2, :cond_35

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_35

    .line 7126
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7128
    .local v0, "ident":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 7129
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    .line 7131
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {p2, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    .line 7128
    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move v9, p5

    invoke-interface/range {v2 .. v9}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_29} :catch_2f
    .catchall {:try_start_13 .. :try_end_29} :catchall_2a

    goto :goto_30

    .line 7136
    :catchall_2a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 7133
    :catch_2f
    move-exception v2

    .line 7136
    :goto_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7137
    nop

    .line 7138
    return-void

    .line 7124
    .end local v0  # "ident":J
    :cond_35
    :goto_35
    return-void
.end method

.method private handleDurationReached(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 5
    .param p1, "record"  # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 6543
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

    .line 6544
    :cond_26
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 6545
    :try_start_29
    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v1

    .line 6546
    .local v1, "index":I
    if-ltz v1, :cond_36

    .line 6547
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V

    .line 6549
    .end local v1  # "index":I
    :cond_36
    monitor-exit v0

    .line 6550
    return-void

    .line 6549
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .registers 22
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"  # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"  # I
    .param p4, "callingPid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6035
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v10, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 6036
    .local v10, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    .line 6037
    .local v11, "n":Landroid/app/Notification;
    invoke-virtual {v11}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 6040
    iget v0, v11, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 6043
    :cond_1e
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v12

    .line 6044
    .local v12, "group":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v13

    .line 6046
    .local v13, "isSummary":Z
    const/4 v0, 0x0

    if-eqz v9, :cond_30

    iget-object v1, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    goto :goto_31

    :cond_30
    move-object v1, v0

    :goto_31
    move-object v14, v1

    .line 6047
    .local v14, "oldN":Landroid/app/Notification;
    if-eqz v9, :cond_3a

    iget-object v0, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    :cond_3a
    move-object v15, v0

    .line 6048
    .local v15, "oldGroup":Ljava/lang/String;
    if-eqz v9, :cond_45

    invoke-virtual {v14}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_45

    const/4 v0, 0x1

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    move/from16 v16, v0

    .line 6050
    .local v16, "oldIsSummary":Z
    if-eqz v16, :cond_7f

    .line 6051
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 6052
    .local v0, "removedSummary":Lcom/android/server/notification/NotificationRecord;
    if-eq v0, v9, :cond_7f

    .line 6054
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_5d

    :cond_5b
    const-string v1, "<null>"

    .line 6055
    .local v1, "removedKey":Ljava/lang/String;
    :goto_5d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed summary didn\'t match old notification: old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", removed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6059
    .end local v0  # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    .end local v1  # "removedKey":Ljava/lang/String;
    :cond_7f
    if-eqz v13, :cond_86

    .line 6060
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6067
    :cond_86
    if-eqz v16, :cond_9e

    if-eqz v13, :cond_90

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    .line 6068
    :cond_90
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 6071
    :cond_9e
    return-void
.end method

.method private handleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 5
    .param p1, "record"  # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 6562
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

    .line 6563
    :cond_1c
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 6564
    :try_start_1f
    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    iget v2, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->displayId:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->finishTokenLocked(Landroid/os/IBinder;I)V

    .line 6565
    monitor-exit v0

    .line 6566
    return-void

    .line 6565
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private handleListenerHintsChanged(I)V
    .registers 4
    .param p1, "hints"  # I

    .line 6761
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6762
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChangedLocked(I)V

    .line 6763
    monitor-exit v0

    .line 6764
    return-void

    .line 6763
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private handleListenerInterruptionFilterChanged(I)V
    .registers 4
    .param p1, "interruptionFilter"  # I

    .line 6767
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6768
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(I)V

    .line 6769
    monitor-exit v0

    .line 6770
    return-void

    .line 6769
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private handleOnPackageChanged(ZI[Ljava/lang/String;[I)V
    .registers 7
    .param p1, "removingPackage"  # Z
    .param p2, "changeUserId"  # I
    .param p3, "pkgList"  # [Ljava/lang/String;
    .param p4, "uidList"  # [I

    .line 6774
    move v0, p1

    .line 6775
    .local v0, "preferencesChanged":Z
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 6776
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 6777
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 6778
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->onPackagesChanged(ZI[Ljava/lang/String;[I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 6780
    if-eqz v0, :cond_1c

    .line 6781
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 6783
    :cond_1c
    return-void
.end method

.method private handleRankingReconsideration(Landroid/os/Message;)V
    .registers 14
    .param p1, "message"  # Landroid/os/Message;

    .line 6627
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/notification/RankingReconsideration;

    if-nez v0, :cond_7

    return-void

    .line 6628
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/RankingReconsideration;

    .line 6629
    .local v0, "recon":Lcom/android/server/notification/RankingReconsideration;
    invoke-virtual {v0}, Lcom/android/server/notification/RankingReconsideration;->run()V

    .line 6631
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6632
    :try_start_11
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/server/notification/RankingReconsideration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 6633
    .local v2, "record":Lcom/android/server/notification/NotificationRecord;
    if-nez v2, :cond_21

    .line 6634
    monitor-exit v1

    return-void

    .line 6636
    :cond_21
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v3

    .line 6637
    .local v3, "indexBefore":I
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    .line 6638
    .local v4, "interceptBefore":Z
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v5

    .line 6639
    .local v5, "visibilityBefore":I
    invoke-virtual {v0, v2}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 6640
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 6641
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 6642
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v6

    .line 6643
    .local v6, "indexAfter":I
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v7

    .line 6644
    .local v7, "interceptAfter":Z
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v8

    .line 6645
    .local v8, "visibilityAfter":I
    if-ne v3, v6, :cond_4f

    if-ne v4, v7, :cond_4f

    if-eq v5, v8, :cond_4d

    goto :goto_4f

    :cond_4d
    const/4 v9, 0x0

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 v9, 0x1

    .line 6647
    .local v9, "changed":Z
    :goto_50
    if-eqz v4, :cond_61

    if-nez v7, :cond_61

    .line 6648
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/android/server/notification/NotificationRecord;->isNewEnoughForAlerting(J)Z

    move-result v10

    if-eqz v10, :cond_61

    .line 6649
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 6651
    .end local v2  # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v3  # "indexBefore":I
    .end local v4  # "interceptBefore":Z
    .end local v5  # "visibilityBefore":I
    .end local v6  # "indexAfter":I
    .end local v7  # "interceptAfter":Z
    .end local v8  # "visibilityAfter":I
    :cond_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_11 .. :try_end_62} :catchall_6a

    .line 6652
    if-eqz v9, :cond_69

    .line 6653
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 6655
    :cond_69
    return-void

    .line 6651
    .end local v9  # "changed":Z
    :catchall_6a
    move-exception v2

    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v2
.end method

.method private handleSendRankingUpdate()V
    .registers 4

    .line 6742
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6743
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked(Ljava/util/List;)V

    .line 6744
    monitor-exit v0

    .line 6745
    return-void

    .line 6744
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private hasAutoGroupSummaryLocked(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4
    .param p1, "sbn"  # Landroid/service/notification/StatusBarNotification;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 4526
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 4527
    .local v0, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method private hasValidRemoteInput(Landroid/app/Notification;)Z
    .registers 7
    .param p1, "n"  # Landroid/app/Notification;

    .line 5253
    iget-object v0, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 5254
    .local v0, "actions":[Landroid/app/Notification$Action;
    if-eqz v0, :cond_18

    .line 5256
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_18

    .line 5257
    aget-object v2, v0, v1

    .line 5258
    .local v2, "action":Landroid/app/Notification$Action;
    invoke-virtual {v2}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v3

    .line 5259
    .local v3, "inputs":[Landroid/app/RemoteInput;
    if-eqz v3, :cond_15

    array-length v4, v3

    if-lez v4, :cond_15

    .line 5260
    const/4 v4, 0x1

    return v4

    .line 5256
    .end local v2  # "action":Landroid/app/Notification$Action;
    .end local v3  # "inputs":[Landroid/app/RemoteInput;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 5264
    .end local v1  # "i":I
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method private interceptToastIfNeed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 6590
    const/4 v0, 0x0

    if-eqz p1, :cond_32

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_32

    .line 6593
    :cond_a
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6594
    .local v1, "size":I
    if-gtz v1, :cond_13

    .line 6595
    return v0

    .line 6598
    :cond_13
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_15
    if-ltz v2, :cond_31

    .line 6599
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 6600
    .local v3, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 6601
    iget-object v0, v3, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->message:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 6598
    :cond_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 6604
    .end local v2  # "i":I
    .end local v3  # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_31
    return v0

    .line 6591
    .end local v1  # "size":I
    :cond_32
    :goto_32
    return v0
.end method

.method private isBlocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 8
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;

    .line 5489
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 5490
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    .line 5493
    .local v1, "callingUid":I
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/server/notification/CloudNotificationHelper;->getOrigPackageName(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5494
    .local v2, "origPkgName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v1

    goto :goto_2a

    .line 5495
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/android/server/notification/CloudNotificationHelper;->getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    :goto_2a
    nop

    .line 5498
    .local v3, "origPkgUid":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/server/notification/PreferencesHelper;->isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4a

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 5499
    invoke-virtual {v4, v2, v3}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4a

    .line 5501
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v4

    if-nez v4, :cond_5c

    :cond_4a
    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v4, v4, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v4, v4, Landroid/service/notification/StatusBarNotification$Filter;->shouldAuthorityManagement:Z

    if-nez v4, :cond_5d

    .line 5503
    const-string/jumbo v4, "vendor.meizu.sys.cts_state"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5c

    goto :goto_5d

    :cond_5c
    goto :goto_5e

    :cond_5d
    :goto_5d
    const/4 v5, 0x1

    .line 5498
    :goto_5e
    return v5
.end method

.method private isCallerAndroid(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "callingPkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 7604
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    .line 7605
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 7604
    :goto_13
    return v0
.end method

.method private isCallerSameApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;

    .line 7679
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    .line 7680
    const/4 v0, 0x1

    return v0

    .line 7681
    :catch_5
    move-exception v0

    .line 7682
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method private isCallerSameApp(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "userId"  # I

    .line 7688
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;II)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    .line 7689
    const/4 v0, 0x1

    return v0

    .line 7690
    :catch_5
    move-exception v0

    .line 7691
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method private isCritical(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 6021
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getCriticality()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private isLedDoubleFlash()Z
    .registers 6

    .line 9243
    const/4 v0, 0x0

    .line 9244
    .local v0, "ledDoubleFlash":Z
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9245
    .local v2, "r":Ljava/lang/String;
    const-string v3, "breathLightDoubleFlash"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1e

    .line 9246
    const/4 v0, 0x1

    .line 9247
    goto :goto_1f

    .line 9249
    .end local v2  # "r":Ljava/lang/String;
    :cond_1e
    goto :goto_7

    .line 9250
    :cond_1f
    :goto_1f
    return v0
.end method

.method private isNotificationAppropriateToBubble(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)Z
    .registers 22
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "oldRecord"  # Lcom/android/server/notification/NotificationRecord;

    .line 5215
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 5216
    .local v2, "notification":Landroid/app/Notification;
    invoke-virtual {v2}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v3

    .line 5217
    .local v3, "metadata":Landroid/app/Notification$BubbleMetadata;
    const/4 v5, 0x0

    if-eqz v3, :cond_1f

    .line 5218
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/server/notification/NotificationManagerService;->canLaunchInActivityView(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v6, 0x1

    goto :goto_20

    :cond_1f
    move v6, v5

    .line 5221
    .local v6, "intentCanBubble":Z
    :goto_20
    if-eqz v6, :cond_53

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 5222
    move/from16 v8, p3

    invoke-virtual {v7, v1, v8}, Lcom/android/server/notification/PreferencesHelper;->areBubblesAllowed(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_50

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    move-object/from16 v9, p1

    iget-object v10, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5223
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/server/notification/PreferencesHelper;->bubblesEnabled(Landroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 5224
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v7

    if-eqz v7, :cond_57

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 5225
    invoke-virtual {v7}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v7

    if-nez v7, :cond_57

    const/4 v7, 0x1

    goto :goto_58

    .line 5222
    :cond_50
    move-object/from16 v9, p1

    goto :goto_57

    .line 5221
    :cond_53
    move-object/from16 v9, p1

    move/from16 v8, p3

    .line 5225
    :cond_57
    :goto_57
    move v7, v5

    .line 5228
    .local v7, "canBubble":Z
    :goto_58
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 5229
    invoke-virtual {v10, v1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x64

    if-ne v10, v11, :cond_64

    const/4 v10, 0x1

    goto :goto_65

    :cond_64
    move v10, v5

    .line 5233
    .local v10, "appIsForeground":Z
    :goto_65
    iget-object v11, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v11, :cond_72

    .line 5234
    iget-object v11, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v12, "android.people.list"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    goto :goto_73

    .line 5235
    :cond_72
    const/4 v11, 0x0

    :goto_73
    nop

    .line 5236
    .local v11, "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    iget-object v12, v2, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v13, "call"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_86

    iget v12, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v12, v12, 0x40

    if-eqz v12, :cond_86

    const/4 v12, 0x1

    goto :goto_87

    :cond_86
    move v12, v5

    .line 5239
    .local v12, "isForegroundCall":Z
    :goto_87
    invoke-virtual {v2}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v13

    .line 5240
    .local v13, "style":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    const-class v14, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 5241
    .local v14, "isMessageStyle":Z
    if-eqz v14, :cond_99

    .line 5242
    invoke-direct {v0, v2}, Lcom/android/server/notification/NotificationManagerService;->hasValidRemoteInput(Landroid/app/Notification;)Z

    move-result v15

    if-nez v15, :cond_a3

    :cond_99
    if-eqz v11, :cond_a5

    .line 5243
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_a5

    if-eqz v12, :cond_a5

    :cond_a3
    const/4 v15, 0x1

    goto :goto_a6

    :cond_a5
    move v15, v5

    .line 5246
    .local v15, "notificationAppropriateToBubble":Z
    :goto_a6
    if-eqz p4, :cond_b4

    .line 5247
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_b4

    const/4 v4, 0x1

    goto :goto_b5

    :cond_b4
    move v4, v5

    .line 5248
    .local v4, "bubbleUpdate":Z
    :goto_b5
    if-eqz v7, :cond_c0

    if-nez v15, :cond_bd

    if-nez v10, :cond_bd

    if-eqz v4, :cond_c0

    :cond_bd
    const/16 v16, 0x1

    goto :goto_c2

    :cond_c0
    move/from16 v16, v5

    :goto_c2
    return v16
.end method

.method private isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 7
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 6420
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6422
    .local v0, "token":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_2a

    .line 6424
    .local v2, "currentUser":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6425
    nop

    .line 6426
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_28

    .line 6427
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    if-eq v3, v2, :cond_28

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 6428
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_28

    :cond_26
    const/4 v3, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v3, 0x1

    .line 6426
    :goto_29
    return v3

    .line 6424
    .end local v2  # "currentUser":I
    :catchall_2a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 7801
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7802
    .local v0, "identity":J
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 7804
    .local v2, "userId":I
    :try_start_8
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v3
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_e} :catch_14
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 7811
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7804
    return v3

    .line 7811
    :catchall_12
    move-exception v3

    goto :goto_23

    .line 7807
    :catch_14
    move-exception v3

    .line 7809
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    .line 7811
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7809
    return v4

    .line 7805
    .end local v3  # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1a
    move-exception v3

    .line 7806
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_1b
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Could not talk to package manager service"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0  # "identity":J
    .end local v2  # "userId":I
    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService;
    .end local p1  # "pkg":Ljava/lang/String;
    .end local p2  # "uid":I
    throw v4
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_12

    .line 7811
    .end local v3  # "re":Landroid/os/RemoteException;
    .restart local v0  # "identity":J
    .restart local v2  # "userId":I
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService;
    .restart local p1  # "pkg":Ljava/lang/String;
    .restart local p2  # "uid":I
    :goto_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private static isSystemApp(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "pkg"  # Ljava/lang/String;
    .param p1, "userId"  # I

    .line 9380
    invoke-static {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->isSystemApp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isVibrateOn()Z
    .registers 4

    .line 9362
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "vibrate_when_ringing"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    move v1, v2

    :cond_14
    return v1
.end method

.method private isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 4
    .param p1, "sbn"  # Landroid/service/notification/StatusBarNotification;
    .param p2, "listener"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7793
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 7794
    const/4 v0, 0x0

    return v0

    .line 7797
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method private listenForCallState()V
    .registers 4

    .line 7705
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$15;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$15;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 7713
    return-void
.end method

.method private makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .registers 31
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7721
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7722
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7724
    .local v2, "rankings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/NotificationListenerService$Ranking;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    const/4 v4, 0x0

    if-ge v3, v1, :cond_ab

    .line 7725
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 7726
    .local v5, "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v7, p1

    invoke-direct {v0, v6, v7}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v6

    if-nez v6, :cond_25

    .line 7727
    goto/16 :goto_a5

    .line 7729
    :cond_25
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 7730
    .local v6, "key":Ljava/lang/String;
    new-instance v8, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v8}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    move-object v15, v8

    .line 7732
    .local v15, "ranking":Landroid/service/notification/NotificationListenerService$Ranking;
    nop

    .line 7734
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 7735
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v8

    .line 7736
    const/4 v9, 0x1

    xor-int/lit8 v11, v8, 0x1

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v12

    .line 7737
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v13

    .line 7738
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v14

    .line 7739
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v16

    iget-object v8, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 7740
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v17

    .line 7741
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v18

    .line 7742
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v19

    .line 7743
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v20

    .line 7744
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v21

    .line 7745
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v22

    .line 7746
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v23

    .line 7747
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getLastAudiblyAlertedMs()J

    move-result-wide v24

    .line 7748
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_7b

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getVibration()[J

    move-result-object v8

    if-eqz v8, :cond_7c

    :cond_7b
    move v4, v9

    .line 7749
    :cond_7c
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v26

    .line 7750
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v27

    .line 7751
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v28

    .line 7732
    move-object v8, v15

    move-object v9, v6

    move-object v0, v15

    .end local v15  # "ranking":Landroid/service/notification/NotificationListenerService$Ranking;
    .local v0, "ranking":Landroid/service/notification/NotificationListenerService$Ranking;
    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move-wide/from16 v23, v24

    move/from16 v25, v4

    invoke-virtual/range {v8 .. v28}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZJZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 7753
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7724
    .end local v0  # "ranking":Landroid/service/notification/NotificationListenerService$Ranking;
    .end local v5  # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v6  # "key":Ljava/lang/String;
    :goto_a5
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_e

    :cond_ab
    move-object/from16 v7, p1

    .line 7756
    .end local v3  # "i":I
    new-instance v0, Landroid/service/notification/NotificationRankingUpdate;

    new-array v3, v4, [Landroid/service/notification/NotificationListenerService$Ranking;

    .line 7757
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0, v3}, Landroid/service/notification/NotificationRankingUpdate;-><init>([Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 7756
    return-object v0
.end method

.method private maybeNotifyChannelGroupOwner(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)V
    .registers 9
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "preUpdate"  # Landroid/app/NotificationChannelGroup;
    .param p4, "update"  # Landroid/app/NotificationChannelGroup;

    .line 2182
    :try_start_0
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    if-eq v0, v1, :cond_3f

    .line 2183
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.NOTIFICATION_CHANNEL_GROUP_BLOCK_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.app.extra.NOTIFICATION_CHANNEL_GROUP_ID"

    .line 2186
    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2185
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.app.extra.BLOCKED_STATE"

    .line 2188
    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v3

    .line 2187
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 2189
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 2190
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2191
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    .line 2183
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3f} :catch_40

    .line 2195
    :cond_3f
    goto :goto_48

    .line 2193
    :catch_40
    move-exception v0

    .line 2194
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "NotificationService"

    const-string v2, "Can\'t notify app about group change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2196
    .end local v0  # "e":Ljava/lang/SecurityException;
    :goto_48
    return-void
.end method

.method private maybeNotifyChannelOwner(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .registers 9
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "preUpdate"  # Landroid/app/NotificationChannel;
    .param p4, "update"  # Landroid/app/NotificationChannel;

    .line 2141
    :try_start_0
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_c

    .line 2142
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_18

    .line 2143
    :cond_c
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-eqz v0, :cond_52

    .line 2144
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_52

    .line 2145
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.NOTIFICATION_CHANNEL_BLOCK_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.app.extra.NOTIFICATION_CHANNEL_ID"

    .line 2148
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2147
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.app.extra.BLOCKED_STATE"

    .line 2150
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-nez v3, :cond_37

    const/4 v3, 0x1

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    .line 2149
    :goto_38
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 2151
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 2152
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2153
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    .line 2145
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_52} :catch_53

    .line 2157
    :cond_52
    goto :goto_5b

    .line 2155
    :catch_53
    move-exception v0

    .line 2156
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "NotificationService"

    const-string v2, "Can\'t notify app about channel change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2158
    .end local v0  # "e":Ljava/lang/SecurityException;
    :goto_5b
    return-void
.end method

.method private notiBreathLightInit(Landroid/content/Context;Lcom/android/server/lights/Light;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "lights"  # Lcom/android/server/lights/Light;

    .line 9192
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mButtonLight:Lcom/android/server/lights/Light;

    .line 9193
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 9194
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "butonnLightFlash"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 9195
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 9196
    return-void
.end method

.method private notiWakeupScreenInit(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;

    .line 9077
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPM:Landroid/os/PowerManager;

    .line 9078
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPM:Landroid/os/PowerManager;

    const v1, 0x3000001a

    const-string v2, "NotificationService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 9081
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 9082
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPM:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "PhoneWindowManager.mProximityWakeLock"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 9084
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 9086
    new-instance v0, Landroid/hardware/SystemSensorManager;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 9087
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 9088
    return-void
.end method

.method private notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 5
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"  # I

    .line 7205
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 7206
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 7205
    :goto_16
    return v0
.end method

.method private notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 5
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"  # I

    .line 7190
    const/4 v0, -0x1

    if-eq p2, v0, :cond_12

    .line 7194
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    if-eq v1, v0, :cond_12

    .line 7196
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 7190
    :goto_13
    return v0
.end method

.method private playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)Z
    .registers 12
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "soundUri"  # Landroid/net/Uri;

    .line 6322
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

    .line 6326
    .local v0, "looping":Z
    :goto_f
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v3

    if-nez v3, :cond_75

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 6328
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v4

    .line 6327
    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-eqz v3, :cond_75

    .line 6329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 6331
    .local v3, "identity":J
    :try_start_2b
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v5

    .line 6332
    .local v5, "player":Landroid/media/IRingtonePlayer;
    if-eqz v5, :cond_6b

    .line 6333
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

    .line 6334
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6333
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6335
    :cond_59
    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 6336
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v7

    .line 6335
    invoke-interface {v5, p2, v6, v0, v7}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_66} :catch_71
    .catchall {:try_start_2b .. :try_end_66} :catchall_6c

    .line 6337
    nop

    .line 6341
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6337
    return v1

    .line 6332
    .end local v5  # "player":Landroid/media/IRingtonePlayer;
    :cond_6b
    goto :goto_72

    .line 6341
    :catchall_6c
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 6339
    :catch_71
    move-exception v1

    .line 6341
    :goto_72
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6344
    .end local v3  # "identity":J
    :cond_75
    return v2
.end method

.method private playVibration(Lcom/android/server/notification/NotificationRecord;[JZ)Z
    .registers 15
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "vibration"  # [J
    .param p3, "delayVibForSound"  # Z

    .line 6351
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6355
    .local v0, "identity":J
    nop

    .line 6356
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

    .line 6357
    .local v3, "insistent":Z
    :goto_14
    nop

    .line 6358
    if-eqz v3, :cond_19

    move v5, v2

    goto :goto_1a

    :cond_19
    const/4 v5, -0x1

    .line 6357
    :goto_1a
    invoke-static {p2, v5}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_1e} :catch_4e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_4c

    .line 6363
    .end local v3  # "insistent":Z
    .local v2, "effect":Landroid/os/VibrationEffect;
    nop

    .line 6364
    if-eqz p3, :cond_2f

    .line 6365
    :try_start_21
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$IYb2LsvzgH956pBM2VntPM0-21A;

    invoke-direct {v5, p0, p1, v2}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$IYb2LsvzgH956pBM2VntPM0-21A;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6393
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_47

    .line 6407
    :cond_2f
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Notification"

    .line 6408
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v10

    .line 6407
    move-object v8, v2

    invoke-virtual/range {v5 .. v10}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V
    :try_end_47
    .catchall {:try_start_21 .. :try_end_47} :catchall_4c

    .line 6412
    :goto_47
    nop

    .line 6414
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6412
    return v4

    .line 6414
    .end local v2  # "effect":Landroid/os/VibrationEffect;
    :catchall_4c
    move-exception v2

    goto :goto_6e

    .line 6359
    :catch_4e
    move-exception v3

    .line 6360
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4f
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating vibration waveform with pattern: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6361
    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6360
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_4f .. :try_end_69} :catchall_4c

    .line 6362
    nop

    .line 6414
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6362
    return v2

    .line 6414
    .end local v3  # "e":Ljava/lang/IllegalArgumentException;
    :goto_6e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private postDelayNotiLightFlashing()V
    .registers 10

    .line 9254
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_1d

    .line 9255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notification setFlashing delay 15s mNotificationPulseEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9264
    :cond_1d
    monitor-enter p0

    .line 9265
    :try_start_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_ad

    .line 9268
    .local v0, "identity":J
    :try_start_22
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mFlashSender:Landroid/app/PendingIntent;

    if-eqz v2, :cond_34

    .line 9269
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mFlashSender:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 9271
    const-string v2, "LedTest"

    const-string v3, "cancel braodcast"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9274
    :cond_34
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->isLedDoubleFlash()Z

    move-result v2

    .line 9276
    .local v2, "ledDoubleFlash":Z
    const-string v3, "LedTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ledDoubleFlash = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9278
    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mBreathLightOn:Z

    if-eqz v3, :cond_66

    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mBreathLightOn:Z

    if-eqz v3, :cond_5e

    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mBreathLightDoubleFlashing:Z

    if-nez v3, :cond_5e

    if-eqz v2, :cond_5e

    goto :goto_66

    .line 9293
    :cond_5e
    const-string v3, "LedTest"

    const-string v4, "breath light is already flashing, do NOT wakeup again."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 9281
    :cond_66
    :goto_66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3a98

    add-long/2addr v3, v5

    .line 9282
    .local v3, "whenToStartBreath":J
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.server.notification"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9283
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "ledDoubleFlash"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9285
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x10000000

    const/4 v8, 0x0

    invoke-static {v6, v8, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 9287
    .local v6, "sender":Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v7, v8, v3, v4, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 9288
    iput-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mFlashSender:Landroid/app/PendingIntent;

    .line 9290
    const-string v7, "LedTest"

    const-string v8, "breath light broadcast send!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_93} :catch_9a
    .catchall {:try_start_22 .. :try_end_93} :catchall_98

    .line 9291
    nop

    .line 9299
    .end local v2  # "ledDoubleFlash":Z
    .end local v3  # "whenToStartBreath":J
    .end local v5  # "intent":Landroid/content/Intent;
    .end local v6  # "sender":Landroid/app/PendingIntent;
    :goto_94
    :try_start_94
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_ad

    goto :goto_a6

    :catchall_98
    move-exception v2

    goto :goto_a9

    .line 9295
    :catch_9a
    move-exception v2

    .line 9297
    .local v2, "e":Ljava/lang/Exception;
    :try_start_9b
    const-string v3, "LedTest"

    const-string v4, "breath light broadcast send failed..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_98

    .line 9299
    nop

    .end local v2  # "e":Ljava/lang/Exception;
    :try_start_a3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9300
    :goto_a6
    nop

    .line 9301
    .end local v0  # "identity":J
    monitor-exit p0

    .line 9303
    return-void

    .line 9299
    .restart local v0  # "identity":J
    :goto_a9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService;
    throw v2

    .line 9301
    .end local v0  # "identity":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService;
    :catchall_ad
    move-exception v0

    monitor-exit p0
    :try_end_af
    .catchall {:try_start_a3 .. :try_end_af} :catchall_ad

    throw v0
.end method

.method private proximityChangedLocked(Z)V
    .registers 4
    .param p1, "active"  # Z

    .line 9173
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mProximitySensorEnabled:Z

    const-string v1, "NotiWakeupScreen"

    if-nez v0, :cond_c

    .line 9174
    const-string v0, "Ignoring proximity change after sensor is disabled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9175
    return-void

    .line 9178
    :cond_c
    const-string/jumbo v0, "proximityChangedLocked()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9180
    if-eqz p1, :cond_21

    .line 9181
    const-string v0, "active!!! mHandler.removeCallbacks(mWakeUpScreenRunnable)()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9182
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mWakeUpScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_27

    .line 9184
    :cond_21
    const-string/jumbo v0, "no active! go on wakup!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9187
    :goto_27
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->disableProximityLockLocked()V

    .line 9188
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableProximityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9189
    return-void
.end method

.method private recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6719
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6720
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->recordCaller(Lcom/android/server/notification/NotificationRecord;)V

    .line 6722
    :cond_d
    return-void
.end method

.method private registerBreathLight()V
    .registers 4

    .line 9199
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 9200
    .local v0, "filterBreathLight":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.notification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9201
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mBreathLightReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9202
    return-void
.end method

.method private registerDeviceConfigChange()V
    .registers 4

    .line 1984
    nop

    .line 1986
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NFdAeB-4Fj_ZP4GXkIVrEH_Cxj8;

    invoke-direct {v1, p0}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NFdAeB-4Fj_ZP4GXkIVrEH_Cxj8;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1984
    const-string/jumbo v2, "systemui"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1996
    return-void
.end method

.method private registerShutdownBroadcast()V
    .registers 4

    .line 9205
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 9206
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9207
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9208
    return-void
.end method

.method private removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 3
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 2212
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v0

    return v0
.end method

.method private removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .registers 8
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"  # I

    .line 2216
    const/4 v0, 0x0

    .line 2218
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_29

    .line 2219
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2220
    .local v2, "hint":I
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 2222
    .local v3, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz p2, :cond_1f

    and-int v4, v2, p2

    if-ne v4, v2, :cond_26

    .line 2223
    :cond_1f
    iget-object v4, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 2218
    .end local v2  # "hint":I
    .end local v3  # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2227
    .end local v1  # "i":I
    :cond_29
    return v0
.end method

.method private removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 6
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6909
    const/4 v0, 0x0

    .line 6910
    .local v0, "wasPosted":Z
    const/4 v1, 0x0

    .line 6911
    .local v1, "recordInList":Lcom/android/server/notification/NotificationRecord;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_20

    .line 6913
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6914
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v3, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6915
    const/4 v0, 0x1

    .line 6917
    :cond_20
    :goto_20
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_33

    .line 6919
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_20

    .line 6921
    :cond_33
    return v0
.end method

.method private revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .registers 10
    .param p1, "owner"  # Landroid/os/IBinder;
    .param p2, "uri"  # Landroid/net/Uri;
    .param p3, "sourceUid"  # I

    .line 7141
    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2f

    .line 7143
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7145
    .local v0, "ident":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 7147
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    .line 7149
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {p2, v5}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    .line 7145
    invoke-interface {v2, p1, v3, v4, v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_2a

    .line 7151
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7152
    nop

    .line 7153
    return-void

    .line 7151
    :catchall_2a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 7141
    .end local v0  # "ident":J
    :cond_2f
    :goto_2f
    return-void
.end method

.method private static safeBoolean(Ljava/lang/String;Z)Z
    .registers 3
    .param p0, "val"  # Ljava/lang/String;
    .param p1, "defValue"  # Z

    .line 9007
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return p1

    .line 9008
    :cond_7
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private scheduleDurationReachedLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 7
    .param p1, "r"  # Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 6530
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6531
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6532
    .local v0, "m":Landroid/os/Message;
    iget v2, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    const/16 v2, 0xdac

    goto :goto_16

    :cond_14
    const/16 v2, 0x7d0

    .line 6536
    .local v2, "delay":I
    :goto_16
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    .line 6538
    .end local v2  # "delay":I
    .local v1, "delay":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    int-to-long v3, v1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6539
    return-void
.end method

.method private scheduleInterruptionFilterChanged(I)V
    .registers 5
    .param p1, "listenerInterruptionFilter"  # I

    .line 6753
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 6754
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 6757
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6758
    return-void
.end method

.method private scheduleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 6555
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6556
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6557
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const-wide/16 v2, 0x2af8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6558
    return-void
.end method

.method private scheduleListenerHintsChanged(I)V
    .registers 5
    .param p1, "state"  # I

    .line 6748
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 6749
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6750
    return-void
.end method

.method private sendRegisteredOnlyBroadcast(Ljava/lang/String;)V
    .registers 8
    .param p1, "action"  # Ljava/lang/String;

    .line 2032
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2033
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000  # 2.0f

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2036
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2037
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v1}, Lcom/android/server/notification/ConditionProviders;->getAllowedPackages()Ljava/util/Set;

    move-result-object v1

    .line 2038
    .local v1, "dndApprovedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2039
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2040
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2041
    .end local v3  # "pkg":Ljava/lang/String;
    goto :goto_23

    .line 2042
    :cond_3c
    return-void
.end method

.method private shouldShowLights(Landroid/service/notification/StatusBarNotification;)Z
    .registers 5
    .param p1, "sbn"  # Landroid/service/notification/StatusBarNotification;

    .line 9352
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "lock_screen_show_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 9354
    .local v0, "value":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1b

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isKeyguardPeriodNotification()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 9355
    const/4 v1, 0x0

    return v1

    .line 9357
    :cond_1b
    return v1
.end method

.method private showWakeUpScreen(Lcom/android/server/notification/NotificationRecord;Z)Z
    .registers 8
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "aboveThreshold"  # Z

    .line 9307
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 9309
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 9310
    .local v1, "notification":Landroid/app/Notification;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showWakeUpScreen: aboveThreshold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",DND="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9311
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",isUpdate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",alertOnce="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",noClear="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",onGoing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "userFilter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v3, v3, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget v3, v3, Landroid/service/notification/StatusBarNotification$Filter;->userFilter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9310
    const-string v3, "NotificationService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9320
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, v2, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget v2, v2, Landroid/service/notification/StatusBarNotification$Filter;->userFilter:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7c

    .line 9321
    return v0

    .line 9325
    :cond_7c
    if-nez p2, :cond_7f

    .line 9326
    return v0

    .line 9329
    :cond_7f
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v2

    and-int/2addr v2, v3

    if-eqz v2, :cond_87

    .line 9330
    return v0

    .line 9333
    :cond_87
    iget-boolean v2, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v2, :cond_97

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_ab

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_ab

    :cond_97
    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_ac

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 9338
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.tencent.mobileqq"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ac

    .line 9341
    :cond_ab
    return v0

    .line 9344
    :cond_ac
    iget-object v2, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string/jumbo v4, "transport"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 9345
    return v0

    .line 9348
    :cond_b8
    return v3
.end method

.method private turnOffBreathLight()V
    .registers 3

    .line 9212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mBreathLightOn:Z

    .line 9213
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mBreathLightDoubleFlashing:Z

    .line 9215
    :try_start_5
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 9218
    goto :goto_f

    .line 9216
    :catch_b
    move-exception v0

    .line 9217
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9220
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_f
    const-string v0, "LedTest"

    const-string/jumbo v1, "mNotificationLight.turnOffFlick() && turnOffDoubleFlick() called!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9226
    return-void
.end method

.method private turnOnBreathLight(Z)V
    .registers 6
    .param p1, "ledDoubleFlash"  # Z

    .line 9230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mBreathLightOn:Z

    .line 9231
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mBreathLightDoubleFlashing:Z

    .line 9232
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    const/16 v2, 0x1f4

    const/16 v3, 0x800

    invoke-virtual {v1, v3, v0, v2, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 9234
    const-string v0, "LedTest"

    const-string/jumbo v1, "mNotificationLight.turnOnFlick() called!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9240
    return-void
.end method

.method private updateEffectsSuppressorLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 2085
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateSuppressedEffects()J

    move-result-wide v0

    .line 2086
    .local v0, "updatedSuppressedEffects":J
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getSuppressedEffects()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    return-void

    .line 2087
    :cond_f
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->getSuppressors()Ljava/util/ArrayList;

    move-result-object v2

    .line 2088
    .local v2, "suppressors":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-static {v3, v2, v0, v1}, Lcom/android/server/notification/ZenLog;->traceEffectsSuppressorChanged(Ljava/util/List;Ljava/util/List;J)V

    .line 2089
    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 2090
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setSuppressedEffects(J)V

    .line 2091
    const-string v3, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-direct {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    .line 2092
    return-void
.end method

.method private updateFlymeLauncherNotificationListenerAccess()V
    .registers 7

    .line 9603
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_41

    .line 9605
    const-string v0, "NotificationService"

    const-string/jumbo v3, "updateFlymeLauncherNotificationListenerAccess"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9606
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/high16 v3, 0xc0000

    .line 9607
    const-string v4, "com.meizu.flyme.launcher"

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->queryPackageForServices(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v0

    .line 9610
    .local v0, "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 9612
    .local v4, "cn":Landroid/content/ComponentName;
    :try_start_34
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v5

    invoke-interface {v5, v4, v1, v2}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3b} :catch_3c

    .line 9616
    goto :goto_40

    .line 9614
    :catch_3c
    move-exception v5

    .line 9615
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 9617
    .end local v4  # "cn":Landroid/content/ComponentName;
    .end local v5  # "e":Landroid/os/RemoteException;
    :goto_40
    goto :goto_28

    .line 9619
    .end local v0  # "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_41
    return-void
.end method

.method private updateInterruptionFilterLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 2288
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    .line 2289
    .local v0, "interruptionFilter":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    if-ne v0, v1, :cond_b

    return-void

    .line 2290
    :cond_b
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 2291
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleInterruptionFilterChanged(I)V

    .line 2292
    return-void
.end method

.method private updateListenerHintsLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 2076
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result v0

    .line 2077
    .local v0, "hints":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    if-ne v0, v1, :cond_9

    return-void

    .line 2078
    :cond_9
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/server/notification/ZenLog;->traceListenerHintsChanged(III)V

    .line 2079
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 2080
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleListenerHintsChanged(I)V

    .line 2081
    return-void
.end method

.method private updateNotificationChannelInt(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .registers 25
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "channel"  # Landroid/app/NotificationChannel;
    .param p4, "fromListener"  # Z

    .line 2105
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_68

    .line 2107
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2108
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/16 v9, 0x11

    const/4 v10, 0x0

    .line 2107
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 2110
    invoke-virtual {v11, v13}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2111
    iget-object v0, v11, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v15

    .line 2112
    .local v15, "profileIds":Landroid/util/IntArray;
    invoke-virtual {v15}, Landroid/util/IntArray;->size()I

    move-result v10

    .line 2113
    .local v10, "N":I
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_39
    if-ge v9, v10, :cond_64

    .line 2114
    invoke-virtual {v15, v9}, Landroid/util/IntArray;->get(I)I

    move-result v16

    .line 2115
    .local v16, "profileId":I
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

    move/from16 v8, v16

    move/from16 v19, v9

    .end local v9  # "i":I
    .local v19, "i":I
    move/from16 v9, v17

    move/from16 v17, v10

    .end local v10  # "N":I
    .local v17, "N":I
    move-object/from16 v10, v18

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 2113
    .end local v16  # "profileId":I
    add-int/lit8 v9, v19, 0x1

    move/from16 v10, v17

    .end local v19  # "i":I
    .restart local v9  # "i":I
    goto :goto_39

    .end local v17  # "N":I
    .restart local v10  # "N":I
    :cond_64
    move/from16 v19, v9

    move/from16 v17, v10

    .line 2121
    .end local v9  # "i":I
    .end local v10  # "N":I
    .end local v15  # "profileIds":Landroid/util/IntArray;
    :cond_68
    iget-object v0, v11, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 2122
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 2124
    .local v0, "preUpdate":Landroid/app/NotificationChannel;
    iget-object v1, v11, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, v12, v13, v14, v2}, Lcom/android/server/notification/PreferencesHelper;->updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    .line 2125
    invoke-direct {v11, v12, v13, v0, v14}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifyChannelOwner(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    .line 2127
    if-nez p4, :cond_92

    .line 2128
    iget-object v1, v11, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 2129
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v12, v13, v2, v3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 2130
    .local v1, "modifiedChannel":Landroid/app/NotificationChannel;
    iget-object v2, v11, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 2131
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x2

    .line 2130
    invoke-virtual {v2, v12, v3, v1, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 2135
    .end local v1  # "modifiedChannel":Landroid/app/NotificationChannel;
    :cond_92
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2136
    return-void
.end method

.method private updateNotificationPulse()V
    .registers 3

    .line 7552
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7553
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 7554
    monitor-exit v0

    .line 7555
    return-void

    .line 7554
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private wakeUpScreen()V
    .registers 4

    .line 9065
    monitor-enter p0

    .line 9066
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 9067
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 9069
    :cond_e
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 9071
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 9072
    const-string v0, "NotiWakeupScreen"

    const-string/jumbo v1, "wakeUpScreen() -- mWakeLock.acquire(1)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9073
    monitor-exit p0

    .line 9074
    return-void

    .line 9073
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method private writePolicyXml(Ljava/io/OutputStream;ZI)V
    .registers 9
    .param p1, "stream"  # Ljava/io/OutputStream;
    .param p2, "forBackup"  # Z
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 708
    .local v0, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 709
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 710
    const-string/jumbo v2, "notification-policy"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 711
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "version"

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 712
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, v0, p2, v3, p3}, Lcom/android/server/notification/ZenModeHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/Integer;I)V

    .line 713
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;ZI)V

    .line 714
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->writeXml(Lorg/xmlpull/v1/XmlSerializer;ZI)V

    .line 715
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->writeXml(Lorg/xmlpull/v1/XmlSerializer;ZI)V

    .line 716
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/notification/ConditionProviders;->writeXml(Lorg/xmlpull/v1/XmlSerializer;ZI)V

    .line 717
    if-eqz p2, :cond_44

    if-nez p3, :cond_47

    .line 718
    :cond_44
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->writeSecureNotificationsPolicy(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 720
    :cond_47
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 721
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 722
    return-void
.end method

.method private writeSecureNotificationsPolicy(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9000
    const-string v0, "allow-secure-notifications-on-lockscreen"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9001
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    .line 9002
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 9001
    const-string/jumbo v3, "value"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9003
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9004
    return-void
.end method


# virtual methods
.method addAutogroupKeyLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 4478
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 4479
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_b

    .line 4480
    return-void

    .line 4482
    :cond_b
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    .line 4483
    const-string/jumbo v1, "ranker_group"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 4484
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationAutogrouped(Ljava/lang/String;)V

    .line 4485
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v1}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 4487
    :cond_21
    return-void
.end method

.method addEnqueuedNotification(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1652
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1653
    return-void
.end method

.method addNotification(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1643
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1644
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1646
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    :cond_21
    return-void
.end method

.method buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 22
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6093
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    if-eqz v2, :cond_d

    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationEffectsEnabledForAutomotive:Z

    if-nez v2, :cond_d

    .line 6094
    return-void

    .line 6096
    :cond_d
    const/4 v2, 0x0

    .line 6097
    .local v2, "buzz":Z
    const/4 v3, 0x0

    .line 6098
    .local v3, "beep":Z
    const/4 v4, 0x0

    .line 6100
    .local v4, "blink":Z
    iget-object v5, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 6101
    .local v5, "notification":Landroid/app/Notification;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 6105
    .local v6, "key":Ljava/lang/String;
    iget-boolean v7, v0, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    const/4 v8, 0x3

    const/4 v10, 0x1

    if-eqz v7, :cond_2a

    .line 6106
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v7

    if-le v7, v8, :cond_28

    move v7, v10

    goto :goto_3a

    :cond_28
    const/4 v7, 0x0

    goto :goto_3a

    .line 6109
    :cond_2a
    nop

    .line 6107
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v7

    if-lt v7, v8, :cond_39

    .line 6109
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isDisableRemind()Z

    move-result v7

    if-nez v7, :cond_39

    move v7, v10

    goto :goto_3a

    :cond_39
    const/4 v7, 0x0

    :goto_3a
    nop

    .line 6113
    .local v7, "aboveThreshold":Z
    if-eqz v6, :cond_47

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_47

    move v8, v10

    goto :goto_48

    :cond_47
    const/4 v8, 0x0

    .line 6114
    .local v8, "wasBeep":Z
    :goto_48
    if-eqz v6, :cond_54

    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_54

    move v11, v10

    goto :goto_55

    :cond_54
    const/4 v11, 0x0

    .line 6116
    .local v11, "wasBuzz":Z
    :goto_55
    const/4 v12, 0x0

    .line 6117
    .local v12, "hasValidVibrate":Z
    const/4 v13, 0x0

    .line 6118
    .local v13, "hasValidSound":Z
    const/4 v14, 0x0

    .line 6121
    .local v14, "sentAccessibilityEvent":Z
    iget-boolean v15, v1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-nez v15, :cond_6c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v15

    if-le v15, v10, :cond_6c

    .line 6122
    iget-object v15, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v5, v15}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 6123
    const/4 v14, 0x1

    .line 6126
    :cond_6c
    const-string v9, "NotificationService"

    if-eqz v7, :cond_13d

    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v16

    if-eqz v16, :cond_13d

    .line 6128
    iget-boolean v15, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    if-eqz v15, :cond_137

    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v15, :cond_137

    .line 6129
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v15

    .line 6130
    .local v15, "soundUri":Landroid/net/Uri;
    if-eqz v15, :cond_8e

    sget-object v10, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v10, v15}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8e

    const/4 v10, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v10, 0x0

    :goto_8f
    move v13, v10

    .line 6131
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getVibration()[J

    move-result-object v10

    .line 6133
    .local v10, "vibration":[J
    if-nez v10, :cond_b8

    if-eqz v13, :cond_b8

    move/from16 v17, v2

    .end local v2  # "buzz":Z
    .local v17, "buzz":Z
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 6135
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    move/from16 v18, v3

    const/4 v3, 0x1

    .end local v3  # "beep":Z
    .local v18, "beep":Z
    if-ne v2, v3, :cond_bc

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 6138
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v3

    .line 6137
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_bc

    .line 6139
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    goto :goto_bc

    .line 6133
    .end local v17  # "buzz":Z
    .end local v18  # "beep":Z
    .restart local v2  # "buzz":Z
    .restart local v3  # "beep":Z
    :cond_b8
    move/from16 v17, v2

    move/from16 v18, v3

    .line 6141
    .end local v2  # "buzz":Z
    .end local v3  # "beep":Z
    .restart local v17  # "buzz":Z
    .restart local v18  # "beep":Z
    :cond_bc
    :goto_bc
    if-eqz v10, :cond_c0

    const/4 v2, 0x1

    goto :goto_c1

    :cond_c0
    const/4 v2, 0x0

    :goto_c1
    move v12, v2

    .line 6143
    if-nez v13, :cond_c9

    if-eqz v12, :cond_c7

    goto :goto_c9

    :cond_c7
    const/4 v2, 0x0

    goto :goto_ca

    :cond_c9
    :goto_c9
    const/4 v2, 0x1

    .line 6144
    .local v2, "hasAudibleAlert":Z
    :goto_ca
    if-eqz v2, :cond_12b

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    if-nez v3, :cond_12b

    .line 6145
    if-nez v14, :cond_df

    .line 6146
    iget-object v3, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 6147
    const/4 v3, 0x1

    move v14, v3

    .line 6149
    :cond_df
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_e8

    const-string v3, "Interrupting!"

    invoke-static {v9, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6150
    :cond_e8
    if-eqz v13, :cond_fc

    .line 6151
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-eqz v3, :cond_f3

    .line 6152
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->playInCallNotification()V

    .line 6153
    const/4 v3, 0x1

    .end local v18  # "beep":Z
    .restart local v3  # "beep":Z
    goto :goto_f7

    .line 6155
    .end local v3  # "beep":Z
    .restart local v18  # "beep":Z
    :cond_f3
    invoke-direct {v0, v1, v15}, Lcom/android/server/notification/NotificationManagerService;->playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)Z

    move-result v3

    .line 6157
    .end local v18  # "beep":Z
    .restart local v3  # "beep":Z
    :goto_f7
    if-eqz v3, :cond_fe

    .line 6158
    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    goto :goto_fe

    .line 6150
    .end local v3  # "beep":Z
    .restart local v18  # "beep":Z
    :cond_fc
    move/from16 v3, v18

    .line 6162
    .end local v18  # "beep":Z
    .restart local v3  # "beep":Z
    :cond_fe
    :goto_fe
    move/from16 v19, v2

    .end local v2  # "hasAudibleAlert":Z
    .local v19, "hasAudibleAlert":Z
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 6163
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    if-nez v2, :cond_10a

    const/4 v2, 0x1

    goto :goto_10b

    :cond_10a
    const/4 v2, 0x0

    .line 6165
    .local v2, "ringerModeSilent":Z
    :goto_10b
    move/from16 v18, v3

    .end local v3  # "beep":Z
    .restart local v18  # "beep":Z
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-nez v3, :cond_125

    if-eqz v12, :cond_125

    if-nez v2, :cond_125

    .line 6167
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->isVibrateOn()Z

    move-result v3

    if-eqz v3, :cond_125

    .line 6177
    invoke-direct {v0, v1, v10, v13}, Lcom/android/server/notification/NotificationManagerService;->playVibration(Lcom/android/server/notification/NotificationRecord;[JZ)Z

    move-result v3

    .line 6178
    .end local v17  # "buzz":Z
    .local v3, "buzz":Z
    if-eqz v3, :cond_123

    .line 6179
    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 6182
    .end local v2  # "ringerModeSilent":Z
    :cond_123
    move v2, v3

    goto :goto_127

    .end local v3  # "buzz":Z
    .restart local v17  # "buzz":Z
    :cond_125
    move/from16 v2, v17

    .end local v17  # "buzz":Z
    .local v2, "buzz":Z
    :goto_127
    move/from16 v17, v2

    const/4 v3, 0x4

    goto :goto_142

    .line 6144
    .end local v19  # "hasAudibleAlert":Z
    .local v2, "hasAudibleAlert":Z
    .restart local v17  # "buzz":Z
    :cond_12b
    move/from16 v19, v2

    .line 6182
    .end local v2  # "hasAudibleAlert":Z
    .restart local v19  # "hasAudibleAlert":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v2

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_142

    .line 6183
    const/4 v13, 0x0

    goto :goto_142

    .line 6128
    .end local v10  # "vibration":[J
    .end local v15  # "soundUri":Landroid/net/Uri;
    .end local v17  # "buzz":Z
    .end local v18  # "beep":Z
    .end local v19  # "hasAudibleAlert":Z
    .local v2, "buzz":Z
    .local v3, "beep":Z
    :cond_137
    move/from16 v17, v2

    move/from16 v18, v3

    const/4 v3, 0x4

    .end local v2  # "buzz":Z
    .end local v3  # "beep":Z
    .restart local v17  # "buzz":Z
    .restart local v18  # "beep":Z
    goto :goto_142

    .line 6126
    .end local v17  # "buzz":Z
    .end local v18  # "beep":Z
    .restart local v2  # "buzz":Z
    .restart local v3  # "beep":Z
    :cond_13d
    move/from16 v17, v2

    move/from16 v18, v3

    const/4 v3, 0x4

    .line 6189
    .end local v2  # "buzz":Z
    .end local v3  # "beep":Z
    .restart local v17  # "buzz":Z
    .restart local v18  # "beep":Z
    :cond_142
    :goto_142
    if-eqz v8, :cond_149

    if-nez v13, :cond_149

    .line 6190
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    .line 6192
    :cond_149
    if-eqz v11, :cond_150

    if-nez v12, :cond_150

    .line 6193
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    .line 6198
    :cond_150
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 6199
    .local v2, "wasShowLights":Z
    invoke-virtual {v0, v1, v7}, Lcom/android/server/notification/NotificationManagerService;->canShowLightsLocked(Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v10

    if-eqz v10, :cond_16f

    .line 6200
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6201
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 6202
    iget-boolean v10, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    if-eqz v10, :cond_16d

    .line 6203
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    invoke-virtual {v10}, Lcom/android/server/lights/Light;->pulse()V

    .line 6205
    :cond_16d
    const/4 v4, 0x1

    goto :goto_174

    .line 6206
    :cond_16f
    if-eqz v2, :cond_174

    .line 6207
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 6209
    :cond_174
    :goto_174
    if-nez v17, :cond_17e

    if-nez v18, :cond_17e

    if-eqz v4, :cond_17b

    goto :goto_17e

    :cond_17b
    const/4 v9, 0x1

    goto/16 :goto_214

    .line 6211
    :cond_17e
    :goto_17e
    iget-object v10, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v10

    const-string v15, "INTERRUPTIVENESS: "

    if-eqz v10, :cond_1b7

    iget-object v10, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v10

    if-eqz v10, :cond_1b7

    .line 6212
    sget-boolean v10, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v10, :cond_1b5

    .line 6213
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6214
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is not interruptive: summary"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 6213
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    goto :goto_1da

    .line 6212
    :cond_1b5
    const/4 v9, 0x1

    goto :goto_1da

    .line 6217
    :cond_1b7
    sget-boolean v10, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v10, :cond_1d6

    .line 6218
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6219
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is interruptive: alerted"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 6218
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6221
    :cond_1d6
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 6223
    :goto_1da
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v10

    const/16 v15, 0xc7

    .line 6224
    invoke-virtual {v10, v15}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v10

    .line 6225
    invoke-virtual {v10, v9}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v10

    .line 6226
    if-eqz v17, :cond_1ec

    move v15, v9

    goto :goto_1ed

    :cond_1ec
    const/4 v15, 0x0

    :goto_1ed
    if-eqz v18, :cond_1f2

    const/16 v16, 0x2

    goto :goto_1f4

    :cond_1f2
    const/16 v16, 0x0

    :goto_1f4
    or-int v15, v15, v16

    if-eqz v4, :cond_1f9

    goto :goto_1fa

    :cond_1f9
    const/4 v3, 0x0

    :goto_1fa
    or-int/2addr v3, v15

    invoke-virtual {v10, v3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 6223
    invoke-static {v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 6227
    if-eqz v17, :cond_206

    move v3, v9

    goto :goto_207

    :cond_206
    const/4 v3, 0x0

    :goto_207
    if-eqz v18, :cond_20b

    move v10, v9

    goto :goto_20c

    :cond_20b
    const/4 v10, 0x0

    :goto_20c
    if-eqz v4, :cond_210

    move v15, v9

    goto :goto_211

    :cond_210
    const/4 v15, 0x0

    :goto_211
    invoke-static {v6, v3, v10, v15}, Lcom/android/server/EventLogTags;->writeNotificationAlert(Ljava/lang/String;III)V

    .line 6229
    :goto_214
    if-nez v17, :cond_21a

    if-eqz v18, :cond_219

    goto :goto_21a

    :cond_219
    const/4 v9, 0x0

    :cond_21a
    :goto_21a
    invoke-virtual {v1, v9}, Lcom/android/server/notification/NotificationRecord;->setAudiblyAlerted(Z)V

    .line 6232
    invoke-direct {v0, v1, v7}, Lcom/android/server/notification/NotificationManagerService;->showWakeUpScreen(Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v3

    if-eqz v3, :cond_22e

    .line 6233
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v9, v0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    iget-boolean v10, v0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    invoke-static {v1, v3, v9, v10, v0}, Lcom/android/server/notification/NotificationManagerService$NMSInjector;->NotiWakeupScreen(Lcom/android/server/notification/NotificationRecord;Landroid/content/Context;ZZLcom/android/server/notification/NotificationManagerService;)V

    .line 6236
    :cond_22e
    return-void
.end method

.method protected calculateSuppressedVisualEffects(Landroid/app/NotificationManager$Policy;Landroid/app/NotificationManager$Policy;I)I
    .registers 9
    .param p1, "incomingPolicy"  # Landroid/app/NotificationManager$Policy;
    .param p2, "currPolicy"  # Landroid/app/NotificationManager$Policy;
    .param p3, "targetSdkVersion"  # I

    .line 2314
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 2315
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    return v0

    .line 2317
    :cond_8
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_68

    .line 2327
    .local v0, "effectsIntroducedInP":[I
    iget v1, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2328
    .local v1, "newSuppressedVisualEffects":I
    const/16 v2, 0x1c

    if-ge p3, v2, :cond_34

    .line 2330
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v3, v0

    if-ge v2, v3, :cond_25

    .line 2331
    aget v3, v0, v2

    not-int v3, v3

    and-int/2addr v1, v3

    .line 2332
    iget v3, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    aget v4, v0, v2

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 2330
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 2336
    .end local v2  # "i":I
    :cond_25
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2d

    .line 2337
    or-int/lit8 v1, v1, 0x8

    .line 2338
    or-int/lit8 v1, v1, 0x4

    .line 2340
    :cond_2d
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_66

    .line 2341
    or-int/lit8 v1, v1, 0x10

    goto :goto_66

    .line 2344
    :cond_34
    add-int/lit8 v2, v1, -0x2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lez v2, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v3, 0x0

    :goto_3c
    move v2, v3

    .line 2347
    .local v2, "hasNewEffects":Z
    if-eqz v2, :cond_56

    .line 2349
    and-int/lit8 v1, v1, -0x4

    .line 2353
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_47

    .line 2354
    or-int/lit8 v1, v1, 0x2

    .line 2356
    :cond_47
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_66

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_66

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_66

    .line 2361
    or-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 2365
    :cond_56
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_60

    .line 2366
    or-int/lit8 v1, v1, 0x8

    .line 2367
    or-int/lit8 v1, v1, 0x4

    .line 2368
    or-int/lit16 v1, v1, 0x80

    .line 2370
    :cond_60
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_66

    .line 2371
    or-int/lit8 v1, v1, 0x10

    .line 2376
    .end local v2  # "hasNewEffects":Z
    :cond_66
    :goto_66
    return v1

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
    .registers 14
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "pendingIntent"  # Landroid/app/PendingIntent;
    .param p3, "packageName"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5278
    const-string v0, "NotificationService"

    const/4 v1, 0x0

    if-nez p2, :cond_b

    .line 5279
    const-string v2, "Unable to create bubble -- no intent"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5280
    return v1

    .line 5284
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5287
    .local v2, "token":J
    :try_start_f
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_9c

    .line 5289
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5290
    nop

    .line 5292
    if-eqz v4, :cond_22

    .line 5293
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    goto :goto_23

    .line 5294
    :cond_22
    const/4 v5, 0x0

    :goto_23
    nop

    .line 5295
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x1

    const/16 v7, 0xad

    if-nez v5, :cond_41

    .line 5296
    invoke-static {v7, p3, v6}, Landroid/util/StatsLog;->write(ILjava/lang/String;I)I

    .line 5298
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to send as bubble -- couldn\'t find activity info for intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5300
    return v1

    .line 5302
    :cond_41
    iget v8, v5, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v8}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v8

    const/4 v9, 0x2

    if-nez v8, :cond_62

    .line 5303
    invoke-static {v7, p3, v9}, Landroid/util/StatsLog;->write(ILjava/lang/String;I)I

    .line 5305
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to send as bubble -- activity is not resizable for intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5307
    return v1

    .line 5309
    :cond_62
    iget v8, v5, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eq v8, v9, :cond_7f

    .line 5310
    const/4 v6, 0x3

    invoke-static {v7, p3, v6}, Landroid/util/StatsLog;->write(ILjava/lang/String;I)I

    .line 5312
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to send as bubble -- activity is not documentLaunchMode=always for intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5314
    return v1

    .line 5316
    :cond_7f
    iget v7, v5, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-nez v7, :cond_9b

    .line 5317
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to send as bubble -- activity is not embeddable for intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5319
    return v1

    .line 5321
    :cond_9b
    return v6

    .line 5289
    .end local v4  # "intent":Landroid/content/Intent;
    .end local v5  # "info":Landroid/content/pm/ActivityInfo;
    :catchall_9c
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method canShowLightsLocked(Lcom/android/server/notification/NotificationRecord;Z)Z
    .registers 8
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "aboveThreshold"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6241
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 6242
    return v1

    .line 6245
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-nez v0, :cond_b

    .line 6246
    return v1

    .line 6249
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v0

    if-nez v0, :cond_12

    .line 6250
    return v1

    .line 6253
    :cond_12
    if-nez p2, :cond_15

    .line 6254
    return v1

    .line 6257
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1e

    .line 6258
    return v1

    .line 6261
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 6262
    .local v0, "notification":Landroid/app/Notification;
    iget-boolean v2, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v2, :cond_2d

    iget v2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2d

    .line 6263
    return v1

    .line 6266
    :cond_2d
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 6267
    return v1

    .line 6276
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const-string/jumbo v4, "notification_show_lights"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_53

    .line 6278
    return v1

    .line 6281
    :cond_53
    return v3
.end method

.method canUseManagedServices(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Z
    .registers 10
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "userId"  # Ljava/lang/Integer;
    .param p3, "requiredPermission"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7817
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 7818
    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    move v0, v1

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    .line 7820
    .local v0, "canUseManagedServices":Z
    :goto_17
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_27
    if-ge v1, v3, :cond_35

    aget-object v4, v2, v1

    .line 7822
    .local v4, "whitelisted":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 7823
    const/4 v0, 0x1

    .line 7820
    .end local v4  # "whitelisted":Ljava/lang/String;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 7827
    :cond_35
    if-eqz p3, :cond_4d

    .line 7829
    :try_start_37
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p3, p1, v2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_41} :catch_45

    if-eqz v1, :cond_44

    .line 7831
    const/4 v0, 0x0

    .line 7835
    :cond_44
    goto :goto_4d

    .line 7833
    :catch_45
    move-exception v1

    .line 7834
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "NotificationService"

    const-string v3, "can\'t talk to pm"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7838
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_4d
    :goto_4d
    return v0
.end method

.method cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .registers 15
    .param p1, "callingUid"  # I
    .param p2, "callingPid"  # I
    .param p3, "userId"  # I
    .param p4, "reason"  # I
    .param p5, "listener"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p6, "includeCurrentProfiles"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7296
    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;ZI)V

    .line 7297
    return-void
.end method

.method cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;ZI)V
    .registers 20
    .param p1, "callingUid"  # I
    .param p2, "callingPid"  # I
    .param p3, "userId"  # I
    .param p4, "reason"  # I
    .param p5, "listener"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p6, "includeCurrentProfiles"  # Z
    .param p7, "from"  # I

    .line 9505
    move-object v9, p0

    iget-object v10, v9, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v11, Lcom/android/server/notification/NotificationManagerService$22;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService$22;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IIIIZI)V

    invoke-virtual {v10, v11}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 9537
    return-void
.end method

.method cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 26
    .param p1, "callingUid"  # I
    .param p2, "callingPid"  # I
    .param p3, "pkg"  # Ljava/lang/String;
    .param p4, "channelId"  # Ljava/lang/String;
    .param p5, "mustHaveFlags"  # I
    .param p6, "mustNotHaveFlags"  # I
    .param p7, "doit"  # Z
    .param p8, "userId"  # I
    .param p9, "reason"  # I
    .param p10, "listener"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7216
    move-object v12, p0

    iget-object v13, v12, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v14, Lcom/android/server/notification/NotificationManagerService$14;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p10

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p8

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p9

    move/from16 v10, p7

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService$14;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;IIIIZLjava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7252
    return-void
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 31
    .param p1, "callingUid"  # I
    .param p2, "callingPid"  # I
    .param p3, "pkg"  # Ljava/lang/String;
    .param p4, "tag"  # Ljava/lang/String;
    .param p5, "id"  # I
    .param p6, "mustHaveFlags"  # I
    .param p7, "mustNotHaveFlags"  # I
    .param p8, "sendDelete"  # Z
    .param p9, "userId"  # I
    .param p10, "reason"  # I
    .param p11, "rank"  # I
    .param p12, "count"  # I
    .param p13, "listener"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7180
    move-object/from16 v15, p0

    iget-object v14, v15, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v13, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    move-object v0, v13

    move-object/from16 v1, p0

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

    move-object v15, v13

    move/from16 v13, p12

    move-object/from16 v16, v15

    move-object v15, v14

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleCancelNotification(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V

    .line 7183
    return-void
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 26
    .param p1, "callingUid"  # I
    .param p2, "callingPid"  # I
    .param p3, "pkg"  # Ljava/lang/String;
    .param p4, "tag"  # Ljava/lang/String;
    .param p5, "id"  # I
    .param p6, "mustHaveFlags"  # I
    .param p7, "mustNotHaveFlags"  # I
    .param p8, "sendDelete"  # Z
    .param p9, "userId"  # I
    .param p10, "reason"  # I
    .param p11, "listener"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7163
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

    .line 7165
    return-void
.end method

.method cancelToastLocked(I)V
    .registers 8
    .param p1, "index"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 6488
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 6490
    .local v0, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :try_start_8
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v1}, Landroid/app/ITransientNotification;->hide()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    .line 6496
    goto :goto_31

    .line 6491
    :catch_e
    move-exception v1

    .line 6492
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object died trying to hide notification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6498
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_31
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 6500
    .local v1, "lastToast":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    const/4 v4, 0x0

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->displayId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 6507
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->scheduleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    .line 6509
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveIfNeededLocked(I)V

    .line 6510
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_56

    .line 6514
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked()V

    .line 6516
    :cond_56
    return-void
.end method

.method clearNotifications()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1635
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1636
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1637
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1638
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1639
    return-void
.end method

.method dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 13
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "filter"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 4739
    const-string v0, "Current Notification Manager state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4740
    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v0, :cond_16

    .line 4741
    const-string v0, " (filtered to "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4743
    :cond_16
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 4745
    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    move v0, v1

    .line 4747
    .local v0, "zenOnly":Z
    :goto_27
    if-nez v0, :cond_56

    .line 4748
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 4749
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4750
    .local v3, "N":I
    if-lez v3, :cond_51

    .line 4751
    const-string v4, "  Toast Queue:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4752
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3a
    if-ge v4, v3, :cond_4c

    .line 4753
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    const-string v6, "    "

    invoke-virtual {v5, p1, v6, p2}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4752
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 4755
    .end local v4  # "i":I
    :cond_4c
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4757
    :cond_51
    monitor-exit v2

    goto :goto_56

    .end local v3  # "N":I
    :catchall_53
    move-exception v1

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_2c .. :try_end_55} :catchall_53

    throw v1

    .line 4760
    :cond_56
    :goto_56
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4761
    if-nez v0, :cond_1ff

    .line 4764
    :try_start_5b
    iget-boolean v3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    if-nez v3, :cond_62

    .line 4765
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4767
    :cond_62
    iget-boolean v3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-nez v3, :cond_162

    .line 4768
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4769
    .restart local v3  # "N":I
    if-lez v3, :cond_98

    .line 4770
    const-string v4, "  Lights List:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4771
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_74
    if-ge v4, v3, :cond_93

    .line 4772
    add-int/lit8 v5, v3, -0x1

    if-ne v4, v5, :cond_80

    .line 4773
    const-string v5, "  > "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_85

    .line 4775
    :cond_80
    const-string v5, "    "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4777
    :goto_85
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4771
    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    .line 4779
    .end local v4  # "i":I
    :cond_93
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4781
    :cond_98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mUseAttentionLight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4782
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mHasLight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4783
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mNotificationPulseEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4784
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSoundNotificationKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4785
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mVibrateNotificationKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4786
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisableNotificationEffects="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4787
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4788
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSystemReady="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4789
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMaxPackageEnqueueRate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4791
    .end local v3  # "N":I
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

    .line 4792
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4793
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    nop

    .line 4794
    .local v1, "j":I
    :goto_183
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1bc

    .line 4795
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/StatusBarNotification;

    .line 4796
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-nez v5, :cond_196

    goto :goto_183

    .line 4797
    :cond_196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4798
    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x5

    if-lt v1, v5, :cond_1bb

    .line 4799
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1bc

    const-string v5, "    ..."

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1bc

    .line 4802
    .end local v4  # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1bb
    goto :goto_183

    .line 4804
    :cond_1bc
    :goto_1bc
    if-nez v0, :cond_1ff

    .line 4805
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4806
    .local v4, "N":I
    if-lez v4, :cond_1f6

    .line 4807
    const-string v5, "  Enqueued Notification List:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4808
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1cc
    if-ge v5, v4, :cond_1f1

    .line 4809
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 4810
    .local v6, "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v7, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v7, :cond_1e3

    iget-object v7, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v7}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    if-nez v7, :cond_1e3

    goto :goto_1ee

    .line 4811
    :cond_1e3
    const-string v7, "    "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-boolean v9, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v6, p1, v7, v8, v9}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 4808
    .end local v6  # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_1ee
    add-int/lit8 v5, v5, 0x1

    goto :goto_1cc

    .line 4813
    .end local v5  # "i":I
    :cond_1f1
    const-string v5, "  "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4816
    :cond_1f6
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_1ff

    .line 4879
    .end local v1  # "j":I
    .end local v3  # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    .end local v4  # "N":I
    :catchall_1fc
    move-exception v1

    goto/16 :goto_33b

    .line 4820
    :cond_1ff
    :goto_1ff
    if-nez v0, :cond_297

    .line 4821
    const-string v1, "\n  Ranking Config:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4822
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-string v3, "    "

    invoke-virtual {v1, p1, v3, p2}, Lcom/android/server/notification/RankingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4824
    const-string v1, "\n Notification Preferences:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4825
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const-string v3, "    "

    invoke-virtual {v1, p1, v3, p2}, Lcom/android/server/notification/PreferencesHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4827
    const-string v1, "\n  Notification listeners:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4828
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4829
    const-string v1, "    mListenerHints: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4830
    const-string v1, "    mListenersDisablingEffects: ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4831
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4832
    .local v1, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_239
    if-ge v3, v1, :cond_288

    .line 4833
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 4834
    .local v4, "hint":I
    if-lez v3, :cond_248

    const/16 v5, 0x3b

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 4835
    :cond_248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hint["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4837
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 4838
    .local v5, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 4840
    .local v6, "listenerSize":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_26e
    if-ge v7, v6, :cond_285

    .line 4841
    if-lez v7, :cond_277

    const/16 v8, 0x2c

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 4842
    :cond_277
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 4843
    .local v8, "listener":Landroid/content/ComponentName;
    if-eqz v8, :cond_282

    .line 4844
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4840
    .end local v8  # "listener":Landroid/content/ComponentName;
    :cond_282
    add-int/lit8 v7, v7, 0x1

    goto :goto_26e

    .line 4832
    .end local v4  # "hint":I
    .end local v5  # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v6  # "listenerSize":I
    .end local v7  # "j":I
    :cond_285
    add-int/lit8 v3, v3, 0x1

    goto :goto_239

    .line 4848
    .end local v3  # "i":I
    :cond_288
    const/16 v3, 0x29

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 4849
    const-string v3, "\n  Notification assistant services:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4850
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4853
    .end local v1  # "N":I
    :cond_297
    iget-boolean v1, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v1, :cond_29d

    if-eqz v0, :cond_2bd

    .line 4854
    :cond_29d
    const-string v1, "\n  Zen Mode:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4855
    const-string v1, "    mInterruptionFilter="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4856
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "    "

    invoke-virtual {v1, p1, v3}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4858
    const-string v1, "\n  Zen Log:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4859
    const-string v1, "    "

    invoke-static {p1, v1}, Lcom/android/server/notification/ZenLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4862
    :cond_2bd
    const-string v1, "\n  Condition providers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4863
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/ConditionProviders;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4865
    const-string v1, "\n  Group summaries:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4866
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

    .line 4867
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 4868
    .local v4, "r":Lcom/android/server/notification/NotificationRecord;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4869
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v4, :cond_32a

    .line 4870
    const-string v5, "!!!!!!LEAK: Record not found in mNotificationsByKey."

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4871
    const-string v5, "      "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-boolean v7, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 4873
    .end local v3  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v4  # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_32a
    goto :goto_2d6

    .line 4875
    :cond_32b
    if-nez v0, :cond_339

    .line 4876
    const-string v1, "\n  Usage Stats:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4877
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const-string v3, "    "

    invoke-virtual {v1, p1, v3, p2}, Lcom/android/server/notification/NotificationUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4879
    :cond_339
    monitor-exit v2

    .line 4880
    return-void

    .line 4879
    :goto_33b
    monitor-exit v2
    :try_end_33c
    .catchall {:try_start_5b .. :try_end_33c} :catchall_1fc

    throw v1
.end method

.method enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V
    .registers 41
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "opPkg"  # Ljava/lang/String;
    .param p3, "callingUid"  # I
    .param p4, "callingPid"  # I
    .param p5, "tag"  # Ljava/lang/String;
    .param p6, "id"  # I
    .param p7, "notification"  # Landroid/app/Notification;
    .param p8, "incomingUserId"  # I

    .line 4943
    move-object/from16 v8, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move/from16 v13, p3

    move/from16 v12, p6

    move-object/from16 v11, p7

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v1, " notification="

    const-string v2, " id="

    const-string v10, "NotificationService"

    if-eqz v0, :cond_36

    .line 4944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueNotificationInternal: pkg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4948
    :cond_36
    if-eqz v15, :cond_4be

    if-eqz v11, :cond_4be

    .line 4953
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "enqueueNotification"

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p8

    move-object/from16 v7, p1

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 4955
    .local v7, "userId":I
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v21

    .line 4959
    .local v21, "user":Landroid/os/UserHandle;
    invoke-virtual {v8, v14, v15, v13, v7}, Lcom/android/server/notification/NotificationManagerService;->resolveNotificationUid(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v6

    .line 4961
    .local v6, "notificationUid":I
    invoke-direct {v8, v11}, Lcom/android/server/notification/NotificationManagerService;->checkRestrictedCategories(Landroid/app/Notification;)V

    .line 4965
    :try_start_55
    invoke-virtual {v8, v11, v15, v7}, Lcom/android/server/notification/NotificationManagerService;->fixNotification(Landroid/app/Notification;Ljava/lang/String;I)V
    :try_end_58
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_55 .. :try_end_58} :catch_4af

    .line 4970
    nop

    .line 4972
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v15}, Lcom/android/server/notification/NotificationUsageStats;->registerEnqueuedByApp(Ljava/lang/String;)V

    .line 4975
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 4976
    .local v0, "channelId":Ljava/lang/String;
    iget-boolean v1, v8, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    if-eqz v1, :cond_7a

    new-instance v1, Landroid/app/Notification$TvExtender;

    invoke-direct {v1, v11}, Landroid/app/Notification$TvExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v1}, Landroid/app/Notification$TvExtender;->getChannelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7a

    .line 4977
    new-instance v1, Landroid/app/Notification$TvExtender;

    invoke-direct {v1, v11}, Landroid/app/Notification$TvExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v1}, Landroid/app/Notification$TvExtender;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 4979
    :cond_7a
    iget-object v1, v8, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v15, v6, v0, v2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v5

    .line 4981
    .local v5, "channel":Landroid/app/NotificationChannel;
    if-nez v5, :cond_110

    .line 4982
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Channel found for pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", channelId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", opPkg="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", callingUid="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", userId="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", incomingUserId="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p8

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notificationUid="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notification="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4993
    .local v1, "noChannelStr":Ljava/lang/String;
    invoke-static {v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4994
    iget-object v3, v8, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v3, v15, v6}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_ec

    const/4 v2, 0x1

    .line 4997
    .local v2, "appNotificationsOff":Z
    :cond_ec
    if-nez v2, :cond_10f

    .line 4998
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Developer warning for package \""

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\"\nFailed to post notification on channel \""

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\"\nSee log for more details"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/android/server/notification/NotificationManagerService;->doChannelWarningToast(Ljava/lang/CharSequence;)V

    .line 5002
    :cond_10f
    return-void

    .line 5005
    .end local v1  # "noChannelStr":Ljava/lang/String;
    .end local v2  # "appNotificationsOff":Z
    :cond_110
    move-object/from16 v4, p5

    move/from16 v9, p8

    new-instance v1, Landroid/service/notification/StatusBarNotification;

    const/16 v18, 0x0

    .line 5007
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object v9, v1

    move-object v3, v10

    move-object/from16 v10, p1

    move-object v2, v11

    move-object/from16 v11, p2

    move/from16 v12, p6

    move v4, v13

    move-object/from16 v13, p5

    move v14, v6

    move/from16 v24, v7

    move-object v7, v15

    .end local v7  # "userId":I
    .local v24, "userId":I
    move/from16 v15, p4

    move-object/from16 v16, p7

    move-object/from16 v17, v21

    invoke-direct/range {v9 .. v20}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 5010
    .local v1, "n":Landroid/service/notification/StatusBarNotification;
    nop

    .line 5011
    const-string/jumbo v9, "trust"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 5010
    invoke-static {v9}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v25

    .line 5014
    .local v25, "trustManager":Landroid/app/trust/ITrustManager;
    new-instance v9, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v1, v5}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V

    move-object v15, v9

    .line 5017
    .local v15, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v8, v4}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v9

    if-nez v9, :cond_15c

    const-string v9, "android"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15a

    goto :goto_15c

    :cond_15a
    const/4 v9, 0x0

    goto :goto_15d

    :cond_15c
    :goto_15c
    const/4 v9, 0x1

    :goto_15d
    move v14, v9

    .line 5018
    .local v14, "isSystemNotification":Z
    invoke-static {v2, v7}, Lcom/android/server/notification/CloudNotificationHelper;->getOrigPackageName(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 5019
    .local v13, "origPkgName":Ljava/lang/String;
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16a

    move v9, v4

    goto :goto_176

    :cond_16a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-static {v9, v13, v10}, Lcom/android/server/notification/CloudNotificationHelper;->getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    :goto_176
    move v12, v9

    .line 5020
    .local v12, "origPkgUid":I
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static {v13, v9}, Lcom/android/server/notification/NotificationManagerService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v11

    .line 5021
    .local v11, "isSystemApp":Z
    new-instance v26, Landroid/service/notification/StatusBarNotification;

    const/16 v18, 0x0

    .line 5023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object/from16 v9, v26

    move-object/from16 v10, p1

    move-object/from16 v27, v0

    move v0, v11

    .end local v11  # "isSystemApp":Z
    .local v0, "isSystemApp":Z
    .local v27, "channelId":Ljava/lang/String;
    move-object/from16 v11, p2

    move v4, v12

    .end local v12  # "origPkgUid":I
    .local v4, "origPkgUid":I
    move/from16 v12, p6

    move-object/from16 v28, v1

    move-object v1, v13

    .end local v13  # "origPkgName":Ljava/lang/String;
    .local v1, "origPkgName":Ljava/lang/String;
    .local v28, "n":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v13, p5

    move/from16 v29, v4

    move v4, v14

    .end local v14  # "isSystemNotification":Z
    .local v4, "isSystemNotification":Z
    .local v29, "origPkgUid":I
    move v14, v6

    move/from16 v30, v6

    move-object v6, v15

    .end local v15  # "r":Lcom/android/server/notification/NotificationRecord;
    .local v6, "r":Lcom/android/server/notification/NotificationRecord;
    .local v30, "notificationUid":I
    move/from16 v15, p4

    move-object/from16 v16, p7

    move-object/from16 v17, v21

    invoke-direct/range {v9 .. v20}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 5024
    .local v9, "temp":Landroid/service/notification/StatusBarNotification;
    iget-object v10, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/notification/NotificationRecord;

    .line 5025
    .local v10, "old":Lcom/android/server/notification/NotificationRecord;
    const/4 v11, 0x0

    .line 5026
    .local v11, "filter":Landroid/service/notification/StatusBarNotification$Filter;
    iget v12, v2, Landroid/app/Notification;->flags:I

    const/4 v13, 0x2

    and-int/2addr v12, v13

    if-nez v12, :cond_1c9

    iget v12, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v12, v12, 0x20

    if-nez v12, :cond_1c9

    iget v12, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v12, v12, 0x40

    if-nez v12, :cond_1c9

    const/4 v12, 0x1

    goto :goto_1ca

    :cond_1c9
    const/4 v12, 0x0

    .line 5029
    .local v12, "isClearable":Z
    :goto_1ca
    if-eqz v10, :cond_1d9

    .line 5030
    iget-object v14, v10, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v14, v14, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification$Filter;->copy()Landroid/service/notification/StatusBarNotification$Filter;

    move-result-object v14

    iput-object v14, v9, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    .line 5031
    iget-object v11, v9, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    goto :goto_21c

    .line 5033
    :cond_1d9
    const-string/jumbo v14, "vendor.meizu.sys.cts_state"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_1e8

    .line 5034
    iget-object v14, v9, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iput-boolean v15, v14, Landroid/service/notification/StatusBarNotification$Filter;->shouldAuthorityManagement:Z

    goto :goto_20d

    .line 5035
    :cond_1e8
    if-eqz v0, :cond_208

    .line 5036
    iget-object v14, v8, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v14, v1}, Lcom/android/server/notification/PreferencesHelper;->forceAuthorityManagement(Ljava/lang/String;)I

    move-result v14

    .line 5037
    .local v14, "forceManagement":I
    if-nez v14, :cond_1fd

    .line 5038
    iget-object v15, v9, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-object v13, v8, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v13, v1}, Lcom/android/server/notification/PreferencesHelper;->hasLauncherActivity(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v15, Landroid/service/notification/StatusBarNotification$Filter;->shouldAuthorityManagement:Z

    goto :goto_207

    .line 5040
    :cond_1fd
    iget-object v13, v9, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    const/4 v15, 0x1

    if-ne v14, v15, :cond_204

    const/4 v15, 0x1

    goto :goto_205

    :cond_204
    const/4 v15, 0x0

    :goto_205
    iput-boolean v15, v13, Landroid/service/notification/StatusBarNotification$Filter;->shouldAuthorityManagement:Z

    .line 5042
    .end local v14  # "forceManagement":I
    :goto_207
    goto :goto_20d

    .line 5043
    :cond_208
    iget-object v13, v9, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/service/notification/StatusBarNotification$Filter;->shouldAuthorityManagement:Z

    .line 5045
    :goto_20d
    sget-boolean v13, Lcom/android/server/notification/NotificationManagerService;->isProductInternational:Z

    if-nez v13, :cond_216

    .line 5046
    iget-object v13, v8, Lcom/android/server/notification/NotificationManagerService;->mFirewall:Lcom/android/server/notification/NotificationFirewall;

    invoke-interface {v13, v9, v4, v0, v12}, Lcom/android/server/notification/NotificationFirewall;->interceptNotification(Landroid/service/notification/StatusBarNotification;ZZZ)I

    .line 5049
    :cond_216
    iget-object v13, v9, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification$Filter;->copy()Landroid/service/notification/StatusBarNotification$Filter;

    move-result-object v11

    .line 5054
    :goto_21c
    iget-object v13, v8, Lcom/android/server/notification/NotificationManagerService;->mFirewall:Lcom/android/server/notification/NotificationFirewall;

    invoke-interface {v13, v1}, Lcom/android/server/notification/NotificationFirewall;->getUserFilter(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Landroid/service/notification/StatusBarNotification$Filter;->userFilter:I

    .line 5055
    iget v13, v11, Landroid/service/notification/StatusBarNotification$Filter;->userFilter:I

    if-eqz v13, :cond_233

    .line 5056
    iget v13, v11, Landroid/service/notification/StatusBarNotification$Filter;->userFilter:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_22f

    const/4 v13, 0x1

    goto :goto_230

    :cond_22f
    const/4 v13, 0x0

    :goto_230
    iput-boolean v13, v11, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    goto :goto_25e

    .line 5057
    :cond_233
    iget-boolean v13, v11, Landroid/service/notification/StatusBarNotification$Filter;->shouldAffectIntercept:Z

    if-eqz v13, :cond_25b

    .line 5058
    iget-object v13, v8, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    new-instance v14, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15, v9, v5}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V

    invoke-virtual {v13, v14}, Lcom/android/server/notification/PreferencesHelper;->getPackageCategoryScore(Lcom/android/server/notification/NotificationRecord;)F

    move-result v13

    iput v13, v11, Landroid/service/notification/StatusBarNotification$Filter;->score:F

    .line 5059
    iget v13, v11, Landroid/service/notification/StatusBarNotification$Filter;->score:F

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_257

    iget v13, v11, Landroid/service/notification/StatusBarNotification$Filter;->score_scale:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_257

    const/4 v13, 0x1

    goto :goto_258

    :cond_257
    const/4 v13, 0x0

    :goto_258
    iput-boolean v13, v11, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    goto :goto_25e

    .line 5061
    :cond_25b
    const/4 v13, 0x0

    iput-boolean v13, v11, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    .line 5064
    :goto_25e
    iget-boolean v13, v11, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    if-eqz v13, :cond_265

    const/4 v13, 0x1

    iput-boolean v13, v11, Landroid/service/notification/StatusBarNotification$Filter;->filterByUserBefore:Z

    .line 5065
    :cond_265
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "pkg "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", userFilter = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Landroid/service/notification/StatusBarNotification$Filter;->userFilter:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", intercept = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v11, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", score = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Landroid/service/notification/StatusBarNotification$Filter;->score:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, ", score_scale = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Landroid/service/notification/StatusBarNotification$Filter;->score_scale:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, ", category="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v11, Landroid/service/notification/StatusBarNotification$Filter;->category:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", shouldAffectIntercept="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v11, Landroid/service/notification/StatusBarNotification$Filter;->shouldAffectIntercept:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5068
    iget-boolean v3, v11, Landroid/service/notification/StatusBarNotification$Filter;->shouldAuthorityManagement:Z

    const-string v13, "headsup"

    if-eqz v3, :cond_2f2

    .line 5069
    iget-object v3, v8, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    move/from16 v14, v29

    .end local v29  # "origPkgUid":I
    .local v14, "origPkgUid":I
    invoke-virtual {v3, v1, v14}, Lcom/android/server/notification/PreferencesHelper;->getPackageHeadsUpVisibility(Ljava/lang/String;I)I

    move-result v3

    .line 5070
    .local v3, "visibility":I
    const/4 v15, 0x1

    if-eq v3, v15, :cond_2df

    .line 5071
    if-eqz v12, :cond_2d1

    .line 5072
    iget-object v15, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v15, v13, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move/from16 v17, v0

    goto :goto_2e1

    .line 5074
    :cond_2d1
    iget-object v15, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 5075
    move/from16 v17, v0

    const/4 v0, 0x2

    .end local v0  # "isSystemApp":Z
    .local v17, "isSystemApp":Z
    if-eq v3, v0, :cond_2da

    move v0, v3

    goto :goto_2db

    :cond_2da
    const/4 v0, 0x1

    .line 5074
    :goto_2db
    invoke-virtual {v15, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2e1

    .line 5070
    .end local v17  # "isSystemApp":Z
    .restart local v0  # "isSystemApp":Z
    :cond_2df
    move/from16 v17, v0

    .line 5078
    .end local v0  # "isSystemApp":Z
    .restart local v17  # "isSystemApp":Z
    :goto_2e1
    iget-boolean v0, v11, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    if-nez v0, :cond_2eb

    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_2f1

    .line 5079
    :cond_2eb
    iget-object v0, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v15, 0x0

    invoke-virtual {v0, v13, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5081
    .end local v3  # "visibility":I
    :cond_2f1
    goto :goto_304

    .line 5082
    .end local v14  # "origPkgUid":I
    .end local v17  # "isSystemApp":Z
    .restart local v0  # "isSystemApp":Z
    .restart local v29  # "origPkgUid":I
    :cond_2f2
    move/from16 v17, v0

    move/from16 v14, v29

    .end local v0  # "isSystemApp":Z
    .end local v29  # "origPkgUid":I
    .restart local v14  # "origPkgUid":I
    .restart local v17  # "isSystemApp":Z
    iget-object v0, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-virtual {v0, v13, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 5083
    .local v0, "flag":I
    if-ne v0, v3, :cond_304

    .line 5084
    iget-object v15, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v15, v13, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5089
    .end local v0  # "flag":I
    :cond_304
    :goto_304
    iget-boolean v0, v11, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    if-nez v0, :cond_32e

    iget v0, v2, Landroid/app/Notification;->flags:I

    const/high16 v3, 0x10000000

    and-int/2addr v0, v3

    if-nez v0, :cond_32e

    iget-boolean v0, v11, Landroid/service/notification/StatusBarNotification$Filter;->shouldAuthorityManagement:Z

    if-eqz v0, :cond_31b

    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 5091
    invoke-virtual {v0, v1, v14}, Lcom/android/server/notification/PreferencesHelper;->getPackageRemindEnable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_32e

    :cond_31b
    if-eqz v25, :cond_32c

    .line 5092
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmeizu/space/MSpaceControllerImpl;->getController(Landroid/content/Context;)Lmeizu/space/MSpaceController;

    move-result-object v0

    invoke-interface {v0, v9}, Lmeizu/space/MSpaceController;->isSilenceNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_32c

    goto :goto_32e

    :cond_32c
    const/4 v0, 0x0

    goto :goto_32f

    :cond_32e
    :goto_32e
    const/4 v0, 0x1

    .line 5093
    .local v0, "disableRemind":Z
    :goto_32f
    invoke-virtual {v6, v0}, Lcom/android/server/notification/NotificationRecord;->setDisableRemind(Z)V

    .line 5096
    iget-boolean v3, v11, Landroid/service/notification/StatusBarNotification$Filter;->shouldAuthorityManagement:Z

    if-eqz v3, :cond_340

    iget-object v3, v8, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v3, v1, v14}, Lcom/android/server/notification/PreferencesHelper;->getMaxPriority(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_340

    const/4 v3, 0x1

    goto :goto_341

    :cond_340
    const/4 v3, 0x0

    :goto_341
    move v13, v3

    .line 5097
    .local v13, "isMaxPriority":Z
    invoke-virtual {v6, v13}, Lcom/android/server/notification/NotificationRecord;->setMaxPriority(Z)V

    .line 5099
    iget-boolean v3, v11, Landroid/service/notification/StatusBarNotification$Filter;->shouldAffectRanking:Z

    if-eqz v3, :cond_359

    .line 5100
    iget v3, v11, Landroid/service/notification/StatusBarNotification$Filter;->categoryPriority:I

    iget v15, v11, Landroid/service/notification/StatusBarNotification$Filter;->notificationPriority:I

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5102
    .local v3, "priority":I
    const/4 v15, -0x2

    if-lt v3, v15, :cond_359

    const/4 v15, 0x2

    if-gt v3, v15, :cond_359

    .line 5104
    iput v3, v2, Landroid/app/Notification;->priority:I

    .line 5107
    .end local v3  # "priority":I
    :cond_359
    move-object/from16 v3, v28

    .end local v28  # "n":Landroid/service/notification/StatusBarNotification;
    .local v3, "n":Landroid/service/notification/StatusBarNotification;
    iput-object v11, v3, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    .line 5110
    iget-object v15, v8, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    move/from16 v18, v14

    move/from16 v14, p3

    .end local v14  # "origPkgUid":I
    .local v18, "origPkgUid":I
    invoke-virtual {v15, v7, v14}, Lcom/android/server/notification/PreferencesHelper;->getIsAppImportanceLocked(Ljava/lang/String;I)Z

    move-result v15

    invoke-virtual {v6, v15}, Lcom/android/server/notification/NotificationRecord;->setIsAppImportanceLocked(Z)V

    .line 5112
    iget v15, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v15, v15, 0x40

    if-eqz v15, :cond_404

    .line 5113
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v15

    .line 5114
    .local v15, "fgServiceShown":Z
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v19

    move/from16 v20, v0

    .end local v0  # "disableRemind":Z
    .local v20, "disableRemind":Z
    const/4 v0, 0x4

    and-int/lit8 v19, v19, 0x4

    const-string/jumbo v0, "miscellaneous"

    if-eqz v19, :cond_388

    if-nez v15, :cond_385

    goto :goto_388

    :cond_385
    move-object/from16 v19, v1

    goto :goto_39a

    .line 5116
    :cond_388
    :goto_388
    move-object/from16 v19, v1

    .end local v1  # "origPkgName":Ljava/lang/String;
    .local v19, "origPkgName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3c5

    .line 5117
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v1

    if-nez v1, :cond_39a

    move-object/from16 v2, v27

    goto :goto_3c7

    .line 5134
    :cond_39a
    :goto_39a
    if-nez v15, :cond_3bd

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3bd

    .line 5135
    move-object/from16 v2, v27

    .end local v27  # "channelId":Ljava/lang/String;
    .local v2, "channelId":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b7

    .line 5136
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/app/NotificationChannel;->setFgServiceShown(Z)V

    .line 5137
    invoke-virtual {v6, v5}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    move-object/from16 v22, v9

    move/from16 v9, v30

    const/4 v0, 0x0

    goto :goto_40f

    .line 5135
    :cond_3b7
    move-object/from16 v22, v9

    move/from16 v9, v30

    const/4 v0, 0x0

    goto :goto_40f

    .line 5134
    .end local v2  # "channelId":Ljava/lang/String;
    .restart local v27  # "channelId":Ljava/lang/String;
    :cond_3bd
    move-object/from16 v2, v27

    .end local v27  # "channelId":Ljava/lang/String;
    .restart local v2  # "channelId":Ljava/lang/String;
    move-object/from16 v22, v9

    move/from16 v9, v30

    const/4 v0, 0x0

    goto :goto_40f

    .line 5116
    .end local v2  # "channelId":Ljava/lang/String;
    .restart local v27  # "channelId":Ljava/lang/String;
    :cond_3c5
    move-object/from16 v2, v27

    .line 5120
    .end local v27  # "channelId":Ljava/lang/String;
    .restart local v2  # "channelId":Ljava/lang/String;
    :goto_3c7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3fa

    .line 5121
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d9

    move-object/from16 v22, v9

    move/from16 v9, v30

    const/4 v0, 0x0

    goto :goto_3ff

    .line 5124
    :cond_3d9
    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 5125
    invoke-virtual {v6, v0}, Lcom/android/server/notification/NotificationRecord;->setSystemImportance(I)V

    .line 5126
    if-nez v15, :cond_3eb

    .line 5127
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 5128
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/app/NotificationChannel;->setFgServiceShown(Z)V

    goto :goto_3ec

    .line 5126
    :cond_3eb
    const/4 v0, 0x1

    .line 5130
    :goto_3ec
    iget-object v1, v8, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    move-object/from16 v22, v9

    move/from16 v9, v30

    const/4 v0, 0x0

    .end local v30  # "notificationUid":I
    .local v9, "notificationUid":I
    .local v22, "temp":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v1, v7, v9, v5, v0}, Lcom/android/server/notification/PreferencesHelper;->updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    .line 5132
    invoke-virtual {v6, v5}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_40f

    .line 5120
    .end local v22  # "temp":Landroid/service/notification/StatusBarNotification;
    .local v9, "temp":Landroid/service/notification/StatusBarNotification;
    .restart local v30  # "notificationUid":I
    :cond_3fa
    move-object/from16 v22, v9

    move/from16 v9, v30

    const/4 v0, 0x0

    .line 5122
    .end local v30  # "notificationUid":I
    .local v9, "notificationUid":I
    .restart local v22  # "temp":Landroid/service/notification/StatusBarNotification;
    :goto_3ff
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Lcom/android/server/notification/NotificationRecord;->setSystemImportance(I)V

    goto :goto_40f

    .line 5112
    .end local v2  # "channelId":Ljava/lang/String;
    .end local v15  # "fgServiceShown":Z
    .end local v19  # "origPkgName":Ljava/lang/String;
    .end local v20  # "disableRemind":Z
    .end local v22  # "temp":Landroid/service/notification/StatusBarNotification;
    .restart local v0  # "disableRemind":Z
    .restart local v1  # "origPkgName":Ljava/lang/String;
    .local v9, "temp":Landroid/service/notification/StatusBarNotification;
    .restart local v27  # "channelId":Ljava/lang/String;
    .restart local v30  # "notificationUid":I
    :cond_404
    move/from16 v20, v0

    move-object/from16 v19, v1

    move-object/from16 v22, v9

    move-object/from16 v2, v27

    move/from16 v9, v30

    const/4 v0, 0x0

    .line 5141
    .end local v0  # "disableRemind":Z
    .end local v1  # "origPkgName":Ljava/lang/String;
    .end local v27  # "channelId":Ljava/lang/String;
    .end local v30  # "notificationUid":I
    .restart local v2  # "channelId":Ljava/lang/String;
    .local v9, "notificationUid":I
    .restart local v19  # "origPkgName":Ljava/lang/String;
    .restart local v20  # "disableRemind":Z
    .restart local v22  # "temp":Landroid/service/notification/StatusBarNotification;
    :goto_40f
    iget-object v1, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5142
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41a

    const/16 v23, 0x1

    goto :goto_41c

    :cond_41a
    move/from16 v23, v0

    .line 5141
    :goto_41c
    move-object v0, v3

    move-object/from16 v15, v19

    .end local v3  # "n":Landroid/service/notification/StatusBarNotification;
    .end local v19  # "origPkgName":Ljava/lang/String;
    .local v0, "n":Landroid/service/notification/StatusBarNotification;
    .local v15, "origPkgName":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v3, p7

    move-object/from16 v16, v2

    .end local v2  # "channelId":Ljava/lang/String;
    .local v16, "channelId":Ljava/lang/String;
    move/from16 v2, v24

    move-object/from16 v19, v10

    move-object v10, v3

    .end local v10  # "old":Lcom/android/server/notification/NotificationRecord;
    .local v19, "old":Lcom/android/server/notification/NotificationRecord;
    move v3, v9

    move v14, v4

    .end local v4  # "isSystemNotification":Z
    .local v14, "isSystemNotification":Z
    move/from16 v4, p6

    move-object/from16 v26, v5

    .end local v5  # "channel":Landroid/app/NotificationChannel;
    .local v26, "channel":Landroid/app/NotificationChannel;
    move-object/from16 v5, p5

    move-object/from16 v27, v6

    .end local v6  # "r":Lcom/android/server/notification/NotificationRecord;
    .local v27, "r":Lcom/android/server/notification/NotificationRecord;
    move/from16 v30, v9

    move-object v9, v7

    move/from16 v31, v24

    move-object/from16 v24, v11

    move/from16 v11, v31

    .end local v9  # "notificationUid":I
    .local v11, "userId":I
    .local v24, "filter":Landroid/service/notification/StatusBarNotification$Filter;
    .restart local v30  # "notificationUid":I
    move/from16 v7, v23

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v1

    if-nez v1, :cond_446

    .line 5143
    return-void

    .line 5147
    :cond_446
    iget-object v1, v10, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-eqz v1, :cond_4a0

    .line 5148
    iget-object v1, v10, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 5149
    .local v1, "intentCount":I
    if-lez v1, :cond_49b

    .line 5150
    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 5151
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 5152
    .local v2, "am":Landroid/app/ActivityManagerInternal;
    const-class v3, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DeviceIdleController$LocalService;

    .line 5153
    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController$LocalService;->getNotificationWhitelistDuration()J

    move-result-wide v3

    .line 5154
    .local v3, "duration":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_467
    if-ge v5, v1, :cond_496

    .line 5155
    iget-object v6, v10, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 5156
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v6, :cond_48b

    .line 5157
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v7

    move-object/from16 v28, v0

    .end local v0  # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v28  # "n":Landroid/service/notification/StatusBarNotification;
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    invoke-virtual {v2, v7, v0, v3, v4}, Landroid/app/ActivityManagerInternal;->setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;J)V

    .line 5159
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v0

    sget-object v7, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    move/from16 v23, v1

    .end local v1  # "intentCount":I
    .local v23, "intentCount":I
    const/4 v1, 0x7

    invoke-virtual {v2, v0, v7, v1}, Landroid/app/ActivityManagerInternal;->setPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;I)V

    goto :goto_48f

    .line 5156
    .end local v23  # "intentCount":I
    .end local v28  # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v0  # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v1  # "intentCount":I
    :cond_48b
    move-object/from16 v28, v0

    move/from16 v23, v1

    .line 5154
    .end local v0  # "n":Landroid/service/notification/StatusBarNotification;
    .end local v1  # "intentCount":I
    .end local v6  # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v23  # "intentCount":I
    .restart local v28  # "n":Landroid/service/notification/StatusBarNotification;
    :goto_48f
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v23

    move-object/from16 v0, v28

    goto :goto_467

    .end local v23  # "intentCount":I
    .end local v28  # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v0  # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v1  # "intentCount":I
    :cond_496
    move-object/from16 v28, v0

    move/from16 v23, v1

    .end local v0  # "n":Landroid/service/notification/StatusBarNotification;
    .end local v1  # "intentCount":I
    .restart local v23  # "intentCount":I
    .restart local v28  # "n":Landroid/service/notification/StatusBarNotification;
    goto :goto_4a2

    .line 5149
    .end local v2  # "am":Landroid/app/ActivityManagerInternal;
    .end local v3  # "duration":J
    .end local v5  # "i":I
    .end local v23  # "intentCount":I
    .end local v28  # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v0  # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v1  # "intentCount":I
    :cond_49b
    move-object/from16 v28, v0

    move/from16 v23, v1

    .end local v0  # "n":Landroid/service/notification/StatusBarNotification;
    .end local v1  # "intentCount":I
    .restart local v23  # "intentCount":I
    .restart local v28  # "n":Landroid/service/notification/StatusBarNotification;
    goto :goto_4a2

    .line 5147
    .end local v23  # "intentCount":I
    .end local v28  # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v0  # "n":Landroid/service/notification/StatusBarNotification;
    :cond_4a0
    move-object/from16 v28, v0

    .line 5167
    .end local v0  # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v28  # "n":Landroid/service/notification/StatusBarNotification;
    :goto_4a2
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    move-object/from16 v2, v27

    .end local v27  # "r":Lcom/android/server/notification/NotificationRecord;
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {v1, v8, v11, v2}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5168
    return-void

    .line 4967
    .end local v2  # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v11  # "userId":I
    .end local v12  # "isClearable":Z
    .end local v13  # "isMaxPriority":Z
    .end local v14  # "isSystemNotification":Z
    .end local v15  # "origPkgName":Ljava/lang/String;
    .end local v16  # "channelId":Ljava/lang/String;
    .end local v17  # "isSystemApp":Z
    .end local v18  # "origPkgUid":I
    .end local v19  # "old":Lcom/android/server/notification/NotificationRecord;
    .end local v20  # "disableRemind":Z
    .end local v22  # "temp":Landroid/service/notification/StatusBarNotification;
    .end local v24  # "filter":Landroid/service/notification/StatusBarNotification$Filter;
    .end local v25  # "trustManager":Landroid/app/trust/ITrustManager;
    .end local v26  # "channel":Landroid/app/NotificationChannel;
    .end local v28  # "n":Landroid/service/notification/StatusBarNotification;
    .end local v30  # "notificationUid":I
    .local v6, "notificationUid":I
    .restart local v7  # "userId":I
    :catch_4af
    move-exception v0

    move/from16 v30, v6

    move-object v3, v10

    move-object v10, v11

    move-object v9, v15

    move v11, v7

    move-object v1, v0

    .end local v6  # "notificationUid":I
    .end local v7  # "userId":I
    .restart local v11  # "userId":I
    .restart local v30  # "notificationUid":I
    move-object v0, v1

    .line 4968
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Cannot create a context for sending app"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4969
    return-void

    .line 4948
    .end local v0  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11  # "userId":I
    .end local v21  # "user":Landroid/os/UserHandle;
    .end local v30  # "notificationUid":I
    :cond_4be
    move-object v10, v11

    move-object v9, v15

    .line 4949
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "null not allowed: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p6

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method findGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "groupKey"  # Ljava/lang/String;
    .param p3, "userId"  # I
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

    .line 7412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7413
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7414
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 7415
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 7414
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7416
    return-object v0
.end method

.method findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 13
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "id"  # I
    .param p4, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7453
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_f

    .line 7454
    return-object v1

    .line 7456
    :cond_f
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1e

    .line 7458
    return-object v1

    .line 7460
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method finishTokenLocked(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "t"  # Landroid/os/IBinder;
    .param p2, "displayId"  # I

    .line 6519
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6524
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 6525
    return-void
.end method

.method protected fixNotification(Landroid/app/Notification;Ljava/lang/String;I)V
    .registers 9
    .param p1, "notification"  # Landroid/app/Notification;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5173
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 5175
    const/4 v1, -0x1

    if-ne p3, v1, :cond_7

    const/4 v1, 0x0

    goto :goto_8

    :cond_7
    move v1, p3

    .line 5173
    :goto_8
    const/high16 v2, 0x10000000

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 5176
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0, p1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V

    .line 5178
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v2, "android.permission.USE_COLORIZED_NOTIFICATIONS"

    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 5180
    .local v1, "canColorize":I
    if-nez v1, :cond_22

    .line 5181
    iget v2, p1, Landroid/app/Notification;->flags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p1, Landroid/app/Notification;->flags:I

    goto :goto_28

    .line 5183
    :cond_22
    iget v2, p1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, -0x801

    iput v2, p1, Landroid/app/Notification;->flags:I

    .line 5186
    :goto_28
    iget-object v2, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_5a

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_5a

    .line 5187
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.USE_FULL_SCREEN_INTENT"

    invoke-virtual {v2, v3, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 5189
    .local v2, "fullscreenIntentPermission":I
    if-eqz v2, :cond_5a

    .line 5190
    const/4 v3, 0x0

    iput-object v3, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 5191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Use of fullScreenIntent requires the USE_FULL_SCREEN_INTENT permission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotificationService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5195
    .end local v2  # "fullscreenIntentPermission":I
    :cond_5a
    return-void
.end method

.method getApprovedAssistant(I)Landroid/content/ComponentName;
    .registers 4
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 8943
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v0

    .line 8944
    .local v0, "allowedComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    return-object v1
.end method

.method getBinderService()Landroid/app/INotificationManager;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2296
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method protected getCompanionManager()Landroid/companion/ICompanionDeviceManager;
    .registers 2

    .line 7788
    nop

    .line 7789
    const-string v0, "companiondevice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 7788
    invoke-static {v0}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method getInternalService()Lcom/android/server/notification/NotificationManagerInternal;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2405
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    return-object v0
.end method

.method protected getNotificationCountLocked(Ljava/lang/String;IILjava/lang/String;)I
    .registers 11
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "excludedId"  # I
    .param p4, "excludedTag"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 5455
    const/4 v0, 0x0

    .line 5456
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5457
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_40

    .line 5458
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 5459
    .local v3, "existing":Lcom/android/server/notification/NotificationRecord;
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5460
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_3d

    .line 5461
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p3, :cond_3b

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5462
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 5463
    goto :goto_3d

    .line 5465
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    .line 5457
    .end local v3  # "existing":Lcom/android/server/notification/NotificationRecord;
    :cond_3d
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5468
    .end local v2  # "i":I
    :cond_40
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5469
    .local v2, "M":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_47
    if-ge v3, v2, :cond_6a

    .line 5470
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 5471
    .local v4, "existing":Lcom/android/server/notification/NotificationRecord;
    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5472
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    if-ne v5, p2, :cond_67

    .line 5473
    add-int/lit8 v0, v0, 0x1

    .line 5469
    .end local v4  # "existing":Lcom/android/server/notification/NotificationRecord;
    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 5476
    .end local v3  # "i":I
    :cond_6a
    return v0
.end method

.method getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 3
    .param p1, "key"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1657
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    return-object v0
.end method

.method getNotificationRecordCount()I
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1616
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1617
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 1618
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1620
    .local v1, "count":I
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

    .line 1621
    .local v3, "posted":Lcom/android/server/notification/NotificationRecord;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1622
    add-int/lit8 v1, v1, -0x1

    .line 1624
    :cond_3e
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1625
    add-int/lit8 v1, v1, -0x1

    .line 1627
    .end local v3  # "posted":Lcom/android/server/notification/NotificationRecord;
    :cond_52
    goto :goto_24

    .line 1629
    :cond_53
    monitor-exit v0

    return v1

    .line 1630
    .end local v1  # "count":I
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v1
.end method

.method handleRankingSort()V
    .registers 21

    .line 6658
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    if-nez v0, :cond_7

    return-void

    .line 6659
    :cond_7
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6660
    :try_start_a
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6662
    .local v0, "N":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6663
    .local v3, "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v4, v0, [I

    .line 6664
    .local v4, "visibilities":[I
    new-array v5, v0, [Z

    .line 6665
    .local v5, "showBadges":[Z
    new-array v6, v0, [Z

    .line 6666
    .local v6, "allowBubbles":[Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6667
    .local v7, "channelBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/NotificationChannel;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6668
    .local v8, "groupKeyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6669
    .local v9, "overridePeopleBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6670
    .local v10, "snoozeCriteriaBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6671
    .local v11, "userSentimentBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6672
    .local v12, "suppressVisuallyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6673
    .local v13, "systemSmartActionsBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/app/Notification$Action;>;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6674
    .local v14, "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    new-array v15, v0, [I

    .line 6675
    .local v15, "importancesBefore":[I
    const/16 v16, 0x0

    move-object/from16 v17, v15

    move/from16 v15, v16

    .local v15, "i":I
    .local v17, "importancesBefore":[I
    :goto_4b
    if-ge v15, v0, :cond_cb

    .line 6676
    move/from16 v16, v0

    .end local v0  # "N":I
    .local v16, "N":I
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;
    :try_end_57
    .catchall {:try_start_a .. :try_end_57} :catchall_1a9

    .line 6677
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    :try_start_57
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6678
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v1

    aput v1, v4, v15

    .line 6679
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v1

    aput-boolean v1, v5, v15

    .line 6680
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v1

    aput-boolean v1, v6, v15

    .line 6681
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6682
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6683
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6684
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6685
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6686
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6687
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6688
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6689
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v1

    aput v1, v17, v15
    :try_end_b6
    .catchall {:try_start_57 .. :try_end_b6} :catchall_c6

    .line 6690
    move-object/from16 v1, p0

    move-object/from16 v18, v14

    .end local v14  # "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    .local v18, "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    :try_start_ba
    iget-object v14, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v14, v0}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 6675
    .end local v0  # "r":Lcom/android/server/notification/NotificationRecord;
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v16

    move-object/from16 v14, v18

    goto :goto_4b

    .line 6714
    .end local v3  # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4  # "visibilities":[I
    .end local v5  # "showBadges":[Z
    .end local v6  # "allowBubbles":[Z
    .end local v7  # "channelBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/NotificationChannel;>;"
    .end local v8  # "groupKeyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9  # "overridePeopleBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v10  # "snoozeCriteriaBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;>;"
    .end local v11  # "userSentimentBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12  # "suppressVisuallyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13  # "systemSmartActionsBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/app/Notification$Action;>;>;"
    .end local v15  # "i":I
    .end local v16  # "N":I
    .end local v17  # "importancesBefore":[I
    .end local v18  # "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    :catchall_c6
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_1aa

    .line 6675
    .local v0, "N":I
    .restart local v3  # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4  # "visibilities":[I
    .restart local v5  # "showBadges":[Z
    .restart local v6  # "allowBubbles":[Z
    .restart local v7  # "channelBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/NotificationChannel;>;"
    .restart local v8  # "groupKeyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9  # "overridePeopleBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v10  # "snoozeCriteriaBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;>;"
    .restart local v11  # "userSentimentBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v12  # "suppressVisuallyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v13  # "systemSmartActionsBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/app/Notification$Action;>;>;"
    .restart local v14  # "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    .restart local v15  # "i":I
    .restart local v17  # "importancesBefore":[I
    :cond_cb
    move/from16 v16, v0

    move-object/from16 v18, v14

    .line 6692
    .end local v0  # "N":I
    .end local v14  # "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    .end local v15  # "i":I
    .restart local v16  # "N":I
    .restart local v18  # "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v14, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 6693
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d7
    move/from16 v14, v16

    .end local v16  # "N":I
    .local v14, "N":I
    if-ge v0, v14, :cond_1a3

    .line 6694
    iget-object v15, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/notification/NotificationRecord;

    .line 6695
    .local v15, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v3

    .end local v3  # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    move/from16 v16, v14

    .end local v14  # "N":I
    .restart local v16  # "N":I
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19c

    aget v3, v4, v0

    .line 6696
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v14

    if-ne v3, v14, :cond_19c

    aget-boolean v3, v5, v0

    .line 6697
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v14

    if-ne v3, v14, :cond_19c

    aget-boolean v3, v6, v0

    .line 6698
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v14

    if-ne v3, v14, :cond_19c

    .line 6699
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19c

    .line 6700
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19c

    .line 6701
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19c

    .line 6702
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19c

    .line 6703
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19c

    .line 6704
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 6705
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 6704
    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19c

    .line 6706
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 6707
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v14

    .line 6706
    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19c

    .line 6708
    move-object/from16 v3, v18

    .end local v18  # "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    .local v3, "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v18, v3

    .end local v3  # "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    .restart local v18  # "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v14, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19c

    aget v3, v17, v0

    .line 6709
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v14

    if-eq v3, v14, :cond_196

    goto :goto_19c

    .line 6693
    .end local v15  # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_196
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v19

    goto/16 :goto_d7

    .line 6710
    .restart local v15  # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_19c
    :goto_19c
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 6711
    monitor-exit v2

    return-void

    .line 6693
    .end local v15  # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v16  # "N":I
    .end local v19  # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14  # "N":I
    :cond_1a3
    move-object/from16 v19, v3

    move/from16 v16, v14

    .line 6714
    .end local v0  # "i":I
    .end local v3  # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4  # "visibilities":[I
    .end local v5  # "showBadges":[Z
    .end local v6  # "allowBubbles":[Z
    .end local v7  # "channelBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/NotificationChannel;>;"
    .end local v8  # "groupKeyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9  # "overridePeopleBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v10  # "snoozeCriteriaBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;>;"
    .end local v11  # "userSentimentBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12  # "suppressVisuallyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13  # "systemSmartActionsBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/app/Notification$Action;>;>;"
    .end local v14  # "N":I
    .end local v17  # "importancesBefore":[I
    .end local v18  # "smartRepliesBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    monitor-exit v2

    .line 6715
    return-void

    .line 6714
    :catchall_1a9
    move-exception v0

    :goto_1aa
    monitor-exit v2
    :try_end_1ab
    .catchall {:try_start_ba .. :try_end_1ab} :catchall_1a9

    throw v0
.end method

.method protected handleSavePolicyFile()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 682
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$Ehw7Jxsy3ZIwTcAa2DFsHjIULas;

    invoke-direct {v1, p0}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$Ehw7Jxsy3ZIwTcAa2DFsHjIULas;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 703
    return-void
.end method

.method hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 9
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7761
    const-string v0, "NotificationService"

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    if-nez v1, :cond_c

    .line 7762
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getCompanionManager()Landroid/companion/ICompanionDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 7765
    :cond_c
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 7766
    return v2

    .line 7768
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 7770
    .local v3, "identity":J
    :try_start_16
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    iget-object v5, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 7771
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 7770
    invoke-interface {v1, v5, v6}, Landroid/companion/ICompanionDeviceManager;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 7772
    .local v1, "associations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_28} :catch_55
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_28} :catch_49
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_28} :catch_32
    .catchall {:try_start_16 .. :try_end_28} :catchall_30

    if-nez v0, :cond_2f

    .line 7773
    const/4 v0, 0x1

    .line 7782
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7773
    return v0

    .line 7772
    .end local v1  # "associations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2f
    goto :goto_56

    .line 7782
    :catchall_30
    move-exception v0

    goto :goto_51

    .line 7779
    :catch_32
    move-exception v1

    .line 7780
    .local v1, "e":Ljava/lang/Exception;
    :try_start_33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot verify listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7782
    nop

    .end local v1  # "e":Ljava/lang/Exception;
    goto :goto_57

    .line 7777
    :catch_49
    move-exception v1

    .line 7778
    .local v1, "re":Landroid/os/RemoteException;
    const-string v5, "Cannot reach companion device service"

    invoke-static {v0, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_33 .. :try_end_4f} :catchall_30

    .line 7782
    nop

    .end local v1  # "re":Landroid/os/RemoteException;
    goto :goto_57

    :goto_51
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 7775
    :catch_55
    move-exception v0

    .line 7782
    :goto_56
    nop

    :goto_57
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7783
    nop

    .line 7784
    return v2
.end method

.method protected hideNotificationsForPackages([Ljava/lang/String;)V
    .registers 9
    .param p1, "pkgs"  # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7517
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7518
    :try_start_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 7519
    .local v1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7520
    .local v2, "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7521
    .local v3, "numNotifications":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    if-ge v4, v3, :cond_33

    .line 7522
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 7523
    .local v5, "rec":Lcom/android/server/notification/NotificationRecord;
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 7524
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 7525
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7521
    .end local v5  # "rec":Lcom/android/server/notification/NotificationRecord;
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 7529
    .end local v4  # "i":I
    :cond_33
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v4, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyHiddenLocked(Ljava/util/List;)V

    .line 7530
    .end local v1  # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2  # "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v3  # "numNotifications":I
    monitor-exit v0

    .line 7531
    return-void

    .line 7530
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method indexOfNotificationLocked(Ljava/lang/String;)I
    .registers 5
    .param p1, "key"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7506
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7507
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 7508
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 7509
    return v1

    .line 7507
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 7512
    .end local v1  # "i":I
    :cond_1f
    const/4 v1, -0x1

    return v1
.end method

.method indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 10
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "id"  # I
    .param p4, "userId"  # I

    .line 9367
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 9368
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9369
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_39

    .line 9370
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 9371
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v3, p4}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_36

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p3, :cond_36

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 9372
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 9373
    return v2

    .line 9369
    .end local v3  # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 9376
    .end local v2  # "i":I
    :cond_39
    const/4 v2, -0x1

    return v2
.end method

.method indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .registers 9
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "callback"  # Landroid/app/ITransientNotification;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 6571
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 6572
    .local v0, "cbak":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 6573
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6574
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_27

    .line 6575
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 6576
    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v0, :cond_24

    .line 6577
    return v3

    .line 6574
    .end local v4  # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 6580
    .end local v3  # "i":I
    :cond_27
    const/4 v3, -0x1

    return v3
.end method

.method init(Landroid/os/Looper;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/app/AppOpsManager;Landroid/os/UserManager;)V
    .registers 44
    .param p1, "looper"  # Landroid/os/Looper;
    .param p2, "packageManager"  # Landroid/content/pm/IPackageManager;
    .param p3, "packageManagerClient"  # Landroid/content/pm/PackageManager;
    .param p4, "lightsManager"  # Lcom/android/server/lights/LightsManager;
    .param p5, "notificationListeners"  # Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .param p6, "notificationAssistants"  # Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    .param p7, "conditionProviders"  # Lcom/android/server/notification/ConditionProviders;
    .param p8, "companionManager"  # Landroid/companion/ICompanionDeviceManager;
    .param p9, "snoozeHelper"  # Lcom/android/server/notification/SnoozeHelper;
    .param p10, "usageStats"  # Lcom/android/server/notification/NotificationUsageStats;
    .param p11, "policyFile"  # Landroid/util/AtomicFile;
    .param p12, "activityManager"  # Landroid/app/ActivityManager;
    .param p13, "groupHelper"  # Lcom/android/server/notification/GroupHelper;
    .param p14, "am"  # Landroid/app/IActivityManager;
    .param p15, "appUsageStats"  # Landroid/app/usage/UsageStatsManagerInternal;
    .param p16, "dpm"  # Landroid/app/admin/DevicePolicyManagerInternal;
    .param p17, "ugm"  # Landroid/app/IUriGrantsManager;
    .param p18, "ugmInternal"  # Lcom/android/server/uri/UriGrantsManagerInternal;
    .param p19, "appOps"  # Landroid/app/AppOpsManager;
    .param p20, "userManager"  # Landroid/os/UserManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1736
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1737
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "max_notification_enqueue_rate"

    const/high16 v5, 0x40a00000  # 5.0f

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 1741
    nop

    .line 1742
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "accessibility"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1743
    move-object/from16 v4, p14

    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 1744
    move-object/from16 v5, p17

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 1745
    move-object/from16 v6, p18

    iput-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1746
    move-object/from16 v7, p2

    iput-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1747
    move-object/from16 v8, p3

    iput-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 1748
    move-object/from16 v9, p19

    iput-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1749
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v10, "vibrator"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 1750
    move-object/from16 v10, p15

    iput-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1751
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v11, "alarm"

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1752
    move-object/from16 v11, p8

    iput-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 1753
    move-object/from16 v12, p12

    iput-object v12, v1, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1754
    nop

    .line 1755
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1754
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 1756
    move-object/from16 v13, p16

    iput-object v13, v1, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1757
    move-object/from16 v14, p20

    iput-object v14, v1, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    .line 1759
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v15, p1

    invoke-direct {v0, v1, v15}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1760
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1763
    const v0, 0x1070050

    const/4 v4, 0x0

    :try_start_96
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_9a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_96 .. :try_end_9a} :catch_9b

    .line 1766
    .local v0, "extractorNames":[Ljava/lang/String;
    goto :goto_a2

    .line 1764
    .end local v0  # "extractorNames":[Ljava/lang/String;
    :catch_9b
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 1765
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-array v0, v4, [Ljava/lang/String;

    .line 1767
    .local v0, "extractorNames":[Ljava/lang/String;
    :goto_a2
    move-object/from16 v4, p10

    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 1768
    new-instance v4, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v4}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1769
    new-instance v4, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 1770
    move-object/from16 v4, p7

    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 1771
    new-instance v5, Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-direct {v5, v4, v6, v7}, Lcom/android/server/notification/ZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;)V

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 1772
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v5, Lcom/android/server/notification/NotificationManagerService$7;

    invoke-direct {v5, v1}, Lcom/android/server/notification/NotificationManagerService$7;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {v4, v5}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 1797
    new-instance v4, Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/notification/PreferencesHelper;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 1801
    new-instance v4, Lcom/android/server/notification/RankingHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v0

    invoke-direct/range {v16 .. v22}, Lcom/android/server/notification/RankingHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/RankingConfig;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V

    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1807
    move-object/from16 v4, p9

    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 1808
    move-object/from16 v5, p13

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    .line 1811
    move-object/from16 v6, p5

    iput-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 1814
    move-object/from16 v7, p6

    iput-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 1817
    new-instance v8, Lcom/android/server/notification/-$$Lambda$V4J7df5A6vhSIuw7Ym9xgkfahto;

    invoke-direct {v8, v1}, Lcom/android/server/notification/-$$Lambda$V4J7df5A6vhSIuw7Ym9xgkfahto;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    .line 1819
    move-object/from16 v8, p11

    iput-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 1820
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->loadPolicyFile()V

    .line 1822
    move-object/from16 v16, v0

    .end local v0  # "extractorNames":[Ljava/lang/String;
    .local v16, "extractorNames":[Ljava/lang/String;
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1823
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_13e

    .line 1824
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v0, v4}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V

    .line 1827
    :cond_13e
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 1828
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 1832
    new-instance v4, Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-direct {v4}, Lcom/android/server/notification/NotificationFirewallImpl;-><init>()V

    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mFirewall:Lcom/android/server/notification/NotificationFirewall;

    .line 1833
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mFirewall:Lcom/android/server/notification/NotificationFirewall;

    invoke-virtual {v4, v0}, Lcom/android/server/notification/PreferencesHelper;->setNotificationFirewall(Lcom/android/server/notification/NotificationFirewall;)V

    .line 1834
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInterceptThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1835
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-direct {v1, v0, v4}, Lcom/android/server/notification/NotificationManagerService;->notiBreathLightInit(Landroid/content/Context;Lcom/android/server/lights/Light;)V

    .line 1836
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->notiWakeupScreenInit(Landroid/content/Context;)V

    .line 1839
    const v0, 0x107004f

    const/16 v4, 0x11

    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    invoke-static {v3, v0, v4, v2}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    .line 1843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x1040180

    .line 1844
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1843
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationUri:Landroid/net/Uri;

    .line 1845
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1846
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v2, 0x2

    .line 1847
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1848
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    .line 1849
    const v0, 0x10500a4

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationVolume:F

    .line 1851
    const v0, 0x11100e7

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    .line 1852
    const v0, 0x111008d

    .line 1853
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    .line 1859
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_1de

    .line 1861
    iput-boolean v4, v1, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    .line 1863
    :cond_1de
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->initZenMode()V

    .line 1864
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 1866
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 1867
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->listenForCallState()V

    .line 1869
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    .line 1871
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$Archive;

    const v2, 0x10e008d

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/notification/NotificationManagerService$Archive;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    .line 1874
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.leanback"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_225

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 1875
    const-string v2, "android.hardware.type.television"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_223

    goto :goto_225

    :cond_223
    const/4 v4, 0x0

    goto :goto_226

    :cond_225
    :goto_225
    nop

    :goto_226
    iput-boolean v4, v1, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    .line 1877
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 1878
    const-string v2, "android.hardware.type.automotive"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    .line 1879
    const v0, 0x1110078

    .line 1880
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationEffectsEnabledForAutomotive:Z

    .line 1882
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x107004e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/notification/PreferencesHelper;->lockChannelsForOEM([Ljava/lang/String;)V

    .line 1885
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1070052

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/notification/ZenModeHelper;->setPriorityOnlyDndExemptPackages([Ljava/lang/String;)V

    .line 1887
    return-void
.end method

.method protected isBlocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationUsageStats;)Z
    .registers 5
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "usageStats"  # Lcom/android/server/notification/NotificationUsageStats;

    .line 5480
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isBlocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5481
    const-string v0, "NotificationService"

    const-string v1, "Suppressing notification from package by user request."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5482
    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 5483
    const/4 v0, 0x1

    return v0

    .line 5485
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method isCallerInstantApp(II)Z
    .registers 10
    .param p1, "callingUid"  # I
    .param p2, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7631
    const-string v0, "Unknown uid "

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 7632
    return v2

    .line 7635
    :cond_a
    const/4 v1, -0x1

    if-ne p2, v1, :cond_e

    .line 7636
    const/4 p2, 0x0

    .line 7640
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 7641
    .local v1, "pkgs":[Ljava/lang/String;
    if-eqz v1, :cond_41

    .line 7644
    aget-object v3, v1, v2

    .line 7645
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v4, p1, v3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 7647
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3, v2, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 7648
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_2a

    .line 7651
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    return v0

    .line 7649
    :cond_2a
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService;
    .end local p1  # "callingUid":I
    .end local p2  # "userId":I
    throw v4

    .line 7642
    .end local v2  # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3  # "pkg":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService;
    .restart local p1  # "callingUid":I
    .restart local p2  # "userId":I
    :cond_41
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService;
    .end local p1  # "callingUid":I
    .end local p2  # "userId":I
    throw v2
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_56} :catch_56

    .line 7652
    .end local v1  # "pkgs":[Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService;
    .restart local p1  # "callingUid":I
    .restart local p2  # "userId":I
    :catch_56
    move-exception v1

    .line 7653
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected isCallerSystemOrPhone()Z
    .registers 2

    .line 7569
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    return v0
.end method

.method protected isCallingUidSystem()Z
    .registers 3

    .line 7558
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 7559
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method isPackagePausedOrSuspended(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 5745
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 5747
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    nop

    .line 5748
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 5747
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManagerInternal;->getDistractingPackageRestrictions(Ljava/lang/String;I)I

    move-result v1

    .line 5749
    .local v1, "flags":I
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    .line 5750
    .local v2, "isPaused":Z
    :goto_1c
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v3

    or-int/2addr v2, v3

    .line 5751
    return v2
.end method

.method protected isUidSystemOrPhone(I)Z
    .registers 4
    .param p1, "uid"  # I

    .line 7563
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 7564
    .local v0, "appid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_11

    if-nez p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method protected isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 20
    .param p1, "old"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "r"  # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5895
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    const/4 v3, 0x0

    const-string v4, "INTERRUPTIVENESS: "

    const-string v5, "NotificationService"

    if-eqz v0, :cond_3d

    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 5896
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_3c

    .line 5897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5898
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not interruptive: summary"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5897
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5900
    :cond_3c
    return v3

    .line 5903
    :cond_3d
    const/4 v0, 0x1

    if-nez v1, :cond_60

    .line 5904
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v3, :cond_5f

    .line 5905
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5906
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is interruptive: new notification"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5905
    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5908
    :cond_5f
    return v0

    .line 5911
    :cond_60
    nop

    .line 5919
    iget-object v6, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 5920
    .local v6, "oldN":Landroid/app/Notification;
    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    .line 5922
    .local v7, "newN":Landroid/app/Notification;
    iget-object v8, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v8, :cond_282

    iget-object v8, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v8, :cond_77

    goto/16 :goto_282

    .line 5932
    :cond_77
    iget-object v8, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_a3

    .line 5933
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_a2

    .line 5934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5935
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not interruptive: foreground service"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5934
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5937
    :cond_a2
    return v3

    .line 5940
    :cond_a3
    iget-object v8, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v9, "android.title"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 5941
    .local v8, "oldTitle":Ljava/lang/String;
    iget-object v10, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v10, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 5942
    .local v9, "newTitle":Ljava/lang/String;
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x3

    if-nez v10, :cond_139

    .line 5943
    sget-boolean v10, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v10, :cond_138

    .line 5944
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5945
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is interruptive: changed title"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 5944
    invoke-static {v5, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5946
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v8, v13, v3

    .line 5947
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v13, v0

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v11

    .line 5946
    const-string v14, "   old title: %s (%s@0x%08x)"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5948
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v9, v4, v3

    .line 5949
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v4, v0

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v11

    .line 5948
    const-string v3, "   new title: %s (%s@0x%08x)"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5951
    :cond_138
    return v0

    .line 5954
    :cond_139
    iget-object v10, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.text"

    invoke-virtual {v10, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 5955
    .local v10, "oldText":Ljava/lang/String;
    iget-object v14, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v14, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 5956
    .local v13, "newText":Ljava/lang/String;
    invoke-static {v10, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1ce

    .line 5957
    sget-boolean v14, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v14, :cond_1cd

    .line 5958
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5959
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is interruptive: changed text"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 5958
    invoke-static {v5, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5960
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v15, v12, [Ljava/lang/Object;

    aput-object v10, v15, v3

    .line 5961
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v15, v0

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v11

    .line 5960
    const-string v11, "   old text: %s (%s@0x%08x)"

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5962
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v13, v4, v3

    .line 5963
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v4, v0

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v12, 0x2

    aput-object v3, v4, v12

    .line 5962
    const-string v3, "   new text: %s (%s@0x%08x)"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5965
    :cond_1cd
    return v0

    .line 5967
    :cond_1ce
    invoke-virtual {v6}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v11

    invoke-virtual {v7}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v12

    if-eq v11, v12, :cond_1f8

    .line 5968
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v3, :cond_1f7

    .line 5969
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5970
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is interruptive: completed progress"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5969
    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5972
    :cond_1f7
    return v0

    .line 5975
    :cond_1f8
    invoke-static {v6, v7}, Landroid/app/Notification;->areActionsVisiblyDifferent(Landroid/app/Notification;Landroid/app/Notification;)Z

    move-result v11

    if-eqz v11, :cond_21e

    .line 5976
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v3, :cond_21d

    .line 5977
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5978
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is interruptive: changed actions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5977
    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5980
    :cond_21d
    return v0

    .line 5984
    :cond_21e
    :try_start_21e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v6}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 5985
    .local v11, "oldB":Landroid/app/Notification$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v7}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 5988
    .local v12, "newB":Landroid/app/Notification$Builder;
    invoke-static {v11, v12}, Landroid/app/Notification;->areStyledNotificationsVisiblyDifferent(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result v14

    if-eqz v14, :cond_254

    .line 5989
    sget-boolean v14, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v14, :cond_253

    .line 5990
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5991
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is interruptive: styles differ"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5990
    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5993
    :cond_253
    return v0

    .line 5997
    :cond_254
    invoke-static {v11, v12}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result v14

    if-eqz v14, :cond_27a

    .line 5998
    sget-boolean v14, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v14, :cond_279

    .line 5999
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6000
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is interruptive: remoteviews differ"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5999
    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_279
    .catch Ljava/lang/Exception; {:try_start_21e .. :try_end_279} :catch_27b

    .line 6002
    :cond_279
    return v0

    .line 6006
    .end local v11  # "oldB":Landroid/app/Notification$Builder;
    .end local v12  # "newB":Landroid/app/Notification$Builder;
    :cond_27a
    goto :goto_281

    .line 6004
    :catch_27b
    move-exception v0

    .line 6005
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "error recovering builder"

    invoke-static {v5, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6008
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_281
    return v3

    .line 5923
    .end local v8  # "oldTitle":Ljava/lang/String;
    .end local v9  # "newTitle":Ljava/lang/String;
    .end local v10  # "oldText":Ljava/lang/String;
    .end local v13  # "newText":Ljava/lang/String;
    :cond_282
    :goto_282
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_2a1

    .line 5924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5925
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not interruptive: no extras"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5924
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5927
    :cond_2a1
    return v3
.end method

.method keepProcessAliveIfNeededLocked(I)V
    .registers 9
    .param p1, "pid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 6610
    const/4 v0, 0x0

    .line 6611
    .local v0, "toastCount":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 6612
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6613
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v2, :cond_19

    .line 6614
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 6615
    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    if-ne v5, p1, :cond_16

    .line 6616
    add-int/lit8 v0, v0, 0x1

    .line 6613
    .end local v4  # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 6620
    .end local v3  # "i":I
    :cond_19
    :try_start_19
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v0, :cond_21

    const/4 v5, 0x1

    goto :goto_22

    :cond_21
    const/4 v5, 0x0

    :goto_22
    const-string/jumbo v6, "toast"

    invoke-interface {v3, v4, p1, v5, v6}, Landroid/app/IActivityManager;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_29

    .line 6623
    goto :goto_2a

    .line 6621
    :catch_29
    move-exception v3

    .line 6624
    :goto_2a
    return-void
.end method

.method public synthetic lambda$doChannelWarningToast$2$NotificationManagerService(Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "toastText"  # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5326
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 5327
    .local v0, "defaultWarningEnabled":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_notification_channel_warnings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    move v1, v2

    .line 5329
    .local v1, "warningEnabled":Z
    :goto_17
    if-eqz v1, :cond_2a

    .line 5330
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v3, v4, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 5332
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5334
    .end local v2  # "toast":Landroid/widget/Toast;
    :cond_2a
    return-void
.end method

.method public synthetic lambda$handleSavePolicyFile$0$NotificationManagerService()V
    .registers 6

    .line 683
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "NotificationService"

    const-string v1, "handleSavePolicyFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 687
    :try_start_e
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_14} :catch_3c
    .catchall {:try_start_e .. :try_end_14} :catchall_3a

    .line 691
    .local v1, "stream":Ljava/io/FileOutputStream;
    nop

    .line 694
    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_17
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;ZI)V

    .line 695
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_20
    .catchall {:try_start_17 .. :try_end_1f} :catchall_3a

    .line 699
    goto :goto_2d

    .line 696
    :catch_20
    move-exception v2

    .line 697
    .local v2, "e":Ljava/io/IOException;
    :try_start_21
    const-string v3, "NotificationService"

    const-string v4, "Failed to save policy file, restoring backup"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 700
    .end local v1  # "stream":Ljava/io/FileOutputStream;
    .end local v2  # "e":Ljava/io/IOException;
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_3a

    .line 701
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 702
    return-void

    .line 700
    :catchall_3a
    move-exception v1

    goto :goto_46

    .line 688
    :catch_3c
    move-exception v1

    .line 689
    .local v1, "e":Ljava/io/IOException;
    :try_start_3d
    const-string v2, "NotificationService"

    const-string v3, "Failed to save policy file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    monitor-exit v0

    return-void

    .line 700
    .end local v1  # "e":Ljava/io/IOException;
    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_3a

    throw v1
.end method

.method public synthetic lambda$playVibration$3$NotificationManagerService(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V
    .registers 12
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "effect"  # Landroid/os/VibrationEffect;

    .line 6367
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 6369
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 6367
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v0

    .line 6370
    .local v0, "waitMs":I
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

    .line 6372
    :cond_2b
    int-to-long v1, v0

    :try_start_2c
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 6373
    :goto_2f
    goto :goto_32

    :catch_30
    move-exception v1

    goto :goto_2f

    .line 6377
    :goto_32
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6378
    :try_start_35
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 6385
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Notification (delayed)"

    .line 6386
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v8

    .line 6385
    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    goto :goto_74

    .line 6390
    :cond_5a
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No vibration for canceled notification : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6392
    :goto_74
    monitor-exit v1

    .line 6393
    return-void

    .line 6392
    :catchall_76
    move-exception v2

    monitor-exit v1
    :try_end_78
    .catchall {:try_start_35 .. :try_end_78} :catchall_76

    throw v2
.end method

.method public synthetic lambda$registerDeviceConfigChange$1$NotificationManagerService(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4
    .param p1, "properties"  # Landroid/provider/DeviceConfig$Properties;

    .line 1988
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1989
    return-void

    .line 1991
    :cond_e
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    .line 1992
    const-string/jumbo v1, "nas_default_service"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1993
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultAssistantsIfNecessary()V

    .line 1995
    :cond_20
    return-void
.end method

.method protected loadPolicyFile()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 658
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "NotificationService"

    const-string/jumbo v1, "loadPolicyFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_c
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 660
    const/4 v1, 0x0

    .line 662
    .local v1, "infile":Ljava/io/InputStream;
    const/4 v2, 0x0

    :try_start_11
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v1, v3

    .line 663
    const/4 v3, -0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;ZI)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1c} :catch_49
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1c} :catch_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_1c} :catch_2f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_1c} :catch_22
    .catchall {:try_start_11 .. :try_end_1c} :catchall_20

    .line 675
    :try_start_1c
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_57

    goto :goto_50

    :catchall_20
    move-exception v2

    goto :goto_53

    .line 672
    :catch_22
    move-exception v2

    .line 673
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_23
    const-string v3, "NotificationService"

    const-string v4, "Unable to parse notification policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 675
    nop

    .end local v2  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_57

    goto :goto_50

    .line 670
    :catch_2f
    move-exception v2

    .line 671
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_30
    const-string v3, "NotificationService"

    const-string v4, "Unable to parse notification policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_20

    .line 675
    nop

    .end local v2  # "e":Ljava/lang/NumberFormatException;
    :try_start_38
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_57

    goto :goto_50

    .line 668
    :catch_3c
    move-exception v2

    .line 669
    .local v2, "e":Ljava/io/IOException;
    :try_start_3d
    const-string v3, "NotificationService"

    const-string v4, "Unable to read notification policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_20

    .line 675
    nop

    .end local v2  # "e":Ljava/io/IOException;
    :try_start_45
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_57

    goto :goto_50

    .line 664
    :catch_49
    move-exception v3

    .line 667
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_4a
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->readDefaultApprovedServices(I)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_20

    .line 675
    .end local v3  # "e":Ljava/io/FileNotFoundException;
    :try_start_4d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 676
    :goto_50
    nop

    .line 677
    .end local v1  # "infile":Ljava/io/InputStream;
    monitor-exit v0

    .line 678
    return-void

    .line 675
    .restart local v1  # "infile":Ljava/io/InputStream;
    :goto_53
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService;
    throw v2

    .line 677
    .end local v1  # "infile":Ljava/io/InputStream;
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService;
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_57

    throw v1
.end method

.method logSmartSuggestionsVisible(Lcom/android/server/notification/NotificationRecord;I)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "notificationLocation"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1152
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartRepliesAdded()I

    move-result v0

    if-gtz v0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartActionsAdded()I

    move-result v0

    if-lez v0, :cond_67

    .line 1153
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasSeenSmartReplies()Z

    move-result v0

    if-nez v0, :cond_67

    .line 1154
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSeenSmartReplies(Z)V

    .line 1155
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x566

    .line 1156
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x568

    .line 1158
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartRepliesAdded()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1157
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x63f

    .line 1160
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartActionsAdded()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1159
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x640

    .line 1163
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuggestionsGeneratedByAssistant()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1161
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x65d

    .line 1166
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x66f

    .line 1169
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getEditChoicesBeforeSending()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1167
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1170
    .local v0, "logMaker":Landroid/metrics/LogMaker;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1172
    .end local v0  # "logMaker":Landroid/metrics/LogMaker;
    :cond_67
    return-void
.end method

.method protected maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 2381
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasRecordedInterruption()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2382
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2383
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2384
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v3

    .line 2382
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportInterruptiveNotification(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2385
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setRecordedInterruption(Z)V

    .line 2387
    :cond_2d
    return-void
.end method

.method public onBootPhase(I)V
    .registers 6
    .param p1, "phase"  # I

    .line 2046
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_60

    .line 2048
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 2051
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 2052
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 2053
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2054
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->onSystemReady()V

    .line 2055
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/role/RoleManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2056
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/app/role/RoleManager;Landroid/content/pm/IPackageManager;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    .line 2057
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->init()V

    .line 2060
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mFirewall:Lcom/android/server/notification/NotificationFirewall;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mInterceptThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/notification/NotificationFirewall;->initialize(Landroid/content/Context;Landroid/os/Looper;)V

    goto :goto_7b

    .line 2063
    :cond_60
    const/16 v0, 0x258

    if-ne p1, v0, :cond_7b

    .line 2066
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->observe()V

    .line 2067
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onBootPhaseAppsCanStart()V

    .line 2068
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onBootPhaseAppsCanStart()V

    .line 2069
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0}, Lcom/android/server/notification/ConditionProviders;->onBootPhaseAppsCanStart()V

    .line 2070
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->registerDeviceConfigChange()V

    .line 2072
    :cond_7b
    :goto_7b
    return-void
.end method

.method public onStart()V
    .registers 28

    move-object/from16 v14, p0

    move-object/from16 v6, p0

    .line 1891
    new-instance v15, Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$8;

    invoke-direct {v1, v14}, Lcom/android/server/notification/NotificationManagerService$8;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v2, v14, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v15, v0, v1, v2}, Lcom/android/server/notification/SnoozeHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/SnoozeHelper$Callback;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    .line 1907
    .local v15, "snoozeHelper":Lcom/android/server/notification/SnoozeHelper;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v13, v0

    .line 1909
    .local v13, "systemDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    .line 1910
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-class v0, Lcom/android/server/lights/LightsManager;

    .line 1911
    invoke-virtual {v14, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/lights/LightsManager;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object v11, v0

    .line 1912
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-direct {v0, v14, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/pm/IPackageManager;)V

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-object v12, v0

    .line 1913
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v14, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    iget-object v4, v14, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 1914
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    new-instance v0, Lcom/android/server/notification/ConditionProviders;

    move-object v1, v13

    .end local v13  # "systemDir":Ljava/io/File;
    .local v1, "systemDir":Ljava/io/File;
    move-object v13, v0

    .line 1915
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v14, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/notification/ConditionProviders;-><init>(Landroid/content/Context;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    new-instance v0, Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v16, v0

    .line 1916
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/notification/NotificationUsageStats;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "notification_policy.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "notification-policy"

    invoke-direct {v0, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1919
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/app/ActivityManager;

    .line 1920
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getGroupHelper()Lcom/android/server/notification/GroupHelper;

    move-result-object v19

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v20

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1921
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/app/usage/UsageStatsManagerInternal;

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1922
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1923
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v23

    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1924
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1925
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "appops"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/AppOpsManager;

    .line 1926
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/UserManager;

    .line 1909
    const/4 v0, 0x0

    move-object v2, v14

    move-object v14, v0

    invoke-virtual/range {v6 .. v26}, Lcom/android/server/notification/NotificationManagerService;->init(Landroid/os/Looper;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/app/AppOpsManager;Landroid/os/UserManager;)V

    .line 1929
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1930
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1931
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1932
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1933
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1934
    const-string v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1935
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1936
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1937
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1938
    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1939
    const-string v3, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1940
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1942
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1943
    .local v3, "pkgFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1944
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1945
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1946
    const-string v4, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1947
    const-string v4, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1948
    const-string/jumbo v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1949
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1952
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1953
    .local v4, "suspendedPkgFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1954
    const-string v5, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1955
    const-string v5, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1956
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    move-object v8, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1959
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v19, v5

    .line 1960
    .local v19, "sdFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v16

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v21}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1963
    new-instance v5, Landroid/content/IntentFilter;

    sget-object v6, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1964
    .local v5, "timeoutFilter":Landroid/content/IntentFilter;
    const-string/jumbo v6, "timeout"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1965
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1967
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.os.action.SETTING_RESTORED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1968
    .local v6, "settingsRestoredFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v2, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1970
    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1971
    .local v7, "localeChangedFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v2, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1973
    iget-object v8, v2, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    const-string/jumbo v9, "notification"

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v2, v9, v8, v10, v11}, Lcom/android/server/notification/NotificationManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1975
    const-class v8, Lcom/android/server/notification/NotificationManagerInternal;

    iget-object v9, v2, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    invoke-virtual {v2, v8, v9}, Lcom/android/server/notification/NotificationManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1978
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->registerBreathLight()V

    .line 1979
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->registerShutdownBroadcast()V

    .line 1981
    return-void
.end method

.method protected playInCallNotification()V
    .registers 4

    .line 6432
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 6433
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "in_call_notification_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_23

    .line 6435
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$12;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$12;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6455
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$12;->start()V

    .line 6457
    :cond_23
    return-void
.end method

.method protected readDefaultApprovedServices(I)V
    .registers 14
    .param p1, "userId"  # I

    .line 538
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040159

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "defaultListenerAccess":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, ":"

    const/4 v3, 0x1

    if-eqz v0, :cond_47

    .line 542
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_1b
    if-ge v6, v5, :cond_47

    aget-object v7, v4, v6

    .line 544
    .local v7, "whitelisted":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/high16 v9, 0xc0000

    .line 545
    invoke-virtual {v8, v7, v9, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->queryPackageForServices(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v8

    .line 548
    .local v8, "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_44

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .line 550
    .local v10, "cn":Landroid/content/ComponentName;
    :try_start_37
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v11

    invoke-interface {v11, v10, p1, v3}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3e} :catch_3f

    .line 554
    goto :goto_43

    .line 552
    :catch_3f
    move-exception v11

    .line 553
    .local v11, "e":Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    .line 555
    .end local v10  # "cn":Landroid/content/ComponentName;
    .end local v11  # "e":Landroid/os/RemoteException;
    :goto_43
    goto :goto_2b

    .line 542
    .end local v7  # "whitelisted":Ljava/lang/String;
    .end local v8  # "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_44
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 559
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040158

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 561
    .local v4, "defaultDndAccess":Ljava/lang/String;
    if-eqz v4, :cond_70

    .line 563
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    :goto_5d
    if-ge v1, v5, :cond_70

    aget-object v6, v2, v1

    .line 565
    .local v6, "whitelisted":Ljava/lang/String;
    :try_start_61
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v7

    invoke-interface {v7, v6, v3}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_68} :catch_69

    .line 568
    goto :goto_6d

    .line 566
    :catch_69
    move-exception v7

    .line 567
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 563
    .end local v6  # "whitelisted":Ljava/lang/String;
    .end local v7  # "e":Landroid/os/RemoteException;
    :goto_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 572
    :cond_70
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->setDefaultAssistantForUser(I)V

    .line 573
    return-void
.end method

.method readPolicyXml(Ljava/io/InputStream;ZI)V
    .registers 11
    .param p1, "stream"  # Ljava/io/InputStream;
    .param p2, "forRestore"  # Z
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 605
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 606
    const-string/jumbo v1, "notification-policy"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 607
    const/4 v1, 0x0

    .line 608
    .local v1, "migratedManagedServices":Z
    const/4 v2, 0x1

    if-eqz p2, :cond_21

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v3, p3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v3

    if-eqz v3, :cond_21

    move v3, v2

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    .line 609
    .local v3, "ineligibleForManagedServices":Z
    :goto_22
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 610
    .local v4, "outerDepth":I
    :cond_26
    :goto_26
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 611
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "zen"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 612
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v5, v0, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;ZI)V

    goto :goto_51

    .line 613
    :cond_3f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ranking"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 614
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v5, v0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;ZI)V

    .line 616
    :cond_51
    :goto_51
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 617
    if-eqz v3, :cond_66

    .line 618
    goto :goto_26

    .line 620
    :cond_66
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {v5, v0, v6, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->readXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    .line 621
    const/4 v1, 0x1

    goto :goto_aa

    .line 622
    :cond_6f
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 623
    if-eqz v3, :cond_84

    .line 624
    goto :goto_26

    .line 626
    :cond_84
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {v5, v0, v6, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->readXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    .line 627
    const/4 v1, 0x1

    goto :goto_aa

    .line 628
    :cond_8d
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v5}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 629
    if-eqz v3, :cond_a2

    .line 630
    goto :goto_26

    .line 632
    :cond_a2
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {v5, v0, v6, p2, p3}, Lcom/android/server/notification/ConditionProviders;->readXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    .line 634
    const/4 v1, 0x1

    .line 636
    :cond_aa
    :goto_aa
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "allow-secure-notifications-on-lockscreen"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 637
    if-eqz p2, :cond_bc

    if-eqz p3, :cond_bc

    .line 638
    goto/16 :goto_26

    .line 640
    :cond_bc
    const/4 v5, 0x0

    .line 641
    const-string/jumbo v6, "value"

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/server/notification/NotificationManagerService;->safeBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    goto/16 :goto_26

    .line 646
    :cond_cc
    if-nez v1, :cond_e0

    .line 647
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->migrateToXml()V

    .line 648
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->migrateToXml()V

    .line 649
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v2}, Lcom/android/server/notification/ConditionProviders;->migrateToXml()V

    .line 650
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 653
    :cond_e0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultAssistantsIfNecessary()V

    .line 654
    return-void
.end method

.method removeAutogroupKeyLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 4491
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 4492
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_b

    .line 4493
    return-void

    .line 4495
    :cond_b
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 4496
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 4497
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationUnautogrouped(Ljava/lang/String;)V

    .line 4498
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v1}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 4500
    :cond_1f
    return-void
.end method

.method protected reportSeen(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 2305
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isProxied()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2306
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2307
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v2

    const/16 v3, 0xa

    .line 2306
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 2310
    :cond_1d
    return-void
.end method

.method protected reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;

    .line 2394
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2395
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v2

    .line 2394
    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 2397
    return-void
.end method

.method resetAssistantUserSet(I)V
    .registers 4
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 8936
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setUserSet(IZ)V

    .line 8937
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 8938
    return-void
.end method

.method resolveNotificationUid(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 9
    .param p1, "callingPkg"  # Ljava/lang/String;
    .param p2, "targetPkg"  # Ljava/lang/String;
    .param p3, "callingUid"  # I
    .param p4, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5340
    const/4 v0, -0x1

    if-ne p4, v0, :cond_4

    .line 5341
    const/4 p4, 0x0

    .line 5344
    :cond_4
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isCallerSameApp(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 5345
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 5346
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isCallerSameApp(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 5347
    :cond_16
    return p3

    .line 5350
    :cond_17
    const/4 v1, -0x1

    .line 5352
    .local v1, "targetUid":I
    :try_start_18
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2, p4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_1e} :catch_20

    move v1, v2

    .line 5355
    goto :goto_21

    .line 5353
    :catch_20
    move-exception v2

    .line 5357
    :goto_21
    if-eq v1, v0, :cond_32

    invoke-direct {p0, p1, p3}, Lcom/android/server/notification/NotificationManagerService;->isCallerAndroid(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 5358
    invoke-virtual {v0, p2, v1, p1, p3}, Lcom/android/server/notification/PreferencesHelper;->isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 5360
    :cond_31
    return v1

    .line 5363
    :cond_32
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cannot post for pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method scheduleTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 9
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6076
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_60

    .line 6077
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 6080
    const-string/jumbo v4, "timeout"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 6081
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 6080
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 6082
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 6083
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "key"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 6077
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 6085
    .local v0, "pi":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    .line 6086
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 6085
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 6088
    .end local v0  # "pi":Landroid/app/PendingIntent;
    :cond_60
    return-void
.end method

.method sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "notification"  # Landroid/app/Notification;
    .param p2, "packageName"  # Ljava/lang/CharSequence;

    .line 6884
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 6885
    return-void

    .line 6888
    :cond_9
    const/16 v0, 0x40

    .line 6889
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 6890
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 6891
    const-class v1, Landroid/app/Notification;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 6892
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 6893
    iget-object v1, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 6894
    .local v1, "tickerText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 6895
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6898
    :cond_2d
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6899
    return-void
.end method

.method setAccessibilityManager(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 2
    .param p1, "am"  # Landroid/view/accessibility/AccessibilityManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1721
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1722
    return-void
.end method

.method setAudioManager(Landroid/media/AudioManager;)V
    .registers 2
    .param p1, "audioMananger"  # Landroid/media/AudioManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1589
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 1590
    return-void
.end method

.method protected setDefaultAssistantForUser(I)V
    .registers 10
    .param p1, "userId"  # I

    .line 576
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 577
    const/4 v2, 0x0

    const/high16 v3, 0xc0000

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->queryPackageForServices(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 580
    .local v0, "validAssistants":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v1, "candidateStrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "systemui"

    const-string/jumbo v3, "nas_default_service"

    invoke-static {v2, v3}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040152

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 588
    .local v3, "candidateStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 589
    goto :goto_36

    .line 591
    :cond_49
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 592
    .local v4, "candidate":Landroid/content/ComponentName;
    const-string v5, "NotificationService"

    if-eqz v4, :cond_71

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 593
    const/4 v2, 0x1

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZ)V

    .line 594
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v2, "Set default NAS to be %s in %d"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return-void

    .line 597
    :cond_71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid default NAS config is found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    .end local v3  # "candidateStr":Ljava/lang/String;
    .end local v4  # "candidate":Landroid/content/ComponentName;
    goto :goto_36

    .line 600
    :cond_86
    return-void
.end method

.method setFallbackVibrationPattern([J)V
    .registers 2
    .param p1, "vibrationPattern"  # [J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1673
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    .line 1674
    return-void
.end method

.method setHandler(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V
    .registers 2
    .param p1, "handler"  # Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1668
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1669
    return-void
.end method

.method setHints(I)V
    .registers 2
    .param p1, "hints"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1594
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 1595
    return-void
.end method

.method setIsAutomotive(Z)V
    .registers 2
    .param p1, "isAutomotive"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1701
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    .line 1702
    return-void
.end method

.method setIsTelevision(Z)V
    .registers 2
    .param p1, "isTelevision"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1711
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    .line 1712
    return-void
.end method

.method setLights(Lcom/android/server/lights/Light;)V
    .registers 3
    .param p1, "light"  # Lcom/android/server/lights/Light;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1604
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 1605
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 1606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    .line 1607
    return-void
.end method

.method protected setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZ)V
    .registers 13
    .param p1, "assistant"  # Landroid/content/ComponentName;
    .param p2, "baseUserId"  # I
    .param p3, "granted"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4424
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 4425
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v0, :cond_7f

    .line 4426
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 4427
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 4428
    .local v3, "userId":I
    const/4 v4, 0x0

    if-nez p1, :cond_2f

    .line 4429
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 4430
    invoke-virtual {v5, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v5

    .line 4429
    invoke-static {v5}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4431
    .local v5, "allowedAssistant":Landroid/content/ComponentName;
    if-eqz v5, :cond_c

    .line 4432
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZ)V

    goto :goto_c

    .line 4437
    .end local v5  # "allowedAssistant":Landroid/content/ComponentName;
    :cond_2f
    if-eqz p3, :cond_47

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4438
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v8}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getRequiredPermission()Ljava/lang/String;

    move-result-object v8

    .line 4437
    invoke-interface {v5, v6, v7, v8}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 4439
    :cond_47
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3, v4, p3}, Lcom/android/server/notification/ConditionProviders;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 4441
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 4444
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4446
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x40000000  # 2.0f

    .line 4447
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 4448
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const/4 v7, 0x0

    .line 4444
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4450
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 4452
    .end local v2  # "user":Landroid/content/pm/UserInfo;
    .end local v3  # "userId":I
    :cond_7e
    goto :goto_c

    .line 4454
    :cond_7f
    return-void
.end method

.method setNotificationEffectsEnabledForAutomotive(Z)V
    .registers 2
    .param p1, "isEnabled"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1706
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationEffectsEnabledForAutomotive:Z

    .line 1707
    return-void
.end method

.method setPackageManager(Landroid/content/pm/IPackageManager;)V
    .registers 2
    .param p1, "packageManager"  # Landroid/content/pm/IPackageManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1678
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1679
    return-void
.end method

.method setPreferencesHelper(Lcom/android/server/notification/PreferencesHelper;)V
    .registers 2
    .param p1, "prefHelper"  # Lcom/android/server/notification/PreferencesHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1687
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    return-void
.end method

.method setRankingHandler(Lcom/android/server/notification/RankingHandler;)V
    .registers 2
    .param p1, "rankingHandler"  # Lcom/android/server/notification/RankingHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1691
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 1692
    return-void
.end method

.method setRankingHelper(Lcom/android/server/notification/RankingHelper;)V
    .registers 2
    .param p1, "rankingHelper"  # Lcom/android/server/notification/RankingHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1683
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1684
    return-void
.end method

.method setScreenOn(Z)V
    .registers 2
    .param p1, "on"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1611
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    .line 1612
    return-void
.end method

.method setSystemReady(Z)V
    .registers 2
    .param p1, "systemReady"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1663
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 1664
    return-void
.end method

.method setUsageStats(Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 2
    .param p1, "us"  # Lcom/android/server/notification/NotificationUsageStats;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1716
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 1717
    return-void
.end method

.method setVibrator(Landroid/os/Vibrator;)V
    .registers 2
    .param p1, "vibrator"  # Landroid/os/Vibrator;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1599
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 1600
    return-void
.end method

.method setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2
    .param p1, "zenHelper"  # Lcom/android/server/notification/ZenModeHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1696
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 1697
    return-void
.end method

.method shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 8
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 6287
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 6288
    .local v0, "notification":Landroid/app/Notification;
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_10

    .line 6289
    return v2

    .line 6293
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v1

    .line 6294
    .local v1, "disableEffects":Ljava/lang/String;
    if-eqz v1, :cond_1a

    .line 6295
    invoke-static {p1, v1}, Lcom/android/server/notification/ZenLog;->traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 6296
    return v2

    .line 6300
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 6301
    return v2

    .line 6305
    :cond_21
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 6306
    invoke-virtual {v0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 6307
    return v2

    .line 6312
    :cond_30
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 6313
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationUsageStats;->isAlertRateLimited(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 6314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Muting recently noisy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NotificationService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6315
    return v2

    .line 6318
    :cond_59
    const/4 v2, 0x0

    return v2
.end method

.method showNextToastLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mToastQueue"
        }
    .end annotation

    .line 6461
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 6462
    .local v0, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :goto_9
    if-eqz v0, :cond_83

    .line 6463
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

    .line 6465
    :cond_31
    :try_start_31
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    invoke-interface {v2, v4}, Landroid/app/ITransientNotification;->show(Landroid/os/IBinder;)V

    .line 6466
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleDurationReachedLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3b} :catch_3c

    .line 6467
    return-void

    .line 6468
    :catch_3c
    move-exception v2

    .line 6469
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object died trying to show notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6472
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 6473
    .local v3, "index":I
    if-ltz v3, :cond_6a

    .line 6474
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6476
    :cond_6a
    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveIfNeededLocked(I)V

    .line 6477
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_81

    .line 6478
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    goto :goto_82

    .line 6480
    :cond_81
    const/4 v0, 0x0

    .line 6482
    .end local v2  # "e":Landroid/os/RemoteException;
    .end local v3  # "index":I
    :goto_82
    goto :goto_9

    .line 6484
    :cond_83
    return-void
.end method

.method protected simulatePackageDistractionBroadcast(I[Ljava/lang/String;)V
    .registers 7
    .param p1, "flag"  # I
    .param p2, "pkgs"  # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 8968
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8969
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.intent.extra.changed_package_list"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8970
    const-string v1, "android.intent.extra.distraction_restrictions"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8972
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8973
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8975
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 8976
    return-void
.end method

.method protected simulatePackageSuspendBroadcast(ZLjava/lang/String;)V
    .registers 8
    .param p1, "suspend"  # Z
    .param p2, "pkg"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 8949
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    .line 8952
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8953
    .local v0, "extras":Landroid/os/Bundle;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8956
    if-eqz p1, :cond_18

    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    goto :goto_1a

    .line 8957
    :cond_18
    const-string v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    :goto_1a
    nop

    .line 8958
    .local v1, "action":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8959
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8961
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 8962
    return-void
.end method

.method snoozeNotificationInt(Ljava/lang/String;JLjava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 15
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "duration"  # J
    .param p4, "snoozeCriterionId"  # Ljava/lang/String;
    .param p5, "listener"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7271
    if-nez p5, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    .line 7272
    .local v0, "listenerName":Ljava/lang/String;
    :goto_a
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_12

    if-eqz p4, :cond_14

    :cond_12
    if-nez p1, :cond_15

    .line 7273
    :cond_14
    return-void

    .line 7276
    :cond_15
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_38

    .line 7277
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-string/jumbo v2, "snooze event(%s, %d, %s, %s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7281
    :cond_38
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v8, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7282
    return-void
.end method

.method protected unhideNotificationsForPackages([Ljava/lang/String;)V
    .registers 9
    .param p1, "pkgs"  # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7535
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7536
    :try_start_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 7537
    .local v1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7538
    .local v2, "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7539
    .local v3, "numNotifications":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    if-ge v4, v3, :cond_33

    .line 7540
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 7541
    .local v5, "rec":Lcom/android/server/notification/NotificationRecord;
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 7542
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 7543
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7539
    .end local v5  # "rec":Lcom/android/server/notification/NotificationRecord;
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 7547
    .end local v4  # "i":I
    :cond_33
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v4, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyUnhiddenLocked(Ljava/util/List;)V

    .line 7548
    .end local v1  # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2  # "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v3  # "numNotifications":I
    monitor-exit v0

    .line 7549
    return-void

    .line 7548
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 6
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "listener"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7285
    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    .line 7286
    .local v0, "listenerName":Ljava/lang/String;
    :goto_a
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_23

    .line 7287
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string/jumbo v2, "unsnooze event(%s, %s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7289
    :cond_23
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/SnoozeHelper;->repost(Ljava/lang/String;)V

    .line 7290
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 7291
    return-void
.end method

.method updateLightsLocked()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7352
    const/4 v0, 0x0

    .line 7367
    .local v0, "ledNotification":Lcom/android/server/notification/NotificationRecord;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string/jumbo v3, "ledNotification = "

    const-string v4, "LedTest"

    if-ge v1, v2, :cond_56

    .line 7368
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7369
    .local v2, "owner":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 7370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7372
    if-eqz v0, :cond_53

    .line 7373
    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v5}, Lcom/android/server/notification/NotificationManagerService;->shouldShowLights(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    .line 7374
    .local v5, "showLight":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shouldShowLights = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7376
    if-eqz v5, :cond_52

    .line 7377
    goto :goto_56

    .line 7379
    :cond_52
    const/4 v0, 0x0

    .line 7367
    .end local v2  # "owner":Ljava/lang/String;
    .end local v5  # "showLight":Z
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7383
    .end local v1  # "i":I
    :cond_56
    :goto_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mInCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mScreenOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7387
    if-eqz v0, :cond_95

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-nez v1, :cond_95

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    if-eqz v1, :cond_87

    goto :goto_95

    .line 7397
    :cond_87
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v1

    .line 7398
    .local v1, "light":Lcom/android/server/notification/NotificationRecord$Light;
    if-eqz v1, :cond_a4

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-eqz v2, :cond_a4

    .line 7403
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->postDelayNotiLightFlashing()V

    goto :goto_a4

    .line 7390
    .end local v1  # "light":Lcom/android/server/notification/NotificationRecord$Light;
    :cond_95
    :goto_95
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->turnOffBreathLight()V

    .line 7391
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mFlashSender:Landroid/app/PendingIntent;

    if-eqz v1, :cond_a4

    .line 7392
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 7393
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mFlashSender:Landroid/app/PendingIntent;

    .line 7407
    :cond_a4
    :goto_a4
    return-void
.end method

.method updateNotificationUserFilter(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 15
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "id"  # I
    .param p4, "userId"  # I
    .param p5, "key"  # I

    .line 9092
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v8, Lcom/android/server/notification/NotificationManagerService$16;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService$16;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v0, v8}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 9114
    return-void
.end method

.method updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V
    .registers 21
    .param p1, "newRecord"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "oldRecord"  # Lcom/android/server/notification/NotificationRecord;
    .param p3, "targetPkg"  # Ljava/lang/String;
    .param p4, "targetUserId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7055
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    if-eqz v8, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_11
    move-object v10, v0

    .line 7056
    .local v10, "key":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v11, "NotificationService"

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": updating permissions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7058
    :cond_2c
    const/4 v0, 0x0

    if-eqz v8, :cond_34

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGrantableUris()Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_35

    :cond_34
    move-object v1, v0

    :goto_35
    move-object v12, v1

    .line 7059
    .local v12, "newUris":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    if-eqz v9, :cond_3d

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getGrantableUris()Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_3e

    :cond_3d
    move-object v1, v0

    :goto_3e
    move-object v13, v1

    .line 7062
    .local v13, "oldUris":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    if-nez v12, :cond_44

    if-nez v13, :cond_44

    .line 7063
    return-void

    .line 7067
    :cond_44
    const/4 v1, 0x0

    .line 7068
    .local v1, "permissionOwner":Landroid/os/IBinder;
    if-eqz v8, :cond_4b

    if-nez v1, :cond_4b

    .line 7069
    iget-object v1, v8, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    .line 7071
    :cond_4b
    if-eqz v9, :cond_51

    if-nez v1, :cond_51

    .line 7072
    iget-object v1, v9, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    .line 7076
    :cond_51
    if-eqz v12, :cond_84

    if-nez v1, :cond_84

    .line 7077
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_6d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": creating owner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7078
    :cond_6d
    iget-object v2, v7, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOTIF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 7082
    :cond_84
    if-nez v12, :cond_bc

    if-eqz v1, :cond_bc

    .line 7083
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 7085
    .local v2, "ident":J
    :try_start_8c
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v4, :cond_a4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": destroying owner"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7086
    :cond_a4
    iget-object v4, v7, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 v5, -0x1

    .line 7087
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 7086
    invoke-interface {v4, v1, v0, v5, v6}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_b2
    .catchall {:try_start_8c .. :try_end_b2} :catchall_b7

    .line 7088
    const/4 v0, 0x0

    .line 7090
    .end local v1  # "permissionOwner":Landroid/os/IBinder;
    .local v0, "permissionOwner":Landroid/os/IBinder;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7091
    goto :goto_bd

    .line 7090
    .end local v0  # "permissionOwner":Landroid/os/IBinder;
    .restart local v1  # "permissionOwner":Landroid/os/IBinder;
    :catchall_b7
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 7095
    .end local v2  # "ident":J
    :cond_bc
    move-object v0, v1

    .end local v1  # "permissionOwner":Landroid/os/IBinder;
    .restart local v0  # "permissionOwner":Landroid/os/IBinder;
    :goto_bd
    if-eqz v12, :cond_105

    if-eqz v0, :cond_105

    .line 7096
    const/4 v1, 0x0

    move v14, v1

    .local v14, "i":I
    :goto_c3
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v14, v1, :cond_105

    .line 7097
    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/net/Uri;

    .line 7098
    .local v15, "uri":Landroid/net/Uri;
    if-eqz v13, :cond_d8

    invoke-virtual {v13, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_102

    .line 7099
    :cond_d8
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_f3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": granting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7100
    :cond_f3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v4

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v15

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    .line 7096
    .end local v15  # "uri":Landroid/net/Uri;
    :cond_102
    add-int/lit8 v14, v14, 0x1

    goto :goto_c3

    .line 7107
    .end local v14  # "i":I
    :cond_105
    if-eqz v13, :cond_143

    if-eqz v0, :cond_143

    .line 7108
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10a
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_143

    .line 7109
    invoke-virtual {v13, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 7110
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v12, :cond_11e

    invoke-virtual {v12, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_140

    .line 7111
    :cond_11e
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_139

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": revoking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7112
    :cond_139
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v3

    invoke-direct {v7, v0, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 7108
    .end local v2  # "uri":Landroid/net/Uri;
    :cond_140
    add-int/lit8 v1, v1, 0x1

    goto :goto_10a

    .line 7117
    .end local v1  # "i":I
    :cond_143
    if-eqz v8, :cond_147

    .line 7118
    iput-object v0, v8, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    .line 7120
    :cond_147
    return-void
.end method
