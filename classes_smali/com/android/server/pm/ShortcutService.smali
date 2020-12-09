.class public Lcom/android/server/pm/ShortcutService;
.super Landroid/content/pm/IShortcutService$Stub;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutService$MyShellCommand;,
        Lcom/android/server/pm/ShortcutService$CommandException;,
        Lcom/android/server/pm/ShortcutService$DumpFilter;,
        Lcom/android/server/pm/ShortcutService$LocalService;,
        Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;,
        Lcom/android/server/pm/ShortcutService$Lifecycle;,
        Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;,
        Lcom/android/server/pm/ShortcutService$ShortcutOperation;,
        Lcom/android/server/pm/ShortcutService$Stats;,
        Lcom/android/server/pm/ShortcutService$ConfigConstants;
    }
.end annotation


# static fields
.field private static ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field static final DEBUG:Z = false

.field static final DEBUG_LOAD:Z = false

.field static final DEBUG_PROCSTATE:Z = false

.field static final DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_ICON_PERSIST_QUALITY:I = 0x64
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_MAX_ICON_DIMENSION_DP:I = 0x60
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_MAX_ICON_DIMENSION_LOWRAM_DP:I = 0x30
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_MAX_SHORTCUTS_PER_APP:I = 0xa
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_MAX_UPDATES_PER_INTERVAL:I = 0xa
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_RESET_INTERVAL_SEC:J = 0x15180L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_SAVE_DELAY_MS:I = 0xbb8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DIRECTORY_BITMAPS:Ljava/lang/String; = "bitmaps"

.field static final DIRECTORY_DUMP:Ljava/lang/String; = "shortcut_dump"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DIRECTORY_PER_USER:Ljava/lang/String; = "shortcut_service"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DUMMY_MAIN_ACTIVITY:Ljava/lang/String; = "android.__dummy__"

.field private static EMPTY_RESOLVE_INFO:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final FILENAME_BASE_STATE:Ljava/lang/String; = "shortcut_service.xml"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FILENAME_USER_PACKAGES:Ljava/lang/String; = "shortcuts.xml"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final KEY_ICON_SIZE:Ljava/lang/String; = "iconSize"

.field private static final KEY_LOW_RAM:Ljava/lang/String; = "lowRam"

.field private static final KEY_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final LAUNCHER_INTENT_CATEGORY:Ljava/lang/String; = "android.intent.category.LAUNCHER"

.field static final OPERATION_ADD:I = 0x1

.field static final OPERATION_SET:I = 0x0

.field static final OPERATION_UPDATE:I = 0x2

.field private static final PACKAGE_MATCH_FLAGS:I = 0xc2000

.field private static PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROCESS_STATE_FOREGROUND_THRESHOLD:I = 0x6

.field static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_LAST_RESET_TIME:Ljava/lang/String; = "last_reset_time"

.field private static final TAG_ROOT:Ljava/lang/String; = "root"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mContext:Landroid/content/Context;

.field private mDirtyUserIds:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mIconPersistQuality:I

.field private mLastWtfStacktrace:Ljava/lang/Exception;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMaxIconDimension:I

.field private mMaxShortcuts:I

.field mMaxUpdatesPerInterval:I

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field final mPackageMonitor:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mRawLastResetTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetInterval:J

.field private mSaveDelayMillis:I

.field private final mSaveDirtyInfoRunner:Ljava/lang/Runnable;

.field private final mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

.field private final mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

.field private final mShortcutNonPersistentUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/ShortcutNonPersistentUser;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

.field private final mStatLogger:Lcom/android/internal/util/StatLogger;

.field final mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidState:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field final mUnlockedUsers:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUnlockedUsers"
        }
    .end annotation
.end field

.field private final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/ShortcutUser;",
            ">;"
        }
    .end annotation
.end field

.field private mWtfCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 174
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    .line 259
    new-instance v0, Lcom/android/server/pm/ShortcutService$1;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate;

    .line 266
    new-instance v0, Lcom/android/server/pm/ShortcutService$2;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 427
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 428
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .registers 23
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 431
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;-><init>()V

    .line 254
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    .line 283
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    .line 289
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    .line 328
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    .line 331
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    .line 334
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    .line 337
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 347
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 374
    new-instance v1, Lcom/android/internal/util/StatLogger;

    const-string v2, "getHomeActivities()"

    const-string v3, "Launcher permission check"

    const-string v4, "getPackageInfo()"

    const-string v5, "getPackageInfo(SIG)"

    const-string v6, "getApplicationInfo"

    const-string v7, "cleanupDanglingBitmaps"

    const-string v8, "getActivity+metadata"

    const-string v9, "getInstalledPackages"

    const-string v10, "checkPackageChanges"

    const-string v11, "getApplicationResources"

    const-string/jumbo v12, "resourceNameLookup"

    const-string v13, "getLauncherActivity"

    const-string v14, "checkLauncherActivity"

    const-string v15, "isActivityEnabled"

    const-string/jumbo v16, "packageUpdateCheck"

    const-string v17, "asyncPreloadUserDelay"

    const-string v18, "getDefaultLauncher()"

    filled-new-array/range {v2 .. v18}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 411
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    .line 417
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 496
    new-instance v1, Lcom/android/server/pm/ShortcutService$3;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutService$3;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUidObserver:Landroid/app/IUidObserver;

    .line 1087
    new-instance v1, Lcom/android/server/pm/-$$Lambda$jZzCUQd1whVIqs_s1XMLbFqTP_E;

    invoke-direct {v1, v0}, Lcom/android/server/pm/-$$Lambda$jZzCUQd1whVIqs_s1XMLbFqTP_E;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    .line 2879
    new-instance v1, Lcom/android/server/pm/ShortcutService$4;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutService$4;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2914
    new-instance v1, Lcom/android/server/pm/ShortcutService$5;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutService$5;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Landroid/content/BroadcastReceiver;

    .line 432
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 433
    const-class v1, Landroid/content/pm/ShortcutServiceInternal;

    new-instance v2, Lcom/android/server/pm/ShortcutService$LocalService;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/pm/ShortcutService$LocalService;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$1;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 434
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    .line 435
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 436
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 437
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 436
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 438
    const-class v1, Landroid/os/UserManagerInternal;

    .line 439
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    .line 438
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 440
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 441
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 440
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 442
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 443
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 442
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 445
    new-instance v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 446
    new-instance v1, Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutBitmapSaver;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    .line 447
    new-instance v1, Lcom/android/server/pm/ShortcutDumpFiles;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutDumpFiles;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    .line 449
    if-eqz p3, :cond_116

    .line 450
    return-void

    .line 457
    :cond_116
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 458
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    const-string/jumbo v1, "package"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 463
    const/16 v7, 0x3e8

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 464
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 467
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 468
    const-string v1, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v11, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 470
    iget-object v8, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Landroid/content/BroadcastReceiver;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 473
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 474
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 476
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 479
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRegisterUidObserver(Landroid/app/IUidObserver;I)V

    .line 481
    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/PackageInfo;)Z
    .registers 1

    .line 151
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageDataCleared(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/ShortcutService;)V
    .registers 1

    .line 151
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadConfigurationLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V
    .registers 4

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/ShortcutService;)V
    .registers 1

    .line 151
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesForce()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/pm/ShortcutService;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->setReturnedByServer(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/pm/ShortcutService;)Lcom/android/server/pm/ShortcutBitmapSaver;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
    .registers 7

    .line 151
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/pm/ShortcutService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageUpdateFinished(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method private assignImplicitRanks(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 1729
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    .line 1730
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    .line 1729
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1732
    :cond_14
    return-void
.end method

.method private cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V
    .registers 6

    .line 2501
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2502
    :try_start_3
    new-instance v1, Lcom/android/server/pm/-$$Lambda$ShortcutService$t1am7miIbc4iP6CfSL0gFgEsO0Y;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/-$$Lambda$ShortcutService$t1am7miIbc4iP6CfSL0gFgEsO0Y;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    .line 2505
    monitor-exit v0

    .line 2506
    return-void

    .line 2505
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method private cleanupDanglingBitmapDirectoriesLocked(I)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1302
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 1304
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2

    .line 1306
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v3

    .line 1307
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1308
    if-nez v3, :cond_13

    .line 1309
    return-void

    .line 1311
    :cond_13
    array-length v4, v3

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v4, :cond_34

    aget-object v6, v3, v5

    .line 1312
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_20

    .line 1313
    goto :goto_31

    .line 1315
    :cond_20
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1319
    invoke-virtual {v2, v7}, Lcom/android/server/pm/ShortcutUser;->hasPackage(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2e

    .line 1323
    invoke-virtual {p0, p1, v7}, Lcom/android/server/pm/ShortcutService;->cleanupBitmapsForPackage(ILjava/lang/String;)V

    goto :goto_31

    .line 1325
    :cond_2e
    invoke-direct {p0, p1, v2, v7, v6}, Lcom/android/server/pm/ShortcutService;->cleanupDanglingBitmapFilesLocked(ILcom/android/server/pm/ShortcutUser;Ljava/lang/String;Ljava/io/File;)V

    .line 1311
    :goto_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 1328
    :cond_34
    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 1329
    return-void
.end method

.method private cleanupDanglingBitmapFilesLocked(ILcom/android/server/pm/ShortcutUser;Ljava/lang/String;Ljava/io/File;)V
    .registers 7

    .line 1340
    nop

    .line 1341
    invoke-virtual {p2, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->getUsedBitmapFiles()Landroid/util/ArraySet;

    move-result-object p1

    .line 1343
    invoke-virtual {p4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    array-length p3, p2

    const/4 p4, 0x0

    :goto_f
    if-ge p4, p3, :cond_2a

    aget-object v0, p2, p4

    .line 1344
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1345
    goto :goto_27

    .line 1347
    :cond_1a
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1348
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1352
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1343
    :cond_27
    :goto_27
    add-int/lit8 p4, p4, 0x1

    goto :goto_f

    .line 1355
    :cond_2a
    return-void
.end method

.method private dumpCheckin(Ljava/io/PrintWriter;Z)V
    .registers 7

    .line 4000
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4002
    :try_start_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 4004
    const/4 v2, 0x0

    :goto_9
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 4005
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutUser;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/ShortcutUser;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 4004
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4008
    :cond_23
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 4010
    const-string/jumbo v2, "shortcut"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4011
    const-string v1, "lowRam"

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 4012
    const-string v1, "iconSize"

    iget v2, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4014
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_46} :catch_49
    .catchall {:try_start_3 .. :try_end_46} :catchall_47

    .line 4017
    goto :goto_51

    .line 4018
    :catchall_47
    move-exception p1

    goto :goto_53

    .line 4015
    :catch_49
    move-exception p1

    .line 4016
    :try_start_4a
    const-string p2, "ShortcutService"

    const-string v1, "Unable to write in json"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4018
    :goto_51
    monitor-exit v0

    .line 4019
    return-void

    .line 4018
    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_47

    throw p1
.end method

.method private dumpCurrentTime(Ljava/io/PrintWriter;)V
    .registers 4

    .line 3990
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3991
    return-void
.end method

.method private dumpDumpFiles(Ljava/io/PrintWriter;)V
    .registers 4

    .line 4022
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4023
    :try_start_3
    const-string v1, "** SHORTCUT MANAGER FILES (dumpsys shortcut -n -f)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4024
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutDumpFiles;->dumpAll(Ljava/io/PrintWriter;)V

    .line 4025
    monitor-exit v0

    .line 4026
    return-void

    .line 4025
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method private dumpInner(Ljava/io/PrintWriter;)V
    .registers 3

    .line 3879
    new-instance v0, Lcom/android/server/pm/ShortcutService$DumpFilter;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->dumpInner(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 3880
    return-void
.end method

.method private dumpInner(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .registers 8

    .line 3883
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3884
    :try_start_3
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpDetails()Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 3885
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    .line 3886
    const-string v3, "Now: ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3887
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 3888
    const-string v3, "] "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3889
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3891
    const-string v1, "  Raw last reset: ["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3892
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 3893
    const-string v1, "] "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3894
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3896
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    move-result-wide v1

    .line 3897
    const-string v3, "  Last reset: ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3898
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 3899
    const-string v3, "] "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3900
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3902
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getNextResetTimeLocked()J

    move-result-wide v1

    .line 3903
    const-string v3, "  Next reset: ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3904
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 3905
    const-string v3, "] "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3906
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3907
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3908
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3910
    const-string v1, "  Config:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3911
    const-string v1, "    Max icon dim: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3912
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3913
    const-string v1, "    Icon format: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3914
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3915
    const-string v1, "    Icon quality: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3916
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3917
    const-string v1, "    saveDelayMillis: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3918
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3919
    const-string v1, "    resetInterval: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3920
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 3921
    const-string v1, "    maxUpdatesPerInterval: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3922
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3923
    const-string v1, "    maxShortcutsPerActivity: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3924
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3925
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3927
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const-string v2, "  "

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/util/StatLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3929
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3930
    const-string v1, "  #Failures: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3931
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3933
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    if-eqz v1, :cond_e3

    .line 3934
    const-string v1, "  Last failure stack trace: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3935
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3938
    :cond_e3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3939
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    const-string v2, "  "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/ShortcutBitmapSaver;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3941
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3944
    :cond_f0
    const/4 v1, 0x0

    move v2, v1

    :goto_f2
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_117

    .line 3945
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutUser;

    .line 3946
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isUserMatch(I)Z

    move-result v4

    if-eqz v4, :cond_114

    .line 3947
    const-string v4, "  "

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/pm/ShortcutUser;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 3948
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3944
    :cond_114
    add-int/lit8 v2, v2, 0x1

    goto :goto_f2

    .line 3952
    :cond_117
    nop

    :goto_118
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_13d

    .line 3953
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutNonPersistentUser;

    .line 3954
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutNonPersistentUser;->getUserId()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isUserMatch(I)Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 3955
    const-string v3, "  "

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/pm/ShortcutNonPersistentUser;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 3956
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3952
    :cond_13a
    add-int/lit8 v1, v1, 0x1

    goto :goto_118

    .line 3959
    :cond_13d
    monitor-exit v0

    .line 3960
    return-void

    .line 3959
    :catchall_13f
    move-exception p1

    monitor-exit v0
    :try_end_141
    .catchall {:try_start_3 .. :try_end_141} :catchall_13f

    throw p1
.end method

.method private dumpUid(Ljava/io/PrintWriter;)V
    .registers 7

    .line 3963
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3964
    :try_start_3
    const-string v1, "** SHORTCUT MANAGER UID STATES (dumpsys shortcut -n -u)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3966
    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 3967
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 3968
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 3969
    const-string v4, "    UID="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3970
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 3971
    const-string v4, " state="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3972
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3973
    invoke-direct {p0, v3}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 3974
    const-string v3, "  [FG]"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3976
    :cond_38
    const-string v3, "  last FG="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3977
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 3978
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3966
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3980
    :cond_4c
    monitor-exit v0

    .line 3981
    return-void

    .line 3980
    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw p1
.end method

.method private enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1548
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1549
    return-void

    .line 1551
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    return-void
.end method

.method private enforceResetThrottlingPermission()V
    .registers 3

    .line 1539
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1540
    return-void

    .line 1542
    :cond_7
    const/4 v0, 0x0

    const-string v1, "android.permission.RESET_SHORTCUT_MANAGER_THROTTLING"

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/ShortcutService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    return-void
.end method

.method private enforceShell()V
    .registers 3

    .line 1527
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1530
    return-void

    .line 1528
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSystem()V
    .registers 3

    .line 1533
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1536
    return-void

    .line 1534
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSystemOrShell()V
    .registers 3

    .line 1521
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 1522
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be system or shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1524
    :cond_15
    :goto_15
    return-void
.end method

.method private fillInDefaultActivity(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 1713
    nop

    .line 1714
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_8
    if-ltz v0, :cond_48

    .line 1715
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 1716
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_45

    .line 1717
    if-nez v2, :cond_42

    .line 1718
    nop

    .line 1719
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v4

    .line 1718
    invoke-virtual {p0, v2, v4}, Lcom/android/server/pm/ShortcutService;->injectGetDefaultMainActivity(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v2

    .line 1720
    if-eqz v2, :cond_29

    move v4, v1

    goto :goto_2a

    :cond_29
    const/4 v4, 0x0

    :goto_2a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Launcher activity not found for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1720
    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1723
    :cond_42
    invoke-virtual {v3, v2}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 1714
    :cond_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1726
    :cond_48
    return-void
.end method

.method private fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V
    .registers 4

    .line 1702
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 1703
    return-void
.end method

.method private fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V
    .registers 8

    .line 1670
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isReturnedByServer()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1671
    const-string v0, "ShortcutService"

    const-string v1, "Re-publishing ShortcutInfo returned by server is not supported. Some information such as icon may lost from shortcut."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    :cond_d
    const-string v0, "Null shortcut detected"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 1677
    nop

    .line 1678
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot publish shortcut: activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not belong to package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1677
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1681
    nop

    .line 1682
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(Landroid/content/ComponentName;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not main activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1681
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1687
    :cond_75
    const/4 v0, 0x0

    if-nez p2, :cond_8b

    .line 1688
    invoke-virtual {p1, p3}, Landroid/content/pm/ShortcutInfo;->enforceMandatoryFields(Z)V

    .line 1689
    if-nez p3, :cond_8b

    .line 1690
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_85

    const/4 p2, 0x1

    goto :goto_86

    :cond_85
    move p2, v0

    :goto_86
    const-string p3, "Cannot publish shortcut: target activity is not set"

    invoke-static {p2, p3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1694
    :cond_8b
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    if-eqz p2, :cond_98

    .line 1695
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    invoke-static {p2}, Landroid/content/pm/ShortcutInfo;->validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 1698
    :cond_98
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->replaceFlags(I)V

    .line 1699
    return-void
.end method

.method private forUpdatedPackages(IJZLjava/util/function/Consumer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJZ",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 3311
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    .line 3312
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_22

    .line 3313
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 3318
    if-nez p4, :cond_1a

    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v2, v2, p2

    if-ltz v2, :cond_1f

    .line 3323
    :cond_1a
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {p5, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3312
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 3326
    :cond_22
    return-void
.end method

.method static formatTime(J)Ljava/lang/String;
    .registers 3

    .line 3984
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 3985
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 3986
    const-string p0, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v0, p0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getBaseStateFile()Landroid/util/AtomicFile;
    .registers 4

    .line 664
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectSystemDataPath()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "shortcut_service.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 666
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method private getCallingUserId()I
    .registers 2

    .line 4288
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private getMainActivityIntent()Landroid/content/Intent;
    .registers 3

    .line 3392
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3393
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3394
    return-object v0
.end method

.method private getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2198
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    .line 2199
    invoke-virtual {p1, v0, p4, p3}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    .line 2201
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->setReturnedByServer(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method private handlePackageAdded(Ljava/lang/String;I)V
    .registers 5

    .line 3068
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3069
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3070
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 3071
    const/4 p2, 0x1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 3072
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 3073
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3074
    return-void

    .line 3072
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method private handlePackageChanged(Ljava/lang/String;I)V
    .registers 5

    .line 3113
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3115
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageRemoved(Ljava/lang/String;I)V

    .line 3116
    return-void

    .line 3124
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3125
    :try_start_d
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p2

    .line 3127
    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 3128
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    .line 3130
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3131
    return-void

    .line 3128
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method private handlePackageDataCleared(Ljava/lang/String;I)V
    .registers 4

    .line 3107
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    .line 3109
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3110
    return-void
.end method

.method private handlePackageRemoved(Ljava/lang/String;I)V
    .registers 4

    .line 3097
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    .line 3099
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3100
    return-void
.end method

.method private handlePackageUpdateFinished(Ljava/lang/String;I)V
    .registers 5

    .line 3081
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3082
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3083
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 3085
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 3086
    const/4 p2, 0x1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 3088
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    .line 3089
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3090
    return-void

    .line 3088
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private initialize()V
    .registers 3

    .line 673
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 674
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadConfigurationLocked()V

    .line 675
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadBaseStateLocked()V

    .line 676
    monitor-exit v0

    .line 677
    return-void

    .line 676
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private isApplicationFlagSet(Ljava/lang/String;II)Z
    .registers 4

    .line 3329
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 3330
    if-eqz p1, :cond_d

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p1, p3

    if-ne p1, p3, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method private isCallerShell()Z
    .registers 3

    .line 1516
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    .line 1517
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_d

    if-nez v0, :cond_b

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

.method private isCallerSystem()Z
    .registers 3

    .line 1511
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    .line 1512
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    return v0
.end method

.method static isClockValid(J)Z
    .registers 4

    .line 1140
    const-wide/32 v0, 0x54a48e00

    cmp-long p0, p0, v0

    if-ltz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private static isEphemeralApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 1

    .line 3338
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static isInstalled(Landroid/content/pm/ActivityInfo;)Z
    .registers 1

    .line 3346
    if-eqz p0, :cond_c

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static isInstalled(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    .line 3334
    if-eqz p0, :cond_f

    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_f

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v0, 0x800000

    and-int/2addr p0, v0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private static isInstalled(Landroid/content/pm/PackageInfo;)Z
    .registers 1

    .line 3342
    if-eqz p0, :cond_c

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static isInstalledOrNull(Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;
    .registers 2

    .line 3358
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method private static isInstalledOrNull(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 3350
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method private static isInstalledOrNull(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;
    .registers 2

    .line 3354
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method private isProcessStateForeground(I)Z
    .registers 3

    .line 537
    const/4 v0, 0x6

    if-gt p1, v0, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    return p1
.end method

.method private isUserLoadedLocked(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1200
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method static synthetic lambda$cleanUpPackageLocked$4(Ljava/lang/String;ILcom/android/server/pm/ShortcutLauncher;)V
    .registers 3

    .line 2535
    invoke-virtual {p2, p0, p1}, Lcom/android/server/pm/ShortcutLauncher;->cleanUpPackage(Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic lambda$cleanUpPackageLocked$5(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 1

    .line 2539
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    return-void
.end method

.method static synthetic lambda$getBackupPayload$10(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 3

    .line 3603
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutPackage;->rescanPackageIfNeeded(ZZ)Z

    return-void
.end method

.method static synthetic lambda$getBackupPayload$11(Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 1

    .line 3607
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->ensurePackageInfo()V

    return-void
.end method

.method static synthetic lambda$getBackupPayload$9(Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 1

    .line 3600
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->refreshPackageSignatureAndSave()V

    return-void
.end method

.method static synthetic lambda$getShareTargets$2(Ljava/util/List;Landroid/content/IntentFilter;Lcom/android/server/pm/ShortcutPackage;)V
    .registers 3

    .line 2172
    invoke-virtual {p2, p1}, Lcom/android/server/pm/ShortcutPackage;->getMatchingShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic lambda$handleLocaleChanged$6(Lcom/android/server/pm/ShortcutUser;)V
    .registers 1

    .line 2904
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->detectLocaleChange()V

    return-void
.end method

.method static synthetic lambda$verifyStatesInner$14(Lcom/android/server/pm/ShortcutUser;)V
    .registers 2

    .line 4451
    sget-object v0, Lcom/android/server/pm/-$$Lambda$sAnQjWlQDJoJcSwHDDCKcU2fneU;->INSTANCE:Lcom/android/server/pm/-$$Lambda$sAnQjWlQDJoJcSwHDDCKcU2fneU;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$w7_ouiisHmMMzTkQ_HUAHbawlLY(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->dumpInner(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private loadBaseStateLocked()V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 912
    const-string v0, "ShortcutService"

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 914
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Landroid/util/AtomicFile;

    move-result-object v3

    .line 918
    :try_start_a
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_e} :catch_b9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_e} :catch_9d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_e} :catch_9d

    .line 919
    :try_start_e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 920
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 923
    :cond_1b
    :goto_1b
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_89

    .line 924
    const/4 v8, 0x2

    if-eq v6, v8, :cond_26

    .line 925
    goto :goto_1b

    .line 927
    :cond_26
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 929
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 930
    if-ne v6, v7, :cond_53

    .line 931
    const-string/jumbo v6, "root"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 932
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid root tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_e .. :try_end_4d} :catchall_8f

    .line 947
    if-eqz v4, :cond_52

    :try_start_4f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_4f .. :try_end_52} :catch_b9
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_9d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_52} :catch_9d

    .line 933
    :cond_52
    return-void

    .line 938
    :cond_53
    const/4 v6, -0x1

    :try_start_54
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v9, -0x418aefa

    if-eq v7, v9, :cond_5e

    :cond_5d
    goto :goto_67

    :cond_5e
    const-string v7, "last_reset_time"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d

    const/4 v6, 0x0

    :goto_67
    if-eqz v6, :cond_7e

    .line 943
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 940
    :cond_7e
    const-string/jumbo v6, "value"

    invoke-static {v5, v6}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J
    :try_end_87
    .catchall {:try_start_54 .. :try_end_87} :catchall_8f

    .line 941
    nop

    .line 946
    :goto_88
    goto :goto_1b

    .line 947
    :cond_89
    if-eqz v4, :cond_ba

    :try_start_8b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8e
    .catch Ljava/io/FileNotFoundException; {:try_start_8b .. :try_end_8e} :catch_b9
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_9d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_8e} :catch_9d

    goto :goto_ba

    .line 918
    :catchall_8f
    move-exception v5

    :try_start_90
    throw v5
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_91

    .line 947
    :catchall_91
    move-exception v6

    if-eqz v4, :cond_9c

    :try_start_94
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_98

    goto :goto_9c

    :catchall_98
    move-exception v4

    :try_start_99
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9c
    :goto_9c
    throw v6
    :try_end_9d
    .catch Ljava/io/FileNotFoundException; {:try_start_99 .. :try_end_9d} :catch_b9
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9d} :catch_9d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_99 .. :try_end_9d} :catch_9d

    .line 949
    :catch_9d
    move-exception v4

    .line 950
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 952
    iput-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    goto :goto_bb

    .line 947
    :catch_b9
    move-exception v0

    .line 953
    :cond_ba
    :goto_ba
    nop

    .line 955
    :goto_bb
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    .line 956
    return-void
.end method

.method private loadConfigurationLocked()V
    .registers 2

    .line 683
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectShortcutManagerConstants()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->updateConfigurationLocked(Ljava/lang/String;)Z

    .line 684
    return-void
.end method

.method private loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;
        }
    .end annotation

    .line 1051
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1053
    nop

    .line 1054
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p2

    .line 1055
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1058
    :goto_14
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3b

    .line 1059
    const/4 v3, 0x2

    if-eq v1, v3, :cond_1f

    .line 1060
    goto :goto_14

    .line 1062
    :cond_1f
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1064
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1069
    if-ne v1, v2, :cond_37

    const-string/jumbo v2, "user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1070
    invoke-static {p0, p2, p1, p3}, Lcom/android/server/pm/ShortcutUser;->loadFromXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlPullParser;IZ)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    .line 1071
    goto :goto_14

    .line 1073
    :cond_37
    invoke-static {v1, v3}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    .line 1074
    goto :goto_14

    .line 1075
    :cond_3b
    return-object v0
.end method

.method private loadUserLocked(I)Lcom/android/server/pm/ShortcutUser;
    .registers 8

    .line 1021
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserFile(I)Ljava/io/File;

    move-result-object v0

    .line 1025
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1029
    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_e} :catch_3f

    .line 1035
    nop

    .line 1037
    const/4 v3, 0x0

    :try_start_10
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;

    move-result-object p1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_14} :catch_1b
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_10 .. :try_end_14} :catch_1b
    .catchall {:try_start_10 .. :try_end_14} :catchall_19

    .line 1038
    nop

    .line 1043
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1038
    return-object p1

    .line 1043
    :catchall_19
    move-exception p1

    goto :goto_3b

    .line 1039
    :catch_1b
    move-exception p1

    .line 1040
    :try_start_1c
    const-string v3, "ShortcutService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_19

    .line 1041
    nop

    .line 1043
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1041
    return-object v0

    .line 1043
    :goto_3b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 1030
    :catch_3f
    move-exception p1

    .line 1034
    return-object v0
.end method

.method private notifyListeners(Ljava/lang/String;I)V
    .registers 4

    .line 1642
    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$DzwraUeMWDwA0XDfFxd3sGOsA0E;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/pm/-$$Lambda$ShortcutService$DzwraUeMWDwA0XDfFxd3sGOsA0E;-><init>(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    .line 1659
    return-void
.end method

.method static parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .registers 4

    .line 757
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, 0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method static parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .registers 5

    .line 761
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide p0

    const-wide/16 v0, 0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method static parseComponentNameAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 2

    .line 791
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 792
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 793
    const/4 p0, 0x0

    return-object p0

    .line 795
    :cond_c
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method private static parseDumpArgs([Ljava/lang/String;)Lcom/android/server/pm/ShortcutService$DumpFilter;
    .registers 7

    .line 3716
    new-instance v0, Lcom/android/server/pm/ShortcutService$DumpFilter;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;-><init>()V

    .line 3717
    if-nez p0, :cond_8

    .line 3718
    return-object v0

    .line 3721
    :cond_8
    const/4 v1, 0x0

    move v2, v1

    .line 3722
    :goto_a
    array-length v3, p0

    if-ge v2, v3, :cond_ff

    .line 3723
    add-int/lit8 v3, v2, 0x1

    aget-object v2, p0, v2

    .line 3725
    const-string v4, "-c"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1f

    .line 3726
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpCheckIn(Z)V

    .line 3727
    goto/16 :goto_fc

    .line 3729
    :cond_1f
    const-string v4, "--checkin"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 3730
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpCheckIn(Z)V

    .line 3731
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setCheckInClear(Z)V

    .line 3732
    goto/16 :goto_fc

    .line 3734
    :cond_2f
    const-string v4, "-a"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f5

    const-string v4, "--all"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    goto/16 :goto_f5

    .line 3739
    :cond_41
    const-string v4, "-u"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f1

    const-string v4, "--uid"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    goto/16 :goto_f1

    .line 3743
    :cond_53
    const-string v4, "-f"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ed

    const-string v4, "--files"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    goto/16 :goto_ed

    .line 3747
    :cond_65
    const-string v4, "-n"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e9

    const-string v4, "--no-main"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    goto/16 :goto_e9

    .line 3751
    :cond_77
    const-string v4, "--user"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 3752
    array-length v2, p0

    if-ge v3, v2, :cond_98

    .line 3756
    add-int/lit8 v2, v3, 0x1

    :try_start_84
    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addUser(I)V
    :try_end_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_84 .. :try_end_8d} :catch_8f

    .line 3759
    goto/16 :goto_a

    .line 3757
    :catch_8f
    move-exception p0

    .line 3758
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid user ID"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3753
    :cond_98
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing user ID for --user"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3762
    :cond_a0
    const-string v4, "-p"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d2

    const-string v4, "--package"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    goto :goto_d2

    .line 3770
    :cond_b1
    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_bb

    move v2, v3

    goto :goto_ff

    .line 3771
    :cond_bb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3763
    :cond_d2
    :goto_d2
    array-length v2, p0

    if-ge v3, v2, :cond_e1

    .line 3766
    add-int/lit8 v2, v3, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addPackageRegex(Ljava/lang/String;)V

    .line 3767
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpDetails(Z)V

    .line 3768
    goto/16 :goto_a

    .line 3764
    :cond_e1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing package name for --package"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3748
    :cond_e9
    :goto_e9
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpMain(Z)V

    .line 3749
    goto :goto_fc

    .line 3744
    :cond_ed
    :goto_ed
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpFiles(Z)V

    .line 3745
    goto :goto_fc

    .line 3740
    :cond_f1
    :goto_f1
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpUid(Z)V

    .line 3741
    goto :goto_fc

    .line 3735
    :cond_f5
    :goto_f5
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpUid(Z)V

    .line 3736
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpFiles(Z)V

    .line 3737
    nop

    .line 3722
    :goto_fc
    move v2, v3

    goto/16 :goto_a

    .line 3775
    :cond_ff
    :goto_ff
    array-length v1, p0

    if-ge v2, v1, :cond_10b

    .line 3776
    add-int/lit8 v1, v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addPackage(Ljava/lang/String;)V

    move v2, v1

    goto :goto_ff

    .line 3778
    :cond_10b
    return-object v0
.end method

.method static parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 2

    .line 765
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method static parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 5

    .line 769
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method static parseIntentAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;
    .registers 2

    .line 814
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseIntentAttributeNoDefault(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 815
    if-nez p0, :cond_d

    .line 817
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.intent.action.VIEW"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 819
    :cond_d
    return-object p0
.end method

.method static parseIntentAttributeNoDefault(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 800
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 801
    nop

    .line 802
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 804
    const/4 p1, 0x0

    :try_start_c
    invoke-static {p0, p1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0
    :try_end_10
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_10} :catch_11

    .line 807
    goto :goto_1a

    .line 805
    :catch_11
    move-exception p0

    .line 806
    const-string p1, "ShortcutService"

    const-string v0, "Error parsing intent"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return-object p0
.end method

.method static parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .registers 4

    .line 773
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 5

    .line 777
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 778
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 779
    return-wide p2

    .line 782
    :cond_b
    :try_start_b
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_f} :catch_10

    return-wide p0

    .line 783
    :catch_10
    move-exception p1

    .line 784
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error parsing long "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return-wide p2
.end method

.method static parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 753
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
    .registers 14

    .line 1974
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 1975
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 1978
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1979
    :try_start_9
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 1981
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result v1

    const-string v2, "Calling application must have a foreground activity or a foreground service"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1988
    if-eqz p3, :cond_2f

    .line 1989
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 1991
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1992
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndInvisibleToPublisher(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1994
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutPackage;->updateInvisibleShortcutForPinRequestWith(Landroid/content/pm/ShortcutInfo;)V

    .line 1996
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 2001
    :cond_2f
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p2

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->requestPinItemLocked(Landroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;ILandroid/content/IntentSender;)Z

    move-result p1

    .line 2003
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_9 .. :try_end_3b} :catchall_3f

    .line 2005
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2007
    return p1

    .line 2003
    :catchall_3f
    move-exception p1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method private rescanUpdatedPackagesLocked(IJ)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3042
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    .line 3046
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    .line 3047
    nop

    .line 3048
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->getLastAppScanOsFingerprint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 3051
    xor-int/lit8 v8, v3, 0x1

    new-instance v9, Lcom/android/server/pm/-$$Lambda$ShortcutService$y1mZhNAWeEp6GCbsOBAt4g-DS3s;

    invoke-direct {v9, p0, v0, p1}, Lcom/android/server/pm/-$$Lambda$ShortcutService$y1mZhNAWeEp6GCbsOBAt4g-DS3s;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;I)V

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/ShortcutService;->forUpdatedPackages(IJZLjava/util/function/Consumer;)V

    .line 3059
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutUser;->setLastAppScanTime(J)V

    .line 3060
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutUser;->setLastAppScanOsFingerprint(Ljava/lang/String;)V

    .line 3061
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 3062
    return-void
.end method

.method private saveUserInternalLocked(ILjava/io/OutputStream;Z)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 996
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 999
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1000
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1001
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1003
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p1

    invoke-virtual {p1, v1, p3}, Lcom/android/server/pm/ShortcutUser;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 1005
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1007
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1008
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 1009
    return-void
.end method

.method private saveUserLocked(I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 965
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserFile(I)Ljava/io/File;

    move-result-object v0

    .line 970
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    .line 972
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 973
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 974
    nop

    .line 976
    const/4 v0, 0x0

    :try_start_17
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 978
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V

    .line 980
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 983
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->cleanupDanglingBitmapDirectoriesLocked(I)V
    :try_end_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_25} :catch_26
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_25} :catch_26

    .line 987
    goto :goto_44

    .line 984
    :catch_26
    move-exception v2

    .line 985
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ShortcutService"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 986
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 989
    :goto_44
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutUser;->logSharingShortcutStats(Lcom/android/internal/logging/MetricsLogger;)V

    .line 990
    return-void
.end method

.method private scheduleSaveBaseState()V
    .registers 2

    .line 1079
    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    .line 1080
    return-void
.end method

.method private scheduleSaveInner(I)V
    .registers 5

    .line 1093
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1094
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1095
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2b

    .line 1099
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1100
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1101
    return-void

    .line 1097
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method private setReturnedByServer(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1735
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    .line 1736
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->setReturnedByServer()V

    .line 1735
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1738
    :cond_14
    return-object p1
.end method

.method static shouldBackupApp(Landroid/content/pm/PackageInfo;)Z
    .registers 2

    .line 3578
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method static shrinkBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 7

    .line 1462
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1463
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1464
    if-gt v0, p1, :cond_d

    if-gt v1, p1, :cond_d

    .line 1468
    return-object p0

    .line 1470
    :cond_d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1473
    mul-int/2addr v0, p1

    div-int/2addr v0, v2

    .line 1474
    mul-int/2addr v1, p1

    div-int/2addr v1, v2

    .line 1480
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1481
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1483
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1485
    const/4 v0, 0x0

    invoke-virtual {v2, p0, v0, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1487
    return-object p1
.end method

.method static throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1012
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "Invalid tag \'%s\' found at depth %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unloadUserLocked(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 656
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    .line 659
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 660
    return-void
.end method

.method private updateTimesLocked()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1149
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    .line 1151
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 1153
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_f

    .line 1155
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    goto :goto_32

    .line 1156
    :cond_f
    cmp-long v4, v0, v2

    if-gez v4, :cond_23

    .line 1158
    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->isClockValid(J)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1159
    const-string v4, "ShortcutService"

    const-string v5, "Clock rewound"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    goto :goto_32

    .line 1164
    :cond_23
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    add-long v6, v2, v4

    cmp-long v6, v6, v0

    if-gtz v6, :cond_32

    .line 1165
    rem-long v6, v2, v4

    .line 1166
    div-long/2addr v0, v4

    mul-long/2addr v0, v4

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 1169
    :cond_32
    :goto_32
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_3b

    .line 1170
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    .line 1172
    :cond_3b
    return-void
.end method

.method private verifyCaller(Ljava/lang/String;I)V
    .registers 5

    .line 1565
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 1567
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1568
    return-void

    .line 1571
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    .line 1574
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p2, :cond_31

    .line 1577
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_29

    .line 1580
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isEphemeralApp(Ljava/lang/String;I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "Ephemeral apps can\'t use ShortcutManager"

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1582
    return-void

    .line 1578
    :cond_29
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Calling package name mismatch"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1575
    :cond_31
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Invalid user-ID"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V
    .registers 5

    .line 1585
    if-nez p2, :cond_3

    .line 1586
    return-void

    .line 1588
    :cond_3
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1592
    return-void

    .line 1589
    :cond_e
    const p1, 0x534e4554

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "109824443"

    aput-object v1, p2, v0

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x2

    const-string v1, ""

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1590
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Shortcut package name mismatch"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 1596
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 1597
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    .line 1598
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 1597
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1600
    :cond_13
    return-void
.end method

.method private final verifyStatesForce()V
    .registers 1

    .line 4446
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesInner()V

    .line 4447
    return-void
.end method

.method private verifyStatesInner()V
    .registers 3

    .line 4450
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4451
    :try_start_3
    sget-object v1, Lcom/android/server/pm/-$$Lambda$ShortcutService$fqEqB5P0QHkQKJgSWuI8hNg-9pk;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$fqEqB5P0QHkQKJgSWuI8hNg-9pk;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    .line 4452
    monitor-exit v0

    .line 4453
    return-void

    .line 4452
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method static warnForInvalidTag(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1016
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "Invalid tag \'%s\' found at depth %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 855
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 856
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 867
    if-nez p2, :cond_3

    return-void

    .line 868
    :cond_3
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 869
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 872
    if-nez p2, :cond_3

    return-void

    .line 874
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 875
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 849
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 851
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 852
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 859
    if-eqz p2, :cond_8

    .line 860
    const-string p2, "1"

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 862
    :cond_8
    const-string p2, "0"

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 864
    :goto_d
    return-void
.end method

.method static writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 841
    if-nez p2, :cond_3

    return-void

    .line 843
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 844
    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 845
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 846
    return-void
.end method

.method static writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 831
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    return-void
.end method

.method static writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 835
    if-nez p2, :cond_3

    return-void

    .line 836
    :cond_3
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    return-void
.end method

.method static writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 823
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 825
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 826
    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 827
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 828
    return-void
.end method


# virtual methods
.method public addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 11

    .line 1887
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 1889
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    .line 1890
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    .line 1891
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 1893
    nop

    .line 1894
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v2

    .line 1893
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v1

    .line 1896
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1897
    :try_start_1e
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 1899
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    .line 1901
    const/4 v4, 0x1

    invoke-virtual {v3, p2, v4}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V

    .line 1903
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    .line 1905
    invoke-virtual {v3, p2, v4}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    .line 1908
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    .line 1909
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    .line 1912
    invoke-virtual {v3, v1}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_3e

    .line 1913
    monitor-exit v2

    return v5

    .line 1915
    :cond_3e
    move v1, v5

    :goto_3f
    if-ge v1, v0, :cond_53

    .line 1916
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    .line 1919
    invoke-direct {p0, v6, v5}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    .line 1923
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    .line 1926
    invoke-virtual {v3, v6}, Lcom/android/server/pm/ShortcutPackage;->addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    .line 1915
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 1930
    :cond_53
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 1931
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_1e .. :try_end_57} :catchall_5e

    .line 1932
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 1934
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 1936
    return v4

    .line 1931
    :catchall_5e
    move-exception p1

    :try_start_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p1
.end method

.method public applyRestore([BI)V
    .registers 7

    .line 3633
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    .line 3637
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3638
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 3639
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t restore: user "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is locked or not running"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 3640
    monitor-exit v0

    return-void

    .line 3645
    :cond_27
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v2, "restore-0-start.txt"

    new-instance v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$vKI79Gf4pKq8ASWghBXV-NKhZwk;

    invoke-direct {v3, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$vKI79Gf4pKq8ASWghBXV-NKhZwk;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 3650
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v2, "restore-1-payload.xml"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;[B)Z

    .line 3654
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_96

    .line 3656
    const/4 p1, 0x1

    :try_start_42
    invoke-direct {p0, p2, v1, p1}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;

    move-result-object p1
    :try_end_46
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_46} :catch_8c
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_8c
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_42 .. :try_end_46} :catch_8c
    .catchall {:try_start_42 .. :try_end_46} :catchall_96

    .line 3660
    nop

    .line 3661
    :try_start_47
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v2, "restore-2.txt"

    new-instance v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY;

    invoke-direct {v3, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 3663
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutUser;->mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V

    .line 3665
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v1, "restore-3.txt"

    new-instance v2, Lcom/android/server/pm/-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY;

    invoke-direct {v2, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 3668
    const-wide/16 v1, 0x0

    invoke-direct {p0, p2, v1, v2}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJ)V

    .line 3672
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v1, "restore-4.txt"

    new-instance v2, Lcom/android/server/pm/-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY;

    invoke-direct {v2, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 3674
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v1, "restore-5-finish.txt"

    new-instance v2, Lcom/android/server/pm/-$$Lambda$ShortcutService$KOp4rgvJPqXwR4WftrrGcjb2qMQ;

    invoke-direct {v2, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$KOp4rgvJPqXwR4WftrrGcjb2qMQ;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 3680
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V

    .line 3681
    monitor-exit v0

    .line 3682
    return-void

    .line 3657
    :catch_8c
    move-exception p1

    .line 3658
    const-string p2, "ShortcutService"

    const-string v1, "Restoration failed."

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3659
    monitor-exit v0

    return-void

    .line 3681
    :catchall_96
    move-exception p1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_47 .. :try_end_98} :catchall_96

    throw p1
.end method

.method canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z
    .registers 5

    .line 2356
    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/ShortcutService;->injectHasAccessShortcutsPermission(II)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 2357
    const/4 p1, 0x1

    return p1

    .line 2359
    :cond_8
    iget-object p3, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 2360
    :try_start_b
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getNonPersistentUserLocked(I)Lcom/android/server/pm/ShortcutNonPersistentUser;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/ShortcutNonPersistentUser;->hasHostPackage(Ljava/lang/String;)Z

    move-result p1

    monitor-exit p3

    return p1

    .line 2361
    :catchall_15
    move-exception p1

    monitor-exit p3
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw p1
.end method

.method checkPackageChanges(I)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2999
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3000
    const-string p1, "ShortcutService"

    const-string v0, "Safe mode, skipping checkPackageChanges()"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    return-void

    .line 3004
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3006
    const/16 v2, 0x8

    :try_start_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3008
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_5a

    .line 3009
    :try_start_1c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v5

    .line 3012
    new-instance v6, Lcom/android/server/pm/-$$Lambda$ShortcutService$io6aQoSP1ibWQCoayRXJaxbmJvA;

    invoke-direct {v6, p0, v3}, Lcom/android/server/pm/-$$Lambda$ShortcutService$io6aQoSP1ibWQCoayRXJaxbmJvA;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 3024
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_47

    .line 3025
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_34
    if-ltz v6, :cond_47

    .line 3026
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    .line 3027
    iget-object v8, v7, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    iget v7, v7, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    const/4 v9, 0x0

    invoke-virtual {p0, v8, p1, v7, v9}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageLocked(Ljava/lang/String;IIZ)V

    .line 3025
    add-int/lit8 v6, v6, -0x1

    goto :goto_34

    .line 3032
    :cond_47
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutUser;->getLastAppScanTime()J

    move-result-wide v5

    invoke-direct {p0, p1, v5, v6}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJ)V

    .line 3033
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_1c .. :try_end_4f} :catchall_57

    .line 3035
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3036
    nop

    .line 3037
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3038
    return-void

    .line 3033
    :catchall_57
    move-exception p1

    :try_start_58
    monitor-exit v4
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw p1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    .line 3035
    :catchall_5a
    move-exception p1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method cleanUpPackageLocked(Ljava/lang/String;IIZ)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2519
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserLoadedLocked(I)Z

    move-result v0

    .line 2521
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 2522
    nop

    .line 2525
    const/4 v2, 0x1

    if-ne p3, p2, :cond_14

    .line 2526
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutUser;->removePackage(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 2527
    move v3, v2

    goto :goto_15

    .line 2532
    :cond_14
    const/4 v3, 0x0

    :goto_15
    invoke-virtual {v1, p3, p1}, Lcom/android/server/pm/ShortcutUser;->removeLauncher(ILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    .line 2535
    new-instance v4, Lcom/android/server/pm/-$$Lambda$ShortcutService$TVqBA9DN_h90eIcwrnmy7Mkl6jo;

    invoke-direct {v4, p1, p3}, Lcom/android/server/pm/-$$Lambda$ShortcutService$TVqBA9DN_h90eIcwrnmy7Mkl6jo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 2539
    sget-object v4, Lcom/android/server/pm/-$$Lambda$ShortcutService$fCl_JbVpr187Fh4_6N-IxgnU68c;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$fCl_JbVpr187Fh4_6N-IxgnU68c;

    invoke-virtual {v1, v4}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 2541
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 2543
    if-eqz v3, :cond_2d

    .line 2544
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->notifyListeners(Ljava/lang/String;I)V

    .line 2548
    :cond_2d
    if-eqz p4, :cond_34

    if-ne p3, p2, :cond_34

    .line 2551
    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 2554
    :cond_34
    if-nez v0, :cond_39

    .line 2556
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->unloadUserLocked(I)V

    .line 2558
    :cond_39
    return-void
.end method

.method public cleanupBitmapsForPackage(ILjava/lang/String;)V
    .registers 4

    .line 1281
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1282
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_10

    .line 1283
    return-void

    .line 1285
    :cond_10
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_32

    .line 1286
    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to remove directory "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShortcutService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :cond_32
    return-void
.end method

.method public createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1950
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1951
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string v1, "Shortcut must be enabled"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1952
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 1953
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 1956
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1957
    :try_start_15
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 1960
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;

    move-result-object p2

    .line 1961
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    .line 1963
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 1964
    return-object p2

    .line 1961
    :catchall_23
    move-exception p2

    :try_start_24
    monitor-exit p1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p2
.end method

.method public disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V
    .registers 16

    .line 2013
    invoke-direct {p0, p1, p5}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2014
    const-string/jumbo v0, "shortcutIds must be provided"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2016
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2017
    :try_start_c
    invoke-virtual {p0, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2019
    invoke-virtual {p0, p1, p5}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v8

    .line 2021
    const/4 v1, 0x1

    invoke-virtual {v8, p2, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V

    .line 2025
    if-nez p3, :cond_1b

    const/4 p3, 0x0

    goto :goto_1f

    :cond_1b
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2027
    :goto_1f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    move v9, v2

    :goto_25
    if-ltz v9, :cond_47

    .line 2028
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 2029
    invoke-virtual {v8, v2}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 2030
    goto :goto_44

    .line 2032
    :cond_3b
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, v8

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ShortcutPackage;->disableWithId(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 2027
    :goto_44
    add-int/lit8 v9, v9, -0x1

    goto :goto_25

    .line 2039
    :cond_47
    invoke-virtual {v8}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2040
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_c .. :try_end_4b} :catchall_52

    .line 2041
    invoke-virtual {p0, p1, p5}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 2043
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2044
    return-void

    .line 2040
    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 3688
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-string v1, "ShortcutService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3689
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->dumpNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3690
    return-void
.end method

.method dumpNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3694
    invoke-static {p3}, Lcom/android/server/pm/ShortcutService;->parseDumpArgs([Ljava/lang/String;)Lcom/android/server/pm/ShortcutService$DumpFilter;

    move-result-object p1

    .line 3696
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpCheckIn()Z

    move-result p3

    if-eqz p3, :cond_12

    .line 3698
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldCheckInClear()Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->dumpCheckin(Ljava/io/PrintWriter;Z)V

    goto :goto_36

    .line 3700
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpMain()Z

    move-result p3

    if-eqz p3, :cond_1e

    .line 3701
    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->dumpInner(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 3702
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3704
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpUid()Z

    move-result p3

    if-eqz p3, :cond_2a

    .line 3705
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->dumpUid(Ljava/io/PrintWriter;)V

    .line 3706
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3708
    :cond_2a
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpFiles()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 3709
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->dumpDumpFiles(Ljava/io/PrintWriter;)V

    .line 3710
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3713
    :cond_36
    :goto_36
    return-void
.end method

.method public enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .registers 9

    .line 2048
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2049
    const-string/jumbo v0, "shortcutIds must be provided"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2052
    :try_start_c
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2054
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2056
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V

    .line 2059
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_1c
    if-ltz v3, :cond_37

    .line 2060
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2061
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 2062
    goto :goto_34

    .line 2064
    :cond_31
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutPackage;->enableWithId(Ljava/lang/String;)V

    .line 2059
    :goto_34
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 2066
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_3f

    .line 2067
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 2069
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2070
    return-void

    .line 2066
    :catchall_3f
    move-exception p1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method enforceMaxActivityShortcuts(I)V
    .registers 3

    .line 1616
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    if-gt p1, v0, :cond_5

    .line 1619
    return-void

    .line 1617
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max number of dynamic shortcuts exceeded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V
    .registers 6

    .line 1495
    nop

    .line 1496
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v1

    .line 1495
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    .line 1497
    if-eqz v0, :cond_25

    .line 1498
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v1

    .line 1500
    const/16 v3, 0xa

    :try_start_15
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceNames(Landroid/content/res/Resources;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_20

    .line 1502
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 1503
    nop

    .line 1504
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    goto :goto_25

    .line 1502
    :catchall_20
    move-exception p1

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1

    .line 1506
    :cond_25
    :goto_25
    return-void
.end method

.method forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/ShortcutUser;",
            ">;)V"
        }
    .end annotation

    .line 1239
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1240
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutUser;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1239
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1242
    :cond_18
    return-void
.end method

.method final getActivityInfoWithMetadata(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 3

    .line 3238
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    return-object p1
.end method

.method final getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3208
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public getBackupPayload(I)[B
    .registers 6

    .line 3583
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    .line 3587
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3588
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_28

    .line 3589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t backup: user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is locked or not running"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 3590
    monitor-exit v0

    return-object v2

    .line 3593
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3594
    if-nez v1, :cond_44

    .line 3595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t backup: user not found: id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 3596
    monitor-exit v0

    return-object v2

    .line 3600
    :cond_44
    sget-object v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$l8T8kXBB-Gktym0FoX_WiKj2Glc;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$l8T8kXBB-Gktym0FoX_WiKj2Glc;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 3603
    sget-object v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$TUT0CJsDhxqkpcseduaAriOs6bg;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$TUT0CJsDhxqkpcseduaAriOs6bg;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 3607
    sget-object v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$exGcjcSQADxpLL30XenIn9sDxlI;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$exGcjcSQADxpLL30XenIn9sDxlI;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 3610
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 3611
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    .line 3617
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const v3, 0x8000

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_61
    .catchall {:try_start_6 .. :try_end_61} :catchall_7d

    .line 3619
    const/4 v3, 0x1

    :try_start_62
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V
    :try_end_65
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_62 .. :try_end_65} :catch_73
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_73
    .catchall {:try_start_62 .. :try_end_65} :catchall_7d

    .line 3624
    nop

    .line 3625
    :try_start_66
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 3626
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string v2, "backup-1-payload.txt"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;[B)Z

    .line 3627
    monitor-exit v0

    return-object p1

    .line 3620
    :catch_73
    move-exception p1

    .line 3622
    const-string v1, "ShortcutService"

    const-string v3, "Backup failed."

    invoke-static {v1, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3623
    monitor-exit v0

    return-object v2

    .line 3628
    :catchall_7d
    move-exception p1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_66 .. :try_end_7f} :catchall_7d

    throw p1
.end method

.method getDefaultLauncher(I)Landroid/content/ComponentName;
    .registers 14

    .line 2418
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 2419
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 2421
    const/16 v4, 0x10

    :try_start_a
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_90

    .line 2422
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2424
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v6

    .line 2426
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2429
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v8

    .line 2430
    iget-object v10, p0, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2431
    invoke-virtual {v10, v7, p1}, Landroid/content/pm/PackageManagerInternal;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object v10

    .line 2432
    const/4 v11, 0x0

    invoke-virtual {p0, v11, v8, v9}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 2434
    nop

    .line 2435
    if-eqz v10, :cond_2b

    .line 2436
    goto :goto_57

    .line 2441
    :cond_2b
    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutUser;->getLastKnownLauncher()Landroid/content/ComponentName;

    move-result-object v10

    .line 2443
    if-eqz v10, :cond_57

    .line 2444
    invoke-virtual {p0, v10, p1}, Lcom/android/server/pm/ShortcutService;->injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z

    move-result p1

    if-eqz p1, :cond_38

    goto :goto_57

    .line 2449
    :cond_38
    const-string p1, "ShortcutService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cached launcher "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " no longer exists"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    const/4 v10, 0x0

    .line 2451
    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutUser;->clearLauncher()V

    .line 2456
    :cond_57
    :goto_57
    if-nez v10, :cond_85

    .line 2463
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    .line 2465
    const/high16 v6, -0x80000000

    .line 2466
    nop

    :goto_60
    if-ge v11, p1, :cond_85

    .line 2467
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 2468
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v9

    if-nez v9, :cond_73

    .line 2469
    goto :goto_82

    .line 2475
    :cond_73
    iget v9, v8, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v9, v6, :cond_78

    .line 2476
    goto :goto_82

    .line 2478
    :cond_78
    iget-object v6, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 2479
    iget v8, v8, Landroid/content/pm/ResolveInfo;->priority:I

    move-object v10, v6

    move v6, v8

    .line 2466
    :goto_82
    add-int/lit8 v11, v11, 0x1

    goto :goto_60

    .line 2482
    :cond_85
    monitor-exit v5
    :try_end_86
    .catchall {:try_start_d .. :try_end_86} :catchall_8d

    .line 2485
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2486
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 2482
    return-object v10

    .line 2483
    :catchall_8d
    move-exception p1

    :try_start_8e
    monitor-exit v5
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    :try_start_8f
    throw p1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_90

    .line 2485
    :catchall_90
    move-exception p1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2486
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method getDummyMainActivity(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 4

    .line 3481
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android.__dummy__"

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDumpPath()Ljava/io/File;
    .registers 4

    .line 4335
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "shortcut_dump"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDynamicShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2120
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2122
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2123
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2125
    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/pm/-$$Lambda$vv6Ko6L2p38nn3EYcL5PZxcyRyk;->INSTANCE:Lcom/android/server/pm/-$$Lambda$vv6Ko6L2p38nn3EYcL5PZxcyRyk;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/pm/ShortcutService;->getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 2128
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public getIconMaxDimensions(Ljava/lang/String;I)I
    .registers 3

    .line 2240
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2242
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2243
    :try_start_6
    iget p2, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    monitor-exit p1

    return p2

    .line 2244
    :catchall_a
    move-exception p2

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p2
.end method

.method getIconPersistFormatForTest()Landroid/graphics/Bitmap$CompressFormat;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4383
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method getIconPersistQualityForTest()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4388
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    return v0
.end method

.method final getInstalledPackages(I)Ljava/util/List;
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 3271
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3272
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 3274
    const/4 v4, 0x7

    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectGetPackagesWithUninstalled(I)Ljava/util/List;

    move-result-object p1

    .line 3276
    sget-object v5, Lcom/android/server/pm/ShortcutService;->PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate;

    invoke-interface {p1, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_1c
    .catchall {:try_start_9 .. :try_end_12} :catchall_1a

    .line 3278
    nop

    .line 3284
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3286
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3278
    return-object p1

    .line 3284
    :catchall_1a
    move-exception p1

    goto :goto_2c

    .line 3279
    :catch_1c
    move-exception p1

    .line 3281
    :try_start_1d
    const-string v5, "ShortcutService"

    const-string v6, "RemoteException"

    invoke-static {v5, v6, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_1a

    .line 3282
    const/4 p1, 0x0

    .line 3284
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3286
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3282
    return-object p1

    .line 3284
    :goto_2c
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3286
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method getLastResetTimeLocked()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1128
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    .line 1129
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    return-wide v0
.end method

.method getLauncherShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4413
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4414
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutUser;

    .line 4415
    if-nez v1, :cond_10

    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 4417
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->getAllLaunchersForTest()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/ShortcutLauncher;

    monitor-exit v0

    return-object p1

    .line 4418
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1270
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p2

    .line 1271
    invoke-virtual {p2, p1, p3}, Lcom/android/server/pm/ShortcutUser;->getLauncherShortcuts(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object p1

    .line 1270
    return-object p1
.end method

.method public getManifestShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2134
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2136
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2137
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2139
    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/pm/-$$Lambda$FW40Da1L1EZJ_usDX0ew1qRMmtc;->INSTANCE:Lcom/android/server/pm/-$$Lambda$FW40Da1L1EZJ_usDX0ew1qRMmtc;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/pm/ShortcutService;->getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 2142
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw p1
.end method

.method getMaxActivityShortcuts()I
    .registers 2

    .line 1625
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return v0
.end method

.method getMaxIconDimensionForTest()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4378
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    return v0
.end method

.method public getMaxShortcutCountPerActivity(Ljava/lang/String;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2207
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2209
    iget p1, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return p1
.end method

.method getMaxShortcutsForTest()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4363
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return v0
.end method

.method getMaxUpdatesPerIntervalForTest()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4368
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    return v0
.end method

.method getNextResetTimeLocked()J
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1135
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    .line 1136
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    iget-wide v2, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method getNonPersistentUserLocked(I)Lcom/android/server/pm/ShortcutNonPersistentUser;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1229
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutNonPersistentUser;

    .line 1230
    if-nez v0, :cond_14

    .line 1231
    new-instance v0, Lcom/android/server/pm/ShortcutNonPersistentUser;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutNonPersistentUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    .line 1232
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1234
    :cond_14
    return-object v0
.end method

.method final getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4

    .line 3148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method final getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3171
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->injectPackageInfoWithUninstalled(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method final getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4

    .line 3140
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method getPackageShortcutForTest(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4403
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4404
    :try_start_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    .line 4405
    if-nez p1, :cond_c

    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 4407
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 4408
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4393
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4394
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/ShortcutUser;

    .line 4395
    if-nez p2, :cond_10

    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 4397
    :cond_10
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutUser;->getAllPackagesForTest()Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    monitor-exit v0

    return-object p1

    .line 4398
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1260
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p2

    .line 1261
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackage;->getUser()Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutUser;->onCalledByPublisher(Ljava/lang/String;)V

    .line 1262
    return-object p2
.end method

.method getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1252
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    return-object p1
.end method

.method getParentOrSelfUserId(I)I
    .registers 3

    .line 3556
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->getProfileParentId(I)I

    move-result p1

    return p1
.end method

.method public getPinnedShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2148
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2150
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2151
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2153
    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/pm/-$$Lambda$K2g8Oho05j5S7zVOkoQrHzM_Gig;->INSTANCE:Lcom/android/server/pm/-$$Lambda$K2g8Oho05j5S7zVOkoQrHzM_Gig;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/pm/ShortcutService;->getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 2156
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public getRateLimitResetTime(Ljava/lang/String;I)J
    .registers 5

    .line 2229
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2231
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2232
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2234
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getNextResetTimeLocked()J

    move-result-wide v0

    monitor-exit p1

    return-wide v0

    .line 2235
    :catchall_f
    move-exception p2

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p2
.end method

.method public getRemainingCallCount(Ljava/lang/String;I)I
    .registers 5

    .line 2214
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2216
    nop

    .line 2217
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    .line 2216
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v0

    .line 2219
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2220
    :try_start_13
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2222
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    .line 2223
    iget p2, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    move-result p1

    sub-int/2addr p2, p1

    monitor-exit v1

    return p2

    .line 2224
    :catchall_23
    move-exception p1

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_23

    throw p1
.end method

.method getResetIntervalForTest()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4373
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    return-wide v0
.end method

.method public getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/IntentFilter;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2162
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2163
    const-string p1, "android.permission.MANAGE_APP_PREDICTIONS"

    const-string v0, "getShareTargets"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2167
    :try_start_d
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2171
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p3

    .line 2172
    new-instance v1, Lcom/android/server/pm/-$$Lambda$ShortcutService$H1HFyb1U9E1-y03suEsi37_w-t0;

    invoke-direct {v1, v0, p2}, Lcom/android/server/pm/-$$Lambda$ShortcutService$H1HFyb1U9E1-y03suEsi37_w-t0;-><init>(Ljava/util/List;Landroid/content/IntentFilter;)V

    invoke-virtual {p3, v1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 2174
    new-instance p2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p2, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit p1

    return-object p2

    .line 2175
    :catchall_28
    move-exception p2

    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_28

    throw p2
.end method

.method getShortcutRequestPinProcessorForTest()Lcom/android/server/pm/ShortcutRequestPinProcessor;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4423
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    return-object v0
.end method

.method getShortcutsForTest()Landroid/util/SparseArray;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/ShortcutUser;",
            ">;"
        }
    .end annotation

    .line 4358
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    return-object v0
.end method

.method getStatStartTime()J
    .registers 3

    .line 484
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method getUidLastForegroundElapsedTimeLocked(I)J
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getUserBitmapFilePath(I)Ljava/io/File;
    .registers 4

    .line 4353
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object p1

    const-string v1, "bitmaps"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final getUserFile(I)Ljava/io/File;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 960
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "shortcuts.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1207
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1208
    const-string v0, "User still locked"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1211
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutUser;

    .line 1212
    if-nez v0, :cond_28

    .line 1213
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->loadUserLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    .line 1214
    if-nez v0, :cond_20

    .line 1215
    new-instance v0, Lcom/android/server/pm/ShortcutUser;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    .line 1217
    :cond_20
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1220
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->checkPackageChanges(I)V

    .line 1222
    :cond_28
    return-object v0
.end method

.method handleLocaleChanged()V
    .registers 5

    .line 2899
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    .line 2901
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2902
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_1a

    .line 2904
    :try_start_a
    sget-object v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$oes_dY8CJz5MllJiOggarpV9YkA;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$oes_dY8CJz5MllJiOggarpV9YkA;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_15

    .line 2906
    :try_start_f
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2907
    nop

    .line 2908
    monitor-exit v0

    .line 2909
    return-void

    .line 2906
    :catchall_15
    move-exception v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v3

    .line 2908
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method handleOnUidStateChanged(II)V
    .registers 6

    .line 524
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 525
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 530
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 531
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 533
    :cond_17
    monitor-exit v0

    .line 534
    return-void

    .line 533
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method handleStopUser(I)V
    .registers 6

    .line 641
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->unloadUserLocked(I)V

    .line 644
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    .line 645
    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 646
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_12

    .line 647
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_15

    .line 648
    return-void

    .line 646
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    :try_start_14
    throw p1

    .line 647
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_15

    throw p1
.end method

.method handleUnlockUser(I)V
    .registers 5

    .line 616
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 617
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 618
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_17

    .line 627
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 628
    new-instance v2, Lcom/android/server/pm/-$$Lambda$ShortcutService$QFWliMhWloedhnaZCwVKaqKPVb4;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/server/pm/-$$Lambda$ShortcutService$QFWliMhWloedhnaZCwVKaqKPVb4;-><init>(Lcom/android/server/pm/ShortcutService;JI)V

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutService;->injectRunOnNewThread(Ljava/lang/Runnable;)V

    .line 634
    return-void

    .line 618
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public hasShareTargets(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 2181
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2182
    const-string p1, "android.permission.MANAGE_APP_PREDICTIONS"

    const-string v0, "hasShareTargets"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2186
    :try_start_d
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2188
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackage;->hasShareTargets()Z

    move-result p2

    monitor-exit p1

    return p2

    .line 2189
    :catchall_1a
    move-exception p2

    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw p2
.end method

.method hasShortcutHostPermission(Ljava/lang/String;III)Z
    .registers 6

    .line 2343
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 2344
    const/4 p1, 0x1

    return p1

    .line 2346
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide p3

    .line 2348
    const/4 v0, 0x4

    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermissionInner(Ljava/lang/String;I)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_15

    .line 2350
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 2348
    return p1

    .line 2350
    :catchall_15
    move-exception p1

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method hasShortcutHostPermissionInner(Ljava/lang/String;I)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2386
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2387
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2389
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 2392
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->getCachedLauncher()Landroid/content/ComponentName;

    move-result-object v2

    .line 2393
    if-eqz v2, :cond_1d

    .line 2394
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2395
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 2400
    :cond_1d
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Landroid/content/ComponentName;

    move-result-object p2

    .line 2403
    invoke-virtual {v1, p2}, Lcom/android/server/pm/ShortcutUser;->setLauncher(Landroid/content/ComponentName;)V

    .line 2404
    if-eqz p2, :cond_30

    .line 2408
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 2411
    :cond_30
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 2413
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p1
.end method

.method injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3218
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3219
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 3221
    const/4 v4, 0x3

    :try_start_9
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v6, 0xc2000

    invoke-interface {v5, p1, v6, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_1b
    .catchall {:try_start_9 .. :try_end_12} :catchall_19

    .line 3227
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3229
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3221
    return-object p1

    .line 3227
    :catchall_19
    move-exception p1

    goto :goto_2b

    .line 3222
    :catch_1b
    move-exception p1

    .line 3224
    :try_start_1c
    const-string p2, "ShortcutService"

    const-string v5, "RemoteException"

    invoke-static {p2, v5, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 3225
    const/4 p1, 0x0

    .line 3227
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3229
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3225
    return-object p1

    .line 3227
    :goto_2b
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3229
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method injectBinderCallingPid()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4284
    invoke-static {}, Lcom/android/server/pm/ShortcutService;->getCallingPid()I

    move-result v0

    return v0
.end method

.method injectBinderCallingUid()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4279
    invoke-static {}, Lcom/android/server/pm/ShortcutService;->getCallingUid()I

    move-result v0

    return v0
.end method

.method injectBuildFingerprint()Ljava/lang/String;
    .registers 2

    .line 4305
    sget-object v0, Landroid/os/Build;->DATE:Ljava/lang/String;

    return-object v0
.end method

.method injectClearCallingIdentity()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4294
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method injectCurrentTimeMillis()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method injectDipToPixel(I)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 745
    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 746
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 745
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method injectElapsedRealtime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4268
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1561
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    return-void
.end method

.method injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3249
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3250
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 3252
    const/4 v4, 0x6

    :try_start_9
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v6, 0xc2080

    invoke-interface {v5, p1, v6, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_1b
    .catchall {:try_start_9 .. :try_end_12} :catchall_19

    .line 3259
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3261
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3252
    return-object p1

    .line 3259
    :catchall_19
    move-exception p1

    goto :goto_2b

    .line 3254
    :catch_1b
    move-exception p1

    .line 3256
    :try_start_1c
    const-string p2, "ShortcutService"

    const-string v5, "RemoteException"

    invoke-static {p2, v5, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 3257
    const/4 p1, 0x0

    .line 3259
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3261
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3257
    return-object p1

    .line 3259
    :goto_2b
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3261
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method injectGetDefaultMainActivity(Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 8

    .line 3444
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3446
    nop

    .line 3447
    const/16 v2, 0xb

    :try_start_7
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object p1

    .line 3448
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_17

    :goto_16
    goto :goto_25

    :cond_17
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_29

    goto :goto_16

    .line 3450
    :goto_25
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3448
    return-object v4

    .line 3450
    :catchall_29
    move-exception p1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method public injectGetLocaleTagsForUser(I)Ljava/lang/String;
    .registers 2

    .line 493
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method injectGetMainActivities(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 3493
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3495
    const/16 v2, 0xc

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_13

    .line 3497
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3495
    return-object p1

    .line 3497
    :catchall_13
    move-exception p1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method injectGetPackageUid(Ljava/lang/String;I)I
    .registers 7

    .line 3152
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 3154
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v3, 0xc2000

    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 3160
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3154
    return p1

    .line 3160
    :catchall_11
    move-exception p1

    goto :goto_20

    .line 3155
    :catch_13
    move-exception p1

    .line 3157
    :try_start_14
    const-string p2, "ShortcutService"

    const-string v2, "RemoteException"

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    .line 3158
    const/4 p1, -0x1

    .line 3160
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3158
    return p1

    .line 3160
    :goto_20
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw p1
.end method

.method injectGetPackagesWithUninstalled(I)Ljava/util/List;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3297
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 3298
    const v1, 0xc2000

    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 3299
    if-nez p1, :cond_10

    .line 3300
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3302
    :cond_10
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method injectGetPinConfirmationActivity(Ljava/lang/String;II)Landroid/content/ComponentName;
    .registers 5

    .line 3524
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3525
    const/4 v0, 0x1

    if-ne p3, v0, :cond_9

    .line 3526
    const-string p3, "android.content.pm.action.CONFIRM_PIN_SHORTCUT"

    goto :goto_b

    .line 3527
    :cond_9
    const-string p3, "android.content.pm.action.CONFIRM_PIN_APPWIDGET"

    .line 3529
    :goto_b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3530
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object p1

    .line 3532
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 3533
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    return-object p1

    .line 3535
    :cond_30
    const/4 p1, 0x0

    return-object p1
.end method

.method injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .registers 10

    .line 3376
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3377
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 3379
    const/16 v4, 0x9

    :try_start_a
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p1
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_14} :catch_1d
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 3385
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3387
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3379
    return-object p1

    .line 3385
    :catchall_1b
    move-exception p1

    goto :goto_41

    .line 3381
    :catch_1d
    move-exception p2

    .line 3382
    :try_start_1e
    const-string p2, "ShortcutService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resources for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_1b

    .line 3383
    const/4 p1, 0x0

    .line 3385
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3387
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3383
    return-object p1

    .line 3385
    :goto_41
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3387
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method injectHasAccessShortcutsPermission(II)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2369
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_SHORTCUTS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method injectHasUnlimitedShortcutsApiCallsPermission(II)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2378
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UNLIMITED_SHORTCUTS_API_CALLS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3507
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3509
    const/16 v2, 0xd

    :try_start_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object p1

    .line 3510
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_20

    if-lez p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    .line 3512
    :goto_1c
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3509
    return p1

    .line 3512
    :catchall_20
    move-exception p1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method injectIsLowRamDevice()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4340
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    return v0
.end method

.method injectIsMainActivity(Landroid/content/ComponentName;I)Z
    .registers 10

    .line 3458
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3460
    const/4 v2, 0x0

    const/16 v3, 0xc

    if-nez p1, :cond_14

    .line 3461
    :try_start_9
    const-string/jumbo p1, "null activity detected"

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_3e

    .line 3462
    nop

    .line 3471
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3462
    return v2

    .line 3464
    :cond_14
    :try_start_14
    const-string v4, "android.__dummy__"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_3e

    const/4 v5, 0x1

    if-eqz v4, :cond_26

    .line 3465
    nop

    .line 3471
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3465
    return v5

    .line 3467
    :cond_26
    nop

    .line 3468
    :try_start_27
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3467
    invoke-virtual {p0, v4, v6, p1, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object p1

    .line 3469
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_3e

    if-lez p1, :cond_3a

    move v2, v5

    .line 3471
    :cond_3a
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3469
    return v2

    .line 3471
    :catchall_3e
    move-exception p1

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method injectIsSafeModeEnabled()Z
    .registers 4

    .line 3539
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 3541
    :try_start_4
    const-string/jumbo v2, "window"

    .line 3542
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 3543
    invoke-interface {v2}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    move-result v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_1c
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 3547
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3541
    return v2

    .line 3547
    :catchall_17
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v2

    .line 3544
    :catch_1c
    move-exception v2

    .line 3545
    const/4 v2, 0x0

    .line 3547
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3545
    return v2
.end method

.method injectPackageInfoWithUninstalled(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3182
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3183
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 3185
    const/4 v4, 0x2

    const/4 v5, 0x1

    :try_start_a
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v7, 0xc2000

    .line 3187
    if-eqz p3, :cond_14

    const/high16 v8, 0x8000000

    goto :goto_15

    :cond_14
    const/4 v8, 0x0

    :goto_15
    or-int/2addr v7, v8

    .line 3185
    invoke-interface {v6, p1, v7, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_28
    .catchall {:try_start_a .. :try_end_1a} :catchall_26

    .line 3194
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3196
    nop

    .line 3197
    if-eqz p3, :cond_21

    goto :goto_22

    :cond_21
    move v4, v5

    .line 3196
    :goto_22
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3185
    return-object p1

    .line 3194
    :catchall_26
    move-exception p1

    goto :goto_3d

    .line 3189
    :catch_28
    move-exception p1

    .line 3191
    :try_start_29
    const-string p2, "ShortcutService"

    const-string v6, "RemoteException"

    invoke-static {p2, v6, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_26

    .line 3192
    const/4 p1, 0x0

    .line 3194
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3196
    nop

    .line 3197
    if-eqz p3, :cond_38

    goto :goto_39

    :cond_38
    move v4, v5

    .line 3196
    :goto_39
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3192
    return-object p1

    .line 3194
    :goto_3d
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3196
    nop

    .line 3197
    if-eqz p3, :cond_44

    goto :goto_45

    :cond_44
    move v4, v5

    .line 3196
    :goto_45
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method injectPostToHandler(Ljava/lang/Runnable;)V
    .registers 3

    .line 1604
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1605
    return-void
.end method

.method injectRegisterUidObserver(Landroid/app/IUidObserver;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4346
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4349
    goto :goto_b

    .line 4348
    :catch_a
    move-exception p1

    .line 4350
    :goto_b
    return-void
.end method

.method injectRestoreCallingIdentity(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4300
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4301
    return-void
.end method

.method injectRunOnNewThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 1608
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1609
    return-void
.end method

.method injectSendIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 9

    .line 3560
    if-nez p1, :cond_3

    .line 3561
    return-void

    .line 3564
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_d} :catch_e

    .line 3568
    goto :goto_17

    .line 3566
    :catch_e
    move-exception p1

    .line 3567
    const-string p2, "ShortcutService"

    const-string/jumbo v0, "sendIntent failed()."

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3569
    :goto_17
    return-void
.end method

.method injectShortcutManagerConstants()Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 739
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 738
    const-string/jumbo v1, "shortcut_manager_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method injectShouldPerformVerification()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4432
    const/4 v0, 0x0

    return v0
.end method

.method injectSystemDataPath()Ljava/io/File;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4326
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method injectUptimeMillis()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method injectUserDataPath(I)Ljava/io/File;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4331
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "shortcut_service"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method injectValidateIconResPackage(Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)V
    .registers 3

    .line 1454
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1458
    return-void

    .line 1455
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Icon resource must reside in shortcut owner package"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method injectXmlMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 4

    .line 3371
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method isDummyMainActivity(Landroid/content/ComponentName;)Z
    .registers 3

    .line 3485
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.__dummy__"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method isEphemeralApp(Ljava/lang/String;I)Z
    .registers 3

    .line 3366
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->isEphemeralApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    return p1
.end method

.method isPackageInstalled(Ljava/lang/String;I)Z
    .registers 3

    .line 3362
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public isRequestPinItemSupported(II)Z
    .registers 6

    .line 2280
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 2282
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 2283
    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->isRequestPinItemSupported(II)Z

    move-result p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 2285
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2282
    return p1

    .line 2285
    :catchall_e
    move-exception p1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw p1
.end method

.method isUidForegroundLocked(I)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 542
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_6

    .line 545
    return v0

    .line 548
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x15

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 549
    return v0

    .line 553
    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result p1

    return p1
.end method

.method protected isUserUnlockedL(I)Z
    .registers 4

    .line 1177
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 1178
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1179
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 1181
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_16

    .line 1187
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result p1

    return p1

    .line 1181
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public synthetic lambda$applyRestore$12$ShortcutService(Ljava/io/PrintWriter;)V
    .registers 3

    .line 3646
    const-string v0, "Start time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3647
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->dumpCurrentTime(Ljava/io/PrintWriter;)V

    .line 3648
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3649
    return-void
.end method

.method public synthetic lambda$applyRestore$13$ShortcutService(Ljava/io/PrintWriter;)V
    .registers 3

    .line 3675
    const-string v0, "Finish time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3676
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->dumpCurrentTime(Ljava/io/PrintWriter;)V

    .line 3677
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3678
    return-void
.end method

.method public synthetic lambda$checkPackageChanges$7$ShortcutService(Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 5

    .line 3013
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3014
    return-void

    .line 3016
    :cond_b
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 3021
    invoke-static {p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(Lcom/android/server/pm/ShortcutPackageItem;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3023
    :cond_20
    return-void
.end method

.method public synthetic lambda$cleanUpPackageForAllLoadedUsers$3$ShortcutService(Ljava/lang/String;IZLcom/android/server/pm/ShortcutUser;)V
    .registers 5

    .line 2503
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result p4

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageLocked(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public synthetic lambda$handleUnlockUser$0$ShortcutService(JI)V
    .registers 6

    .line 629
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 630
    const/16 v1, 0xf

    :try_start_5
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 631
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 632
    monitor-exit v0

    .line 633
    return-void

    .line 632
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public synthetic lambda$notifyListeners$1$ShortcutService(ILjava/lang/String;)V
    .registers 6

    .line 1645
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_2b

    .line 1646
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1647
    monitor-exit v0

    return-void

    .line 1650
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1651
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_28

    .line 1653
    :try_start_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_19
    if-ltz v0, :cond_27

    .line 1654
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    invoke-interface {v2, p2, p1}, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;->onShortcutChanged(Ljava/lang/String;I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_2b

    .line 1653
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 1657
    :cond_27
    goto :goto_2c

    .line 1651
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw p1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2b} :catch_2b

    .line 1656
    :catch_2b
    move-exception p1

    .line 1658
    :goto_2c
    return-void
.end method

.method public synthetic lambda$rescanUpdatedPackagesLocked$8$ShortcutService(Lcom/android/server/pm/ShortcutUser;ILandroid/content/pm/ApplicationInfo;)V
    .registers 5

    .line 3052
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 3054
    iget-object p2, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 3055
    return-void
.end method

.method logDurationStat(IJ)V
    .registers 5

    .line 488
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 489
    return-void
.end method

.method public onApplicationActive(Ljava/lang/String;I)V
    .registers 5

    .line 2326
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceResetThrottlingPermission()V

    .line 2328
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2329
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2331
    monitor-exit v0

    return-void

    .line 2334
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    .line 2335
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimitingForCommandLineNoSaving()V

    .line 2336
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V

    .line 2337
    monitor-exit v0

    .line 2338
    return-void

    .line 2337
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method onBootPhase(I)V
    .registers 3

    .line 601
    const/16 v0, 0x1e0

    if-eq p1, v0, :cond_10

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_9

    goto :goto_14

    .line 606
    :cond_9
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_14

    .line 603
    :cond_10
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->initialize()V

    .line 604
    nop

    .line 609
    :goto_14
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 19

    .line 4034
    move-object v9, p0

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceShell()V

    .line 4036
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v10

    .line 4038
    :try_start_8
    new-instance v1, Lcom/android/server/pm/ShortcutService$MyShellCommand;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$1;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    move-result v1

    .line 4040
    move-object/from16 v2, p6

    invoke-virtual {v2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_26

    .line 4042
    invoke-virtual {p0, v10, v11}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4043
    nop

    .line 4044
    return-void

    .line 4042
    :catchall_26
    move-exception v0

    invoke-virtual {p0, v10, v11}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v0
.end method

.method openIconFileForWrite(ILandroid/content/pm/ShortcutInfo;)Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1378
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object p1

    .line 1379
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1380
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_37

    .line 1381
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1382
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 1385
    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    goto :goto_37

    .line 1383
    :cond_20
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create directory "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1388
    :cond_37
    :goto_37
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 1389
    const/4 p2, 0x0

    .line 1390
    :goto_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_49

    move-object v2, p1

    goto :goto_5d

    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1391
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7a

    .line 1396
    new-instance p1, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;

    invoke-direct {p1, v2}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;-><init>(Ljava/io/File;)V

    return-object p1

    .line 1389
    :cond_7a
    add-int/lit8 p2, p2, 0x1

    goto :goto_40
.end method

.method packageShortcutsChanged(Ljava/lang/String;I)V
    .registers 3

    .line 1633
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->notifyListeners(Ljava/lang/String;I)V

    .line 1634
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 1635
    return-void
.end method

.method queryActivities(Landroid/content/Intent;IZ)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 3417
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 3419
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 3420
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v3, 0xc2000

    invoke-virtual {v2, p1, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_3b

    .line 3423
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3424
    nop

    .line 3425
    if-eqz p1, :cond_38

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_1e

    goto :goto_38

    .line 3429
    :cond_1e
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {p2}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ActivityInfo;)Z

    move-result p2

    if-nez p2, :cond_30

    .line 3430
    sget-object p1, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    return-object p1

    .line 3432
    :cond_30
    if-eqz p3, :cond_37

    .line 3433
    sget-object p2, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate;

    invoke-interface {p1, p2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 3435
    :cond_37
    return-object p1

    .line 3426
    :cond_38
    :goto_38
    sget-object p1, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    return-object p1

    .line 3423
    :catchall_3b
    move-exception p1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw p1
.end method

.method queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 3406
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3407
    if-eqz p3, :cond_e

    .line 3408
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3410
    :cond_e
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p4, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeAllDynamicShortcuts(Ljava/lang/String;I)V
    .registers 6

    .line 2104
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2106
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2107
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2109
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2110
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts(Z)V

    .line 2111
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_19

    .line 2112
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 2114
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2115
    return-void

    .line 2111
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .registers 10

    .line 2075
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2076
    const-string/jumbo v0, "shortcutIds must be provided"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2078
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2079
    :try_start_c
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2081
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2083
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V

    .line 2086
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_1c
    if-ltz v3, :cond_37

    .line 2087
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2088
    invoke-virtual {v1, v4}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 2089
    goto :goto_34

    .line 2091
    :cond_31
    invoke-virtual {v1, v4, v2}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;Z)Z

    .line 2086
    :goto_34
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 2095
    :cond_37
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2096
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_42

    .line 2097
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 2099
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2100
    return-void

    .line 2096
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1
.end method

.method removeIconLocked(Landroid/content/pm/ShortcutInfo;)V
    .registers 3

    .line 1277
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 1278
    return-void
.end method

.method public reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 2249
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2251
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2258
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2259
    :try_start_9
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2261
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2263
    invoke-virtual {v1, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 2264
    const-string p3, "ShortcutService"

    const-string/jumbo v1, "reportShortcutUsed: package %s doesn\'t have shortcut %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    monitor-exit v0

    return-void

    .line 2268
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_41

    .line 2270
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 2272
    :try_start_32
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v2, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->reportShortcutUsage(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_3c

    .line 2274
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2275
    nop

    .line 2276
    return-void

    .line 2274
    :catchall_3c
    move-exception p1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw p1

    .line 2268
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Z
    .registers 14

    .line 1942
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string v1, "Shortcut must be enabled"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1944
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move-object v5, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result p1

    return p1
.end method

.method resetAllThrottlingInner()V
    .registers 4

    .line 2314
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2315
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 2316
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 2317
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    .line 2318
    const-string v0, "ShortcutService"

    const-string v1, "ShortcutManager: throttling counter reset for all users"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    return-void

    .line 2316
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public resetThrottling()V
    .registers 2

    .line 2295
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystemOrShell()V

    .line 2297
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->resetThrottlingInner(I)V

    .line 2298
    return-void
.end method

.method resetThrottlingInner(I)V
    .registers 6

    .line 2301
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2302
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 2303
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is locked or not running"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    monitor-exit v0

    return-void

    .line 2307
    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->resetThrottling()V

    .line 2308
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_48

    .line 2309
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 2310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortcutManager: throttling counter reset for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShortcutService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    return-void

    .line 2308
    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method saveBaseStateLocked()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 880
    const-string/jumbo v0, "root"

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Landroid/util/AtomicFile;

    move-result-object v1

    .line 885
    nop

    .line 887
    const/4 v2, 0x0

    :try_start_9
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_39

    .line 890
    :try_start_d
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 891
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 892
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 893
    invoke-interface {v4, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 896
    const-string v5, "last_reset_time"

    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 899
    invoke-interface {v4, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 900
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 903
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_36} :catch_37

    .line 907
    goto :goto_58

    .line 904
    :catch_37
    move-exception v0

    goto :goto_3b

    :catch_39
    move-exception v0

    move-object v3, v2

    .line 905
    :goto_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write to file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ShortcutService"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 906
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 908
    :goto_58
    return-void
.end method

.method saveDirtyInfo()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1109
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_31

    .line 1110
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_27

    .line 1111
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1112
    const/16 v3, -0x2710

    if-ne v2, v3, :cond_21

    .line 1113
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveBaseStateLocked()V

    goto :goto_24

    .line 1115
    :cond_21
    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V

    .line 1110
    :goto_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 1118
    :cond_27
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1119
    monitor-exit v0

    .line 1122
    goto :goto_37

    .line 1119
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    :try_start_30
    throw v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_31} :catch_31

    .line 1120
    :catch_31
    move-exception v0

    .line 1121
    const-string v1, "Exception in saveDirtyInfo"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1123
    :goto_37
    return-void
.end method

.method saveIconAndFixUpShortcutLocked(Landroid/content/pm/ShortcutInfo;)V
    .registers 8

    .line 1402
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    if-nez v0, :cond_78

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_78

    .line 1406
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 1409
    :try_start_11
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->removeIconLocked(Landroid/content/pm/ShortcutInfo;)V

    .line 1411
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_73

    .line 1412
    if-nez v2, :cond_1e

    .line 1446
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 1413
    return-void

    .line 1415
    :cond_1e
    :try_start_1e
    iget v3, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_73

    .line 1418
    :try_start_20
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_58

    const/4 v5, 0x2

    if-eq v4, v5, :cond_43

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3e

    .line 1430
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    .line 1431
    int-to-float v2, v3

    const/high16 v3, 0x3f800000  # 1.0f

    const/high16 v4, 0x40000000  # 2.0f

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v5

    mul-float/2addr v5, v4

    add-float/2addr v5, v3

    mul-float/2addr v2, v5

    float-to-int v3, v2

    .line 1432
    goto :goto_5c

    .line 1437
    :cond_3e
    invoke-static {}, Landroid/content/pm/ShortcutInfo;->getInvalidIconException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 1420
    :cond_43
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/ShortcutService;->injectValidateIconResPackage(Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)V

    .line 1422
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    .line 1423
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_51
    .catchall {:try_start_20 .. :try_end_51} :catchall_6e

    .line 1443
    :try_start_51
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_73

    .line 1446
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 1424
    return-void

    .line 1427
    :cond_58
    :try_start_58
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    .line 1428
    nop

    .line 1439
    :goto_5c
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v5, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/server/pm/ShortcutBitmapSaver;->saveBitmapLocked(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V
    :try_end_65
    .catchall {:try_start_58 .. :try_end_65} :catchall_6e

    .line 1443
    :try_start_65
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_73

    .line 1444
    nop

    .line 1446
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 1447
    nop

    .line 1448
    return-void

    .line 1443
    :catchall_6e
    move-exception v2

    :try_start_6f
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->clearIcon()V

    throw v2
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_73

    .line 1446
    :catchall_73
    move-exception p1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw p1

    .line 1403
    :cond_78
    :goto_78
    return-void
.end method

.method scheduleSaveUser(I)V
    .registers 2

    .line 1083
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    .line 1084
    return-void
.end method

.method public setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 11

    .line 1746
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 1748
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    .line 1749
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    .line 1750
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 1752
    nop

    .line 1753
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v2

    .line 1752
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v1

    .line 1755
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1756
    :try_start_1e
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 1758
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    .line 1760
    const/4 v4, 0x1

    invoke-virtual {v3, p2, v4}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V

    .line 1762
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    .line 1764
    const/4 v5, 0x0

    invoke-virtual {v3, p2, v5}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    .line 1767
    invoke-virtual {v3, v1}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    move-result v1

    if-nez v1, :cond_38

    .line 1768
    monitor-exit v2

    return v5

    .line 1772
    :cond_38
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    .line 1773
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    .line 1775
    move v1, v5

    :goto_3f
    if-ge v1, v0, :cond_4d

    .line 1776
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    invoke-direct {p0, v6, v5}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    .line 1775
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 1780
    :cond_4d
    invoke-virtual {v3, v4}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts(Z)V

    .line 1783
    nop

    :goto_51
    if-ge v5, v0, :cond_5f

    .line 1784
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 1785
    invoke-virtual {v3, v1}, Lcom/android/server/pm/ShortcutPackage;->addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    .line 1783
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 1789
    :cond_5f
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 1790
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_1e .. :try_end_63} :catchall_6a

    .line 1791
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 1793
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 1795
    return v4

    .line 1790
    :catchall_6a
    move-exception p1

    :try_start_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw p1
.end method

.method public setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 2492
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2493
    :try_start_3
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getNonPersistentUserLocked(I)Lcom/android/server/pm/ShortcutNonPersistentUser;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/server/pm/ShortcutNonPersistentUser;->setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    monitor-exit v0

    .line 2495
    return-void

    .line 2494
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method shouldBackupApp(Ljava/lang/String;I)Z
    .registers 4

    .line 3574
    const v0, 0x8000

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->isApplicationFlagSet(Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method throwIfUserLockedL(I)V
    .registers 5

    .line 1192
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1195
    return-void

    .line 1193
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is locked or not running"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateConfigurationLocked(Ljava/lang/String;)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 691
    nop

    .line 693
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 695
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_a
    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_d} :catch_f

    .line 701
    move p1, v1

    goto :goto_18

    .line 696
    :catch_f
    move-exception p1

    .line 699
    const-string v3, "ShortcutService"

    const-string v4, "Bad shortcut manager settings"

    invoke-static {v3, v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    move p1, v2

    .line 703
    :goto_18
    const-wide/16 v3, 0xbb8

    const-string/jumbo v5, "save_delay_ms"

    invoke-virtual {v0, v5, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    .line 706
    const-wide/16 v3, 0x1

    const-wide/32 v5, 0x15180

    const-string/jumbo v7, "reset_interval_sec"

    invoke-virtual {v0, v7, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    .line 710
    const-wide/16 v3, 0xa

    const-string v5, "max_updates_per_interval"

    invoke-virtual {v0, v5, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    .line 713
    const-string v5, "max_shortcuts"

    invoke-virtual {v0, v5, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    .line 716
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 717
    const-wide/16 v2, 0x30

    const-string v4, "max_icon_dimension_dp_lowram"

    invoke-virtual {v0, v4, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_72

    .line 720
    :cond_69
    const-wide/16 v2, 0x60

    const-string v4, "max_icon_dimension_dp"

    invoke-virtual {v0, v4, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v2, v2

    .line 716
    :goto_72
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 724
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->injectDipToPixel(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    .line 726
    sget-object v1, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    .line 727
    const-string v2, "icon_format"

    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 726
    invoke-static {v1}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 729
    const-wide/16 v1, 0x64

    const-string v3, "icon_quality"

    invoke-virtual {v0, v3, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    .line 733
    return p1
.end method

.method public updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 15

    .line 1801
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 1803
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    .line 1804
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    .line 1805
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 1807
    nop

    .line 1808
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v2

    .line 1807
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v1

    .line 1810
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1811
    :try_start_1e
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 1813
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    .line 1815
    const/4 v4, 0x1

    invoke-virtual {v3, p2, v4}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V

    .line 1820
    const/4 v5, 0x2

    invoke-virtual {v3, p2, v5}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    .line 1823
    invoke-virtual {v3, v1}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_36

    .line 1824
    monitor-exit v2

    return v5

    .line 1828
    :cond_36
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    .line 1829
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    .line 1831
    move v1, v5

    :goto_3d
    if-ge v1, v0, :cond_a5

    .line 1832
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    .line 1833
    invoke-direct {p0, v6, v4}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    .line 1835
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    .line 1838
    if-eqz v7, :cond_a2

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v8

    if-nez v8, :cond_59

    .line 1839
    goto :goto_a2

    .line 1842
    :cond_59
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v8

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v9

    if-eq v8, v9, :cond_6a

    .line 1843
    const-string v8, "ShortcutService"

    const-string v9, "ShortcutInfo.enabled cannot be changed with updateShortcuts()"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    :cond_6a
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->hasRank()Z

    move-result v8

    if-eqz v8, :cond_7a

    .line 1850
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    .line 1851
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    .line 1854
    :cond_7a
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    if-eqz v8, :cond_82

    move v8, v4

    goto :goto_83

    :cond_82
    move v8, v5

    .line 1855
    :goto_83
    if-eqz v8, :cond_88

    .line 1856
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutService;->removeIconLocked(Landroid/content/pm/ShortcutInfo;)V

    .line 1860
    :cond_88
    invoke-virtual {v7, v6}, Landroid/content/pm/ShortcutInfo;->copyNonNullFieldsFrom(Landroid/content/pm/ShortcutInfo;)V

    .line 1861
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1863
    if-eqz v8, :cond_97

    .line 1864
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcutLocked(Landroid/content/pm/ShortcutInfo;)V

    .line 1869
    :cond_97
    if-nez v8, :cond_9f

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 1870
    :cond_9f
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 1831
    :cond_a2
    :goto_a2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 1875
    :cond_a5
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 1876
    monitor-exit v2
    :try_end_a9
    .catchall {:try_start_1e .. :try_end_a9} :catchall_b0

    .line 1877
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 1879
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 1881
    return v4

    .line 1876
    :catchall_b0
    move-exception p1

    :try_start_b1
    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw p1
.end method

.method public validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    .line 1706
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 1707
    return-void
.end method

.method final verifyStates()V
    .registers 2

    .line 4440
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectShouldPerformVerification()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4441
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesInner()V

    .line 4443
    :cond_9
    return-void
.end method

.method waitForBitmapSavesForTest()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4457
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4458
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    .line 4459
    monitor-exit v0

    .line 4460
    return-void

    .line 4459
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method final wtf(Ljava/lang/String;)V
    .registers 3

    .line 4309
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4310
    return-void
.end method

.method wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 4314
    if-nez p2, :cond_9

    .line 4315
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Stacktrace"

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4317
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4318
    :try_start_c
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    .line 4319
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Last failure was logged here:"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    .line 4320
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_22

    .line 4321
    const-string v0, "ShortcutService"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4322
    return-void

    .line 4320
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method
