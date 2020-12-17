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

.field private static sPkgsKeepShortcutWhenClearData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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

    .line 177
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->sPkgsKeepShortcutWhenClearData:Ljava/util/List;

    .line 216
    sget-object v0, Lcom/android/server/pm/ShortcutService;->sPkgsKeepShortcutWhenClearData:Ljava/util/List;

    const-string v1, "com.meizu.flyme.directservice"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    .line 270
    new-instance v0, Lcom/android/server/pm/ShortcutService$1;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate;

    .line 277
    new-instance v0, Lcom/android/server/pm/ShortcutService$2;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 438
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 439
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .registers 23
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "looper"  # Landroid/os/Looper;
    .param p3, "onlyForPackageManagerApis"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 442
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;-><init>()V

    .line 265
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    .line 294
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    .line 300
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    .line 339
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    .line 342
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    .line 345
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    .line 348
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 358
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 385
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

    const-string/jumbo v15, "isActivityEnabled"

    const-string/jumbo v16, "packageUpdateCheck"

    const-string v17, "asyncPreloadUserDelay"

    const-string v18, "getDefaultLauncher()"

    filled-new-array/range {v2 .. v18}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 422
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    .line 428
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 507
    new-instance v1, Lcom/android/server/pm/ShortcutService$3;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutService$3;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUidObserver:Landroid/app/IUidObserver;

    .line 1098
    new-instance v1, Lcom/android/server/pm/-$$Lambda$jZzCUQd1whVIqs_s1XMLbFqTP_E;

    invoke-direct {v1, v0}, Lcom/android/server/pm/-$$Lambda$jZzCUQd1whVIqs_s1XMLbFqTP_E;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    .line 2890
    new-instance v1, Lcom/android/server/pm/ShortcutService$4;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutService$4;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2925
    new-instance v1, Lcom/android/server/pm/ShortcutService$5;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutService$5;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Landroid/content/BroadcastReceiver;

    .line 443
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 444
    const-class v1, Landroid/content/pm/ShortcutServiceInternal;

    new-instance v2, Lcom/android/server/pm/ShortcutService$LocalService;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/pm/ShortcutService$LocalService;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$1;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 445
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    .line 446
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 447
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 448
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 447
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 449
    const-class v1, Landroid/os/UserManagerInternal;

    .line 450
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    .line 449
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 451
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 452
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 451
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 453
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 454
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 453
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 456
    new-instance v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iget-object v3, v0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/ShortcutRequestPinProcessor;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 457
    new-instance v1, Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutBitmapSaver;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    .line 458
    new-instance v1, Lcom/android/server/pm/ShortcutDumpFiles;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutDumpFiles;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    .line 460
    if-eqz p3, :cond_117

    .line 461
    return-void

    .line 468
    :cond_117
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 469
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 471
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 473
    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 474
    const/16 v9, 0x3e8

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 475
    iget-object v3, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 478
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 479
    .local v3, "preferedActivityFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 481
    iget-object v10, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    move-object v13, v3

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 484
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 485
    .local v4, "localeFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 487
    iget-object v10, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/android/server/pm/ShortcutService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v15, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    move-object v13, v4

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 490
    iget-object v5, v0, Lcom/android/server/pm/ShortcutService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6}, Lcom/android/server/pm/ShortcutService;->injectRegisterUidObserver(Landroid/app/IUidObserver;I)V

    .line 492
    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/PackageInfo;)Z
    .registers 2
    .param p0, "x0"  # Landroid/content/pm/PackageInfo;

    .line 154
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/ShortcutService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/ShortcutService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/ShortcutService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageDataCleared(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/ShortcutService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/pm/ShortcutService;

    .line 154
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadConfigurationLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/pm/ShortcutService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I
    .param p3, "x3"  # Z

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/ShortcutService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/pm/ShortcutService;

    .line 154
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesForce()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/ShortcutService;

    .line 154
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/ShortcutService;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/ShortcutService;
    .param p1, "x1"  # Ljava/util/List;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->setReturnedByServer(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/ShortcutService;

    .line 154
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/ShortcutService;)Lcom/android/server/pm/ShortcutBitmapSaver;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/ShortcutService;

    .line 154
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
    .registers 8
    .param p0, "x0"  # Lcom/android/server/pm/ShortcutService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I
    .param p3, "x3"  # Landroid/content/pm/ShortcutInfo;
    .param p4, "x4"  # Landroid/appwidget/AppWidgetProviderInfo;
    .param p5, "x5"  # Landroid/os/Bundle;
    .param p6, "x6"  # Landroid/content/IntentSender;

    .line 154
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/ShortcutService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/ShortcutService;

    .line 154
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/ShortcutService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageUpdateFinished(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/ShortcutService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 154
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

    .line 1740
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 1741
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    .line 1740
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1743
    .end local v0  # "i":I
    :cond_14
    return-void
.end method

.method private cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "packageUserId"  # I
    .param p3, "appStillExists"  # Z

    .line 2512
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2513
    :try_start_3
    new-instance v1, Lcom/android/server/pm/-$$Lambda$ShortcutService$t1am7miIbc4iP6CfSL0gFgEsO0Y;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/-$$Lambda$ShortcutService$t1am7miIbc4iP6CfSL0gFgEsO0Y;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    .line 2516
    monitor-exit v0

    .line 2517
    return-void

    .line 2516
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private cleanupDanglingBitmapDirectoriesLocked(I)V
    .registers 12
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1313
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 1315
    .local v0, "start":J
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2

    .line 1317
    .local v2, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v3

    .line 1318
    .local v3, "bitmapDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 1319
    .local v4, "children":[Ljava/io/File;
    if-nez v4, :cond_13

    .line 1320
    return-void

    .line 1322
    :cond_13
    array-length v5, v4

    const/4 v6, 0x0

    :goto_15
    if-ge v6, v5, :cond_34

    aget-object v7, v4, v6

    .line 1323
    .local v7, "child":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_20

    .line 1324
    goto :goto_31

    .line 1326
    :cond_20
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1330
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v8}, Lcom/android/server/pm/ShortcutUser;->hasPackage(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2e

    .line 1334
    invoke-virtual {p0, p1, v8}, Lcom/android/server/pm/ShortcutService;->cleanupBitmapsForPackage(ILjava/lang/String;)V

    goto :goto_31

    .line 1336
    :cond_2e
    invoke-direct {p0, p1, v2, v8, v7}, Lcom/android/server/pm/ShortcutService;->cleanupDanglingBitmapFilesLocked(ILcom/android/server/pm/ShortcutUser;Ljava/lang/String;Ljava/io/File;)V

    .line 1322
    .end local v7  # "child":Ljava/io/File;
    .end local v8  # "packageName":Ljava/lang/String;
    :goto_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 1339
    :cond_34
    const/4 v5, 0x5

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 1340
    return-void
.end method

.method private cleanupDanglingBitmapFilesLocked(ILcom/android/server/pm/ShortcutUser;Ljava/lang/String;Ljava/io/File;)V
    .registers 12
    .param p1, "userId"  # I
    .param p2, "user"  # Lcom/android/server/pm/ShortcutUser;
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "path"  # Ljava/io/File;

    .line 1351
    nop

    .line 1352
    invoke-virtual {p2, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->getUsedBitmapFiles()Landroid/util/ArraySet;

    move-result-object v0

    .line 1354
    .local v0, "usedFiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_2a

    aget-object v4, v1, v3

    .line 1355
    .local v4, "child":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 1356
    goto :goto_27

    .line 1358
    :cond_1a
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1359
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 1363
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1354
    .end local v4  # "child":Ljava/io/File;
    .end local v5  # "name":Ljava/lang/String;
    :cond_27
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1366
    :cond_2a
    return-void
.end method

.method private dumpCheckin(Ljava/io/PrintWriter;Z)V
    .registers 8
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "clear"  # Z

    .line 4028
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4030
    :try_start_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 4032
    .local v1, "users":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 4033
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutUser;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/ShortcutUser;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 4032
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4036
    .end local v2  # "i":I
    :cond_23
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4038
    .local v2, "result":Lorg/json/JSONObject;
    const-string/jumbo v3, "shortcut"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4039
    const-string/jumbo v3, "lowRam"

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 4040
    const-string/jumbo v3, "iconSize"

    iget v4, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4042
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_48} :catch_4b
    .catchall {:try_start_3 .. :try_end_48} :catchall_49

    .line 4045
    .end local v1  # "users":Lorg/json/JSONArray;
    .end local v2  # "result":Lorg/json/JSONObject;
    goto :goto_53

    .line 4046
    :catchall_49
    move-exception v1

    goto :goto_55

    .line 4043
    :catch_4b
    move-exception v1

    .line 4044
    .local v1, "e":Lorg/json/JSONException;
    :try_start_4c
    const-string v2, "ShortcutService"

    const-string v3, "Unable to write in json"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4046
    .end local v1  # "e":Lorg/json/JSONException;
    :goto_53
    monitor-exit v0

    .line 4047
    return-void

    .line 4046
    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_49

    throw v1
.end method

.method private dumpCurrentTime(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 4018
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4019
    return-void
.end method

.method private dumpDumpFiles(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 4050
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4051
    :try_start_3
    const-string v1, "** SHORTCUT MANAGER FILES (dumpsys shortcut -n -f)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4052
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutDumpFiles;->dumpAll(Ljava/io/PrintWriter;)V

    .line 4053
    monitor-exit v0

    .line 4054
    return-void

    .line 4053
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private dumpInner(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 3907
    new-instance v0, Lcom/android/server/pm/ShortcutService$DumpFilter;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->dumpInner(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 3908
    return-void
.end method

.method private dumpInner(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .registers 12
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "filter"  # Lcom/android/server/pm/ShortcutService$DumpFilter;

    .line 3911
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3912
    :try_start_3
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpDetails()Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 3913
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    .line 3914
    .local v1, "now":J
    const-string v3, "Now: ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3915
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 3916
    const-string v3, "] "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3917
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3919
    const-string v3, "  Raw last reset: ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3920
    iget-wide v3, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 3921
    const-string v3, "] "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3922
    iget-wide v3, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    invoke-static {v3, v4}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3924
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    move-result-wide v3

    .line 3925
    .local v3, "last":J
    const-string v5, "  Last reset: ["

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3926
    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 3927
    const-string v5, "] "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3928
    invoke-static {v3, v4}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3930
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getNextResetTimeLocked()J

    move-result-wide v5

    .line 3931
    .local v5, "next":J
    const-string v7, "  Next reset: ["

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3932
    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 3933
    const-string v7, "] "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3934
    invoke-static {v5, v6}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3935
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3936
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3938
    const-string v7, "  Config:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3939
    const-string v7, "    Max icon dim: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3940
    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 3941
    const-string v7, "    Icon format: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3942
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3943
    const-string v7, "    Icon quality: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3944
    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 3945
    const-string v7, "    saveDelayMillis: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3946
    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 3947
    const-string v7, "    resetInterval: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3948
    iget-wide v7, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 3949
    const-string v7, "    maxUpdatesPerInterval: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3950
    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 3951
    const-string v7, "    maxShortcutsPerActivity: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3952
    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 3953
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3955
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const-string v8, "  "

    invoke-virtual {v7, p1, v8}, Lcom/android/internal/util/StatLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3957
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3958
    const-string v7, "  #Failures: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3959
    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 3961
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    if-eqz v7, :cond_e3

    .line 3962
    const-string v7, "  Last failure stack trace: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3963
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3966
    :cond_e3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3967
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    const-string v8, "  "

    invoke-virtual {v7, p1, v8}, Lcom/android/server/pm/ShortcutBitmapSaver;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3969
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3972
    .end local v1  # "now":J
    .end local v3  # "last":J
    .end local v5  # "next":J
    :cond_f0
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_f2
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_117

    .line 3973
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutUser;

    .line 3974
    .local v3, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isUserMatch(I)Z

    move-result v4

    if-eqz v4, :cond_114

    .line 3975
    const-string v4, "  "

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/pm/ShortcutUser;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 3976
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3972
    .end local v3  # "user":Lcom/android/server/pm/ShortcutUser;
    :cond_114
    add-int/lit8 v2, v2, 0x1

    goto :goto_f2

    .line 3980
    .end local v2  # "i":I
    :cond_117
    nop

    .local v1, "i":I
    :goto_118
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_13d

    .line 3981
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutNonPersistentUser;

    .line 3982
    .local v2, "user":Lcom/android/server/pm/ShortcutNonPersistentUser;
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutNonPersistentUser;->getUserId()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isUserMatch(I)Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 3983
    const-string v3, "  "

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/pm/ShortcutNonPersistentUser;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 3984
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3980
    .end local v2  # "user":Lcom/android/server/pm/ShortcutNonPersistentUser;
    :cond_13a
    add-int/lit8 v1, v1, 0x1

    goto :goto_118

    .line 3987
    .end local v1  # "i":I
    :cond_13d
    monitor-exit v0

    .line 3988
    return-void

    .line 3987
    :catchall_13f
    move-exception v1

    monitor-exit v0
    :try_end_141
    .catchall {:try_start_3 .. :try_end_141} :catchall_13f

    throw v1
.end method

.method private dumpUid(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 3991
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3992
    :try_start_3
    const-string v1, "** SHORTCUT MANAGER UID STATES (dumpsys shortcut -n -u)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3994
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 3995
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 3996
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 3997
    .local v3, "state":I
    const-string v4, "    UID="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3998
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 3999
    const-string v4, " state="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4000
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4001
    invoke-direct {p0, v3}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 4002
    const-string v4, "  [FG]"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4004
    :cond_38
    const-string v4, "  last FG="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4005
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 4006
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3994
    .end local v2  # "uid":I
    .end local v3  # "state":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 4008
    .end local v1  # "i":I
    :cond_4c
    monitor-exit v0

    .line 4009
    return-void

    .line 4008
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method private enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;

    .line 1559
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1560
    return-void

    .line 1562
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    return-void
.end method

.method private enforceResetThrottlingPermission()V
    .registers 3

    .line 1550
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1551
    return-void

    .line 1553
    :cond_7
    const/4 v0, 0x0

    const-string v1, "android.permission.RESET_SHORTCUT_MANAGER_THROTTLING"

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/ShortcutService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    return-void
.end method

.method private enforceShell()V
    .registers 3

    .line 1538
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1541
    return-void

    .line 1539
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSystem()V
    .registers 3

    .line 1544
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1547
    return-void

    .line 1545
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSystemOrShell()V
    .registers 3

    .line 1532
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 1533
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be system or shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1535
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

    .line 1724
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    .line 1725
    .local v0, "defaultActivity":Landroid/content/ComponentName;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_47

    .line 1726
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 1727
    .local v3, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_44

    .line 1728
    if-nez v0, :cond_41

    .line 1729
    nop

    .line 1730
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v5

    .line 1729
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectGetDefaultMainActivity(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 1731
    if-eqz v0, :cond_28

    move v4, v2

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    :goto_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Launcher activity not found for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1731
    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1734
    :cond_41
    invoke-virtual {v3, v0}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 1725
    .end local v3  # "si":Landroid/content/pm/ShortcutInfo;
    :cond_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 1737
    .end local v1  # "i":I
    :cond_47
    return-void
.end method

.method private fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V
    .registers 4
    .param p1, "shortcut"  # Landroid/content/pm/ShortcutInfo;
    .param p2, "forUpdate"  # Z

    .line 1713
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 1714
    return-void
.end method

.method private fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V
    .registers 8
    .param p1, "shortcut"  # Landroid/content/pm/ShortcutInfo;
    .param p2, "forUpdate"  # Z
    .param p3, "forPinRequest"  # Z

    .line 1681
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isReturnedByServer()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1682
    const-string v0, "ShortcutService"

    const-string v1, "Re-publishing ShortcutInfo returned by server is not supported. Some information such as icon may lost from shortcut."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    :cond_d
    const-string v0, "Null shortcut detected"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 1688
    nop

    .line 1689
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

    .line 1690
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not belong to package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1691
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1688
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1692
    nop

    .line 1693
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(Landroid/content/ComponentName;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1694
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not main activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1692
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1698
    :cond_75
    const/4 v0, 0x0

    if-nez p2, :cond_8b

    .line 1699
    invoke-virtual {p1, p3}, Landroid/content/pm/ShortcutInfo;->enforceMandatoryFields(Z)V

    .line 1700
    if-nez p3, :cond_8b

    .line 1701
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_85

    const/4 v1, 0x1

    goto :goto_86

    :cond_85
    move v1, v0

    :goto_86
    const-string v2, "Cannot publish shortcut: target activity is not set"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1705
    :cond_8b
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 1706
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/ShortcutInfo;->validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 1709
    :cond_98
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->replaceFlags(I)V

    .line 1710
    return-void
.end method

.method private forUpdatedPackages(IJZLjava/util/function/Consumer;)V
    .registers 11
    .param p1, "userId"  # I
    .param p2, "lastScanTime"  # J
    .param p4, "afterOta"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJZ",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 3339
    .local p5, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 3340
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_22

    .line 3341
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 3346
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-nez p4, :cond_1a

    iget-wide v3, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v3, v3, p2

    if-ltz v3, :cond_1f

    .line 3351
    :cond_1a
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {p5, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3340
    .end local v2  # "pi":Landroid/content/pm/PackageInfo;
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 3354
    .end local v1  # "i":I
    :cond_22
    return-void
.end method

.method static formatTime(J)Ljava/lang/String;
    .registers 4
    .param p0, "time"  # J

    .line 4012
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 4013
    .local v0, "tobj":Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 4014
    const-string v1, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getBaseStateFile()Landroid/util/AtomicFile;
    .registers 4

    .line 675
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectSystemDataPath()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "shortcut_service.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 676
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 677
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method private getCallingUserId()I
    .registers 2

    .line 4316
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private getMainActivityIntent()Landroid/content/Intent;
    .registers 3

    .line 3420
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3421
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3422
    return-object v0
.end method

.method private getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "cloneFlags"  # I
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

    .line 2207
    .local p4, "query":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2209
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2210
    .local v1, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v1, v0, p4, p3}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    .line 2212
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->setReturnedByServer(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method private handlePackageAdded(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 3079
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3080
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3081
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 3082
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 3083
    .end local v1  # "user":Lcom/android/server/pm/ShortcutUser;
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 3084
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3085
    return-void

    .line 3083
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private handlePackageChanged(Ljava/lang/String;I)V
    .registers 13
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "packageUserId"  # I

    .line 3130
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3132
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageRemoved(Ljava/lang/String;I)V

    .line 3133
    return-void

    .line 3141
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3142
    :try_start_d
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3144
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 3146
    const-string v3, "com.meizu.setup"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 3147
    invoke-static {}, Lcom/android/server/pm/SetupPackageHandler;->disableListToArray()[Ljava/lang/String;

    move-result-object v3

    .line 3148
    .local v3, "disableArray":[Ljava/lang/String;
    if-eqz v3, :cond_46

    .line 3149
    array-length v4, v3

    const/4 v5, 0x0

    :goto_25
    if-ge v5, v4, :cond_46

    aget-object v6, v3, v5

    .line 3150
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {v1, v6, v2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 3151
    const-string v7, "ShortcutService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlePackageChanged rescanPackageIfNeeded pkg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    nop

    .end local v6  # "pkg":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 3156
    .end local v1  # "user":Lcom/android/server/pm/ShortcutUser;
    .end local v3  # "disableArray":[Ljava/lang/String;
    :cond_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_d .. :try_end_47} :catchall_4b

    .line 3158
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3159
    return-void

    .line 3156
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method private handlePackageDataCleared(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "packageUserId"  # I

    .line 3119
    sget-object v0, Lcom/android/server/pm/ShortcutService;->sPkgsKeepShortcutWhenClearData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePackageDataCleared skip for pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    return-void

    .line 3124
    :cond_1f
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    .line 3126
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3127
    return-void
.end method

.method private handlePackageRemoved(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "packageUserId"  # I

    .line 3108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    .line 3110
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3111
    return-void
.end method

.method private handlePackageUpdateFinished(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 3092
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3093
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3094
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 3096
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3097
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 3099
    .end local v1  # "user":Lcom/android/server/pm/ShortcutUser;
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    .line 3100
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3101
    return-void

    .line 3099
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private initialize()V
    .registers 3

    .line 684
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 685
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadConfigurationLocked()V

    .line 686
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadBaseStateLocked()V

    .line 687
    monitor-exit v0

    .line 688
    return-void

    .line 687
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private isApplicationFlagSet(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "flags"  # I

    .line 3357
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3358
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_d

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, p3

    if-ne v1, p3, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method private isCallerShell()Z
    .registers 3

    .line 1527
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    .line 1528
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_d

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method private isCallerSystem()Z
    .registers 3

    .line 1522
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    .line 1523
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    return v1
.end method

.method static isClockValid(J)Z
    .registers 4
    .param p0, "time"  # J

    .line 1151
    const-wide/32 v0, 0x54a48e00

    cmp-long v0, p0, v0

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static isEphemeralApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2
    .param p0, "ai"  # Landroid/content/pm/ApplicationInfo;

    .line 3366
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isInstalled(Landroid/content/pm/ActivityInfo;)Z
    .registers 2
    .param p0, "ai"  # Landroid/content/pm/ActivityInfo;

    .line 3374
    if-eqz p0, :cond_c

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static isInstalled(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3
    .param p0, "ai"  # Landroid/content/pm/ApplicationInfo;

    .line 3362
    if-eqz p0, :cond_f

    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private static isInstalled(Landroid/content/pm/PackageInfo;)Z
    .registers 2
    .param p0, "pi"  # Landroid/content/pm/PackageInfo;

    .line 3370
    if-eqz p0, :cond_c

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static isInstalledOrNull(Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;
    .registers 2
    .param p0, "ai"  # Landroid/content/pm/ActivityInfo;

    .line 3386
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method private static isInstalledOrNull(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .registers 2
    .param p0, "ai"  # Landroid/content/pm/ApplicationInfo;

    .line 3378
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method private static isInstalledOrNull(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;
    .registers 2
    .param p0, "pi"  # Landroid/content/pm/PackageInfo;

    .line 3382
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method private isProcessStateForeground(I)Z
    .registers 3
    .param p1, "processState"  # I

    .line 548
    const/4 v0, 0x6

    if-gt p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private isUserLoadedLocked(I)Z
    .registers 3
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1211
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic lambda$cleanUpPackageLocked$4(Ljava/lang/String;ILcom/android/server/pm/ShortcutLauncher;)V
    .registers 3
    .param p0, "packageName"  # Ljava/lang/String;
    .param p1, "packageUserId"  # I
    .param p2, "l"  # Lcom/android/server/pm/ShortcutLauncher;

    .line 2546
    invoke-virtual {p2, p0, p1}, Lcom/android/server/pm/ShortcutLauncher;->cleanUpPackage(Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic lambda$cleanUpPackageLocked$5(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 1
    .param p0, "p"  # Lcom/android/server/pm/ShortcutPackage;

    .line 2550
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    return-void
.end method

.method static synthetic lambda$getBackupPayload$10(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 3
    .param p0, "pkg"  # Lcom/android/server/pm/ShortcutPackage;

    .line 3631
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutPackage;->rescanPackageIfNeeded(ZZ)Z

    return-void
.end method

.method static synthetic lambda$getBackupPayload$11(Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 1
    .param p0, "launcher"  # Lcom/android/server/pm/ShortcutLauncher;

    .line 3635
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->ensurePackageInfo()V

    return-void
.end method

.method static synthetic lambda$getBackupPayload$9(Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 1
    .param p0, "spi"  # Lcom/android/server/pm/ShortcutPackageItem;

    .line 3628
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->refreshPackageSignatureAndSave()V

    return-void
.end method

.method static synthetic lambda$getShareTargets$2(Ljava/util/List;Landroid/content/IntentFilter;Lcom/android/server/pm/ShortcutPackage;)V
    .registers 4
    .param p0, "shortcutInfoList"  # Ljava/util/List;
    .param p1, "filter"  # Landroid/content/IntentFilter;
    .param p2, "p"  # Lcom/android/server/pm/ShortcutPackage;

    .line 2183
    invoke-virtual {p2, p1}, Lcom/android/server/pm/ShortcutPackage;->getMatchingShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic lambda$handleLocaleChanged$6(Lcom/android/server/pm/ShortcutUser;)V
    .registers 1
    .param p0, "user"  # Lcom/android/server/pm/ShortcutUser;

    .line 2915
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->detectLocaleChange()V

    return-void
.end method

.method static synthetic lambda$verifyStatesInner$14(Lcom/android/server/pm/ShortcutUser;)V
    .registers 2
    .param p0, "u"  # Lcom/android/server/pm/ShortcutUser;

    .line 4479
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
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 923
    const-string v0, "ShortcutService"

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 925
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Landroid/util/AtomicFile;

    move-result-object v3

    .line 929
    .local v3, "file":Landroid/util/AtomicFile;
    :try_start_a
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_e} :catch_bb
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_e} :catch_9f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_e} :catch_9f

    .line 930
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 931
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 934
    :cond_1b
    :goto_1b
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_8b

    .line 935
    const/4 v6, 0x2

    if-eq v7, v6, :cond_27

    .line 936
    goto :goto_1b

    .line 938
    :cond_27
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 940
    .local v6, "depth":I
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 941
    .local v9, "tag":Ljava/lang/String;
    if-ne v6, v8, :cond_54

    .line 942
    const-string/jumbo v8, "root"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 943
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid root tag: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_e .. :try_end_4e} :catchall_91

    .line 958
    if-eqz v4, :cond_53

    :try_start_50
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_50 .. :try_end_53} :catch_bb
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_9f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_50 .. :try_end_53} :catch_9f

    .line 944
    :cond_53
    return-void

    .line 949
    :cond_54
    const/4 v8, -0x1

    :try_start_55
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x418aefa

    if-eq v10, v11, :cond_5f

    :cond_5e
    goto :goto_69

    :cond_5f
    const-string/jumbo v10, "last_reset_time"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5e

    const/4 v8, 0x0

    :goto_69
    if-eqz v8, :cond_80

    .line 954
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid tag: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 951
    :cond_80
    const-string/jumbo v8, "value"

    invoke-static {v5, v8}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J
    :try_end_89
    .catchall {:try_start_55 .. :try_end_89} :catchall_91

    .line 952
    nop

    .line 957
    .end local v6  # "depth":I
    .end local v9  # "tag":Ljava/lang/String;
    :goto_8a
    goto :goto_1b

    .line 958
    .end local v5  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7  # "type":I
    :cond_8b
    if-eqz v4, :cond_bc

    :try_start_8d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_90} :catch_bb
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_9f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8d .. :try_end_90} :catch_9f

    goto :goto_bc

    .line 929
    :catchall_91
    move-exception v5

    .end local v3  # "file":Landroid/util/AtomicFile;
    .end local v4  # "in":Ljava/io/FileInputStream;
    .end local p0  # "this":Lcom/android/server/pm/ShortcutService;
    :try_start_92
    throw v5
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_93

    .line 958
    .restart local v3  # "file":Landroid/util/AtomicFile;
    .restart local v4  # "in":Ljava/io/FileInputStream;
    .restart local p0  # "this":Lcom/android/server/pm/ShortcutService;
    :catchall_93
    move-exception v6

    if-eqz v4, :cond_9e

    :try_start_96
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    goto :goto_9e

    :catchall_9a
    move-exception v7

    :try_start_9b
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3  # "file":Landroid/util/AtomicFile;
    .end local p0  # "this":Lcom/android/server/pm/ShortcutService;
    :cond_9e
    :goto_9e
    throw v6
    :try_end_9f
    .catch Ljava/io/FileNotFoundException; {:try_start_9b .. :try_end_9f} :catch_bb
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9f} :catch_9f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9b .. :try_end_9f} :catch_9f

    .line 960
    .end local v4  # "in":Ljava/io/FileInputStream;
    .restart local v3  # "file":Landroid/util/AtomicFile;
    .restart local p0  # "this":Lcom/android/server/pm/ShortcutService;
    :catch_9f
    move-exception v4

    .line 961
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 963
    iput-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    goto :goto_bd

    .line 958
    .end local v4  # "e":Ljava/lang/Exception;
    :catch_bb
    move-exception v0

    .line 964
    :cond_bc
    :goto_bc
    nop

    .line 966
    :goto_bd
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    .line 967
    return-void
.end method

.method private loadConfigurationLocked()V
    .registers 2

    .line 694
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectShortcutManagerConstants()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->updateConfigurationLocked(Ljava/lang/String;)Z

    .line 695
    return-void
.end method

.method private loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;
    .registers 11
    .param p1, "userId"  # I
    .param p2, "is"  # Ljava/io/InputStream;
    .param p3, "fromBackup"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;
        }
    .end annotation

    .line 1062
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1064
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 1065
    .local v1, "ret":Lcom/android/server/pm/ShortcutUser;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1066
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1069
    :goto_13
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_3b

    .line 1070
    const/4 v3, 0x2

    if-eq v4, v3, :cond_1f

    .line 1071
    goto :goto_13

    .line 1073
    :cond_1f
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1075
    .local v3, "depth":I
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1080
    .local v6, "tag":Ljava/lang/String;
    if-ne v3, v5, :cond_37

    const-string/jumbo v5, "user"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1081
    invoke-static {p0, v2, p1, p3}, Lcom/android/server/pm/ShortcutUser;->loadFromXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlPullParser;IZ)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 1082
    goto :goto_13

    .line 1084
    :cond_37
    invoke-static {v3, v6}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    .line 1085
    .end local v3  # "depth":I
    .end local v6  # "tag":Ljava/lang/String;
    goto :goto_13

    .line 1086
    :cond_3b
    return-object v1
.end method

.method private loadUserLocked(I)Lcom/android/server/pm/ShortcutUser;
    .registers 10
    .param p1, "userId"  # I

    .line 1032
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserFile(I)Ljava/io/File;

    move-result-object v0

    .line 1036
    .local v0, "path":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1040
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    :try_start_a
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_e} :catch_3f

    .line 1046
    .local v3, "in":Ljava/io/FileInputStream;
    nop

    .line 1048
    const/4 v4, 0x0

    :try_start_10
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_14} :catch_1b
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_10 .. :try_end_14} :catch_1b
    .catchall {:try_start_10 .. :try_end_14} :catchall_19

    .line 1049
    .local v2, "ret":Lcom/android/server/pm/ShortcutUser;
    nop

    .line 1054
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1049
    return-object v2

    .line 1054
    .end local v2  # "ret":Lcom/android/server/pm/ShortcutUser;
    :catchall_19
    move-exception v2

    goto :goto_3b

    .line 1050
    :catch_1b
    move-exception v4

    .line 1051
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1c
    const-string v5, "ShortcutService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_19

    .line 1052
    nop

    .line 1054
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1052
    return-object v2

    .line 1054
    .end local v4  # "e":Ljava/lang/Exception;
    :goto_3b
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .line 1041
    .end local v3  # "in":Ljava/io/FileInputStream;
    :catch_3f
    move-exception v3

    .line 1045
    .local v3, "e":Ljava/io/FileNotFoundException;
    return-object v2
.end method

.method private notifyListeners(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1653
    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$DzwraUeMWDwA0XDfFxd3sGOsA0E;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/pm/-$$Lambda$ShortcutService$DzwraUeMWDwA0XDfFxd3sGOsA0E;-><init>(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    .line 1670
    return-void
.end method

.method static parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .registers 6
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"  # Ljava/lang/String;

    .line 768
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .registers 7
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"  # Ljava/lang/String;
    .param p2, "def"  # Z

    .line 772
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method static parseComponentNameAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 4
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"  # Ljava/lang/String;

    .line 802
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 804
    const/4 v1, 0x0

    return-object v1

    .line 806
    :cond_c
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private static parseDumpArgs([Ljava/lang/String;)Lcom/android/server/pm/ShortcutService$DumpFilter;
    .registers 7
    .param p0, "args"  # [Ljava/lang/String;

    .line 3744
    new-instance v0, Lcom/android/server/pm/ShortcutService$DumpFilter;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;-><init>()V

    .line 3745
    .local v0, "filter":Lcom/android/server/pm/ShortcutService$DumpFilter;
    if-nez p0, :cond_8

    .line 3746
    return-object v0

    .line 3749
    :cond_8
    const/4 v1, 0x0

    .line 3750
    .local v1, "argIndex":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_101

    .line 3751
    add-int/lit8 v2, v1, 0x1

    .end local v1  # "argIndex":I
    .local v2, "argIndex":I
    aget-object v1, p0, v1

    .line 3753
    .local v1, "arg":Ljava/lang/String;
    const-string v3, "-c"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1e

    .line 3754
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpCheckIn(Z)V

    .line 3755
    goto/16 :goto_fe

    .line 3757
    :cond_1e
    const-string v3, "--checkin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 3758
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpCheckIn(Z)V

    .line 3759
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setCheckInClear(Z)V

    .line 3760
    goto/16 :goto_fe

    .line 3762
    :cond_2e
    const-string v3, "-a"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f7

    const-string v3, "--all"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto/16 :goto_f7

    .line 3767
    :cond_40
    const-string v3, "-u"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f3

    const-string v3, "--uid"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    goto/16 :goto_f3

    .line 3771
    :cond_52
    const-string v3, "-f"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ef

    const-string v3, "--files"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    goto/16 :goto_ef

    .line 3775
    :cond_64
    const-string v3, "-n"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_eb

    const-string v3, "--no-main"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    goto/16 :goto_eb

    .line 3779
    :cond_77
    const-string v3, "--user"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 3780
    array-length v3, p0

    if-ge v2, v3, :cond_99

    .line 3784
    add-int/lit8 v3, v2, 0x1

    .end local v2  # "argIndex":I
    .local v3, "argIndex":I
    :try_start_84
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addUser(I)V
    :try_end_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_84 .. :try_end_8d} :catch_90

    .line 3787
    move v1, v3

    goto/16 :goto_9

    .line 3785
    :catch_90
    move-exception v2

    .line 3786
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid user ID"

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 3781
    .end local v3  # "argIndex":I
    .local v2, "argIndex":I
    :cond_99
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Missing user ID for --user"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3790
    :cond_a1
    const-string v3, "-p"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d3

    const-string v3, "--package"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    goto :goto_d3

    .line 3798
    :cond_b2
    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_bc

    move v1, v2

    goto :goto_101

    .line 3799
    :cond_bc
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown option "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3791
    :cond_d3
    :goto_d3
    array-length v3, p0

    if-ge v2, v3, :cond_e3

    .line 3794
    add-int/lit8 v3, v2, 0x1

    .end local v2  # "argIndex":I
    .restart local v3  # "argIndex":I
    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addPackageRegex(Ljava/lang/String;)V

    .line 3795
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpDetails(Z)V

    .line 3796
    move v1, v3

    goto/16 :goto_9

    .line 3792
    .end local v3  # "argIndex":I
    .restart local v2  # "argIndex":I
    :cond_e3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Missing package name for --package"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3776
    :cond_eb
    :goto_eb
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpMain(Z)V

    .line 3777
    goto :goto_fe

    .line 3772
    :cond_ef
    :goto_ef
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpFiles(Z)V

    .line 3773
    goto :goto_fe

    .line 3768
    :cond_f3
    :goto_f3
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpUid(Z)V

    .line 3769
    goto :goto_fe

    .line 3763
    :cond_f7
    :goto_f7
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpUid(Z)V

    .line 3764
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpFiles(Z)V

    .line 3765
    nop

    .line 3750
    .end local v1  # "arg":Ljava/lang/String;
    :goto_fe
    move v1, v2

    goto/16 :goto_9

    .line 3803
    .end local v2  # "argIndex":I
    .local v1, "argIndex":I
    :cond_101
    :goto_101
    array-length v2, p0

    if-ge v1, v2, :cond_10d

    .line 3804
    add-int/lit8 v2, v1, 0x1

    .end local v1  # "argIndex":I
    .restart local v2  # "argIndex":I
    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addPackage(Ljava/lang/String;)V

    move v1, v2

    goto :goto_101

    .line 3806
    .end local v2  # "argIndex":I
    .restart local v1  # "argIndex":I
    :cond_10d
    return-object v0
.end method

.method static parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 4
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"  # Ljava/lang/String;

    .line 776
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 5
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"  # Ljava/lang/String;
    .param p2, "def"  # I

    .line 780
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static parseIntentAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"  # Ljava/lang/String;

    .line 825
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseIntentAttributeNoDefault(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 826
    .local v0, "parsed":Landroid/content/Intent;
    if-nez v0, :cond_e

    .line 828
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 830
    :cond_e
    return-object v0
.end method

.method static parseIntentAttributeNoDefault(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"  # Ljava/lang/String;

    .line 811
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 813
    .local v1, "parsed":Landroid/content/Intent;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 815
    const/4 v2, 0x0

    :try_start_c
    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2
    :try_end_10
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_10} :catch_12

    move-object v1, v2

    .line 818
    goto :goto_1a

    .line 816
    :catch_12
    move-exception v2

    .line 817
    .local v2, "e":Ljava/net/URISyntaxException;
    const-string v3, "ShortcutService"

    const-string v4, "Error parsing intent"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 820
    .end local v2  # "e":Ljava/net/URISyntaxException;
    :cond_1a
    :goto_1a
    return-object v1
.end method

.method static parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .registers 4
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"  # Ljava/lang/String;

    .line 784
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 8
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"  # Ljava/lang/String;
    .param p2, "def"  # J

    .line 788
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 790
    return-wide p2

    .line 793
    :cond_b
    :try_start_b
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_f} :catch_10

    return-wide v1

    .line 794
    :catch_10
    move-exception v1

    .line 795
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShortcutService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return-wide p2
.end method

.method static parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"  # Ljava/lang/String;

    .line 764
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
    .registers 15
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "shortcut"  # Landroid/content/pm/ShortcutInfo;
    .param p4, "appWidget"  # Landroid/appwidget/AppWidgetProviderInfo;
    .param p5, "extras"  # Landroid/os/Bundle;
    .param p6, "resultIntent"  # Landroid/content/IntentSender;

    .line 1985
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 1986
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 1989
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1990
    :try_start_9
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 1992
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result v1

    const-string v2, "Calling application must have a foreground activity or a foreground service"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1999
    if-eqz p3, :cond_2f

    .line 2000
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2002
    .local v1, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 2003
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndInvisibleToPublisher(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 2005
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutPackage;->updateInvisibleShortcutForPinRequestWith(Landroid/content/pm/ShortcutInfo;)V

    .line 2007
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 2012
    .end local v1  # "ps":Lcom/android/server/pm/ShortcutPackage;
    .end local v2  # "id":Ljava/lang/String;
    :cond_2f
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p2

    move-object v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->requestPinItemLocked(Landroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;ILandroid/content/IntentSender;)Z

    move-result v1

    .line 2014
    .local v1, "ret":Z
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_9 .. :try_end_3b} :catchall_3f

    .line 2016
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2018
    return v1

    .line 2014
    .end local v1  # "ret":Z
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private rescanUpdatedPackagesLocked(IJ)V
    .registers 14
    .param p1, "userId"  # I
    .param p2, "lastScanTime"  # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3053
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    .line 3057
    .local v0, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    .line 3058
    .local v1, "now":J
    nop

    .line 3059
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->getLastAppScanOsFingerprint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v8, v3, 0x1

    .line 3062
    .local v8, "afterOta":Z
    new-instance v9, Lcom/android/server/pm/-$$Lambda$ShortcutService$y1mZhNAWeEp6GCbsOBAt4g-DS3s;

    invoke-direct {v9, p0, v0, p1}, Lcom/android/server/pm/-$$Lambda$ShortcutService$y1mZhNAWeEp6GCbsOBAt4g-DS3s;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;I)V

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/ShortcutService;->forUpdatedPackages(IJZLjava/util/function/Consumer;)V

    .line 3070
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutUser;->setLastAppScanTime(J)V

    .line 3071
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutUser;->setLastAppScanOsFingerprint(Ljava/lang/String;)V

    .line 3072
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 3073
    return-void
.end method

.method private saveUserInternalLocked(ILjava/io/OutputStream;Z)V
    .registers 8
    .param p1, "userId"  # I
    .param p2, "os"  # Ljava/io/OutputStream;
    .param p3, "forBackup"  # Z
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

    .line 1007
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1010
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1011
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1012
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1014
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2

    invoke-virtual {v2, v1, p3}, Lcom/android/server/pm/ShortcutUser;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 1016
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1018
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1019
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 1020
    return-void
.end method

.method private saveUserLocked(I)V
    .registers 8
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 976
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserFile(I)Ljava/io/File;

    move-result-object v0

    .line 981
    .local v0, "path":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    .line 983
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 984
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 985
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 987
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_16
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 989
    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V

    .line 991
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 994
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->cleanupDanglingBitmapDirectoriesLocked(I)V
    :try_end_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_25} :catch_26
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_25} :catch_26

    .line 998
    goto :goto_44

    .line 995
    :catch_26
    move-exception v3

    .line 996
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ShortcutService"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 997
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1000
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_44
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ShortcutUser;->logSharingShortcutStats(Lcom/android/internal/logging/MetricsLogger;)V

    .line 1001
    return-void
.end method

.method private scheduleSaveBaseState()V
    .registers 2

    .line 1090
    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    .line 1091
    return-void
.end method

.method private scheduleSaveInner(I)V
    .registers 6
    .param p1, "userId"  # I

    .line 1104
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1105
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1106
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2b

    .line 1110
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1111
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1112
    return-void

    .line 1108
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
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

    .line 1746
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 1747
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->setReturnedByServer()V

    .line 1746
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1749
    .end local v0  # "i":I
    :cond_14
    return-object p1
.end method

.method static shouldBackupApp(Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .param p0, "pi"  # Landroid/content/pm/PackageInfo;

    .line 3606
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static shrinkBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "in"  # Landroid/graphics/Bitmap;
    .param p1, "maxSize"  # I

    .line 1473
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1474
    .local v0, "ow":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1475
    .local v1, "oh":I
    if-gt v0, p1, :cond_d

    if-gt v1, p1, :cond_d

    .line 1479
    return-object p0

    .line 1481
    :cond_d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1484
    .local v2, "longerDimension":I
    mul-int v3, v0, p1

    div-int/2addr v3, v2

    .line 1485
    .local v3, "nw":I
    mul-int v4, v1, p1

    div-int/2addr v4, v2

    .line 1491
    .local v4, "nh":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1492
    .local v5, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1494
    .local v6, "c":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v3

    int-to-float v9, v4

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1496
    .local v7, "dst":Landroid/graphics/RectF;
    const/4 v8, 0x0

    invoke-virtual {v6, p0, v8, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1498
    return-object v5
.end method

.method static throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;
    .registers 6
    .param p0, "depth"  # I
    .param p1, "tag"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1023
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Invalid tag \'%s\' found at depth %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unloadUserLocked(I)V
    .registers 3
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 667
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    .line 670
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 671
    return-void
.end method

.method private updateTimesLocked()V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1160
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    .line 1162
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 1164
    .local v2, "prevLastResetTime":J
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_11

    .line 1166
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    goto :goto_34

    .line 1167
    :cond_11
    cmp-long v6, v0, v4

    if-gez v6, :cond_25

    .line 1169
    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->isClockValid(J)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1170
    const-string v4, "ShortcutService"

    const-string v5, "Clock rewound"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    goto :goto_34

    .line 1175
    :cond_25
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    add-long v8, v4, v6

    cmp-long v8, v8, v0

    if-gtz v8, :cond_34

    .line 1176
    rem-long/2addr v4, v6

    .line 1177
    .local v4, "offset":J
    div-long v8, v0, v6

    mul-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 1180
    .end local v4  # "offset":J
    :cond_34
    :goto_34
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3d

    .line 1181
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    .line 1183
    :cond_3d
    return-void
.end method

.method private verifyCaller(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1576
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 1578
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1579
    return-void

    .line 1582
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    .line 1585
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p2, :cond_31

    .line 1588
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_29

    .line 1591
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isEphemeralApp(Ljava/lang/String;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Ephemeral apps can\'t use ShortcutManager"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1593
    return-void

    .line 1589
    :cond_29
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Calling package name mismatch"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1586
    :cond_31
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Invalid user-ID"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V
    .registers 7
    .param p1, "callerPackage"  # Ljava/lang/String;
    .param p2, "si"  # Landroid/content/pm/ShortcutInfo;

    .line 1596
    if-nez p2, :cond_3

    .line 1597
    return-void

    .line 1599
    :cond_3
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1603
    return-void

    .line 1600
    :cond_e
    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "109824443"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1601
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Shortcut package name mismatch"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "callerPackage"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 1607
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 1608
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 1609
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 1608
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1611
    .end local v1  # "i":I
    :cond_13
    return-void
.end method

.method private final verifyStatesForce()V
    .registers 1

    .line 4474
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesInner()V

    .line 4475
    return-void
.end method

.method private verifyStatesInner()V
    .registers 3

    .line 4478
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4479
    :try_start_3
    sget-object v1, Lcom/android/server/pm/-$$Lambda$ShortcutService$fqEqB5P0QHkQKJgSWuI8hNg-9pk;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$fqEqB5P0QHkQKJgSWuI8hNg-9pk;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    .line 4480
    monitor-exit v0

    .line 4481
    return-void

    .line 4480
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method static warnForInvalidTag(ILjava/lang/String;)V
    .registers 5
    .param p0, "depth"  # I
    .param p1, "tag"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1027
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Invalid tag \'%s\' found at depth %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    .registers 5
    .param p0, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 867
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 4
    .param p0, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "comp"  # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 878
    if-nez p2, :cond_3

    return-void

    .line 879
    :cond_3
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 880
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4
    .param p0, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "intent"  # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 883
    if-nez p2, :cond_3

    return-void

    .line 885
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 886
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 5
    .param p0, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 860
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 862
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 863
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "value"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 870
    if-eqz p2, :cond_8

    .line 871
    const-string v0, "1"

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 873
    :cond_8
    const-string v0, "0"

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 875
    :goto_d
    return-void
.end method

.method static writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p0, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "bundle"  # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 852
    if-nez p2, :cond_3

    return-void

    .line 854
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 855
    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 856
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 857
    return-void
.end method

.method static writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    .registers 5
    .param p0, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "value"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 842
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    return-void
.end method

.method static writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 4
    .param p0, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "name"  # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 846
    if-nez p2, :cond_3

    return-void

    .line 847
    :cond_3
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    return-void
.end method

.method static writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 836
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 837
    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 838
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 839
    return-void
.end method


# virtual methods
.method public addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 13
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "shortcutInfoList"  # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"  # I

    .line 1898
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 1900
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1901
    .local v0, "newShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    .line 1902
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1904
    .local v1, "size":I
    nop

    .line 1905
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v3

    .line 1904
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v2

    .line 1907
    .local v2, "unlimited":Z
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1908
    :try_start_1e
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 1910
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v4

    .line 1912
    .local v4, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V

    .line 1914
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    .line 1916
    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    .line 1919
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    .line 1920
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    .line 1923
    invoke-virtual {v4, v2}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_3e

    .line 1924
    monitor-exit v3

    return v7

    .line 1926
    :cond_3e
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3f
    if-ge v6, v1, :cond_53

    .line 1927
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    .line 1930
    .local v8, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-direct {p0, v8, v7}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    .line 1934
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    .line 1937
    invoke-virtual {v4, v8}, Lcom/android/server/pm/ShortcutPackage;->addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    .line 1926
    .end local v8  # "newShortcut":Landroid/content/pm/ShortcutInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    .line 1941
    .end local v6  # "i":I
    :cond_53
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 1942
    .end local v4  # "ps":Lcom/android/server/pm/ShortcutPackage;
    monitor-exit v3
    :try_end_57
    .catchall {:try_start_1e .. :try_end_57} :catchall_5e

    .line 1943
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 1945
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 1947
    return v5

    .line 1942
    :catchall_5e
    move-exception v4

    :try_start_5f
    monitor-exit v3
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v4
.end method

.method public applyRestore([BI)V
    .registers 9
    .param p1, "payload"  # [B
    .param p2, "userId"  # I

    .line 3661
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    .line 3665
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3666
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 3667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t restore: user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is locked or not running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 3668
    monitor-exit v0

    return-void

    .line 3673
    :cond_27
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v2, "restore-0-start.txt"

    new-instance v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$vKI79Gf4pKq8ASWghBXV-NKhZwk;

    invoke-direct {v3, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$vKI79Gf4pKq8ASWghBXV-NKhZwk;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 3678
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v2, "restore-1-payload.xml"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;[B)Z

    .line 3682
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_96

    .line 3684
    .local v1, "is":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x1

    :try_start_42
    invoke-direct {p0, p2, v1, v2}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2
    :try_end_46
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_46} :catch_8c
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_8c
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_42 .. :try_end_46} :catch_8c
    .catchall {:try_start_42 .. :try_end_46} :catchall_96

    .line 3688
    .local v2, "restored":Lcom/android/server/pm/ShortcutUser;
    nop

    .line 3689
    :try_start_47
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v4, "restore-2.txt"

    new-instance v5, Lcom/android/server/pm/-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY;

    invoke-direct {v5, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 3691
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ShortcutUser;->mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V

    .line 3693
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v4, "restore-3.txt"

    new-instance v5, Lcom/android/server/pm/-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY;

    invoke-direct {v5, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 3696
    const-wide/16 v3, 0x0

    invoke-direct {p0, p2, v3, v4}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJ)V

    .line 3700
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v4, "restore-4.txt"

    new-instance v5, Lcom/android/server/pm/-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY;

    invoke-direct {v5, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 3702
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v4, "restore-5-finish.txt"

    new-instance v5, Lcom/android/server/pm/-$$Lambda$ShortcutService$KOp4rgvJPqXwR4WftrrGcjb2qMQ;

    invoke-direct {v5, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$KOp4rgvJPqXwR4WftrrGcjb2qMQ;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 3708
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V

    .line 3709
    .end local v1  # "is":Ljava/io/ByteArrayInputStream;
    .end local v2  # "restored":Lcom/android/server/pm/ShortcutUser;
    monitor-exit v0

    .line 3710
    return-void

    .line 3685
    .restart local v1  # "is":Ljava/io/ByteArrayInputStream;
    :catch_8c
    move-exception v2

    .line 3686
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ShortcutService"

    const-string v4, "Restoration failed."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3687
    monitor-exit v0

    return-void

    .line 3709
    .end local v1  # "is":Ljava/io/ByteArrayInputStream;
    .end local v2  # "e":Ljava/lang/Exception;
    :catchall_96
    move-exception v1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_47 .. :try_end_98} :catchall_96

    throw v1
.end method

.method canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z
    .registers 7
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "callingPid"  # I
    .param p4, "callingUid"  # I

    .line 2367
    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/ShortcutService;->injectHasAccessShortcutsPermission(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2368
    const/4 v0, 0x1

    return v0

    .line 2370
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2371
    :try_start_b
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getNonPersistentUserLocked(I)Lcom/android/server/pm/ShortcutNonPersistentUser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutNonPersistentUser;->hasHostPackage(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2372
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v1
.end method

.method checkPackageChanges(I)V
    .registers 13
    .param p1, "ownerUserId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3010
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3011
    const-string v0, "ShortcutService"

    const-string v1, "Safe mode, skipping checkPackageChanges()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    return-void

    .line 3015
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3017
    .local v0, "start":J
    const/16 v2, 0x8

    :try_start_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3019
    .local v3, "gonePackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShortcutUser$PackageWithUser;>;"
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_5a

    .line 3020
    :try_start_1c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v5

    .line 3023
    .local v5, "user":Lcom/android/server/pm/ShortcutUser;
    new-instance v6, Lcom/android/server/pm/-$$Lambda$ShortcutService$io6aQoSP1ibWQCoayRXJaxbmJvA;

    invoke-direct {v6, p0, v3}, Lcom/android/server/pm/-$$Lambda$ShortcutService$io6aQoSP1ibWQCoayRXJaxbmJvA;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 3035
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_47

    .line 3036
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_34
    if-ltz v6, :cond_47

    .line 3037
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    .line 3038
    .local v7, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    iget-object v8, v7, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    iget v9, v7, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    const/4 v10, 0x0

    invoke-virtual {p0, v8, p1, v9, v10}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageLocked(Ljava/lang/String;IIZ)V

    .line 3036
    .end local v7  # "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    add-int/lit8 v6, v6, -0x1

    goto :goto_34

    .line 3043
    .end local v6  # "i":I
    :cond_47
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutUser;->getLastAppScanTime()J

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJ)V

    .line 3044
    .end local v5  # "user":Lcom/android/server/pm/ShortcutUser;
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_1c .. :try_end_4f} :catchall_57

    .line 3046
    .end local v3  # "gonePackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShortcutUser$PackageWithUser;>;"
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3047
    nop

    .line 3048
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3049
    return-void

    .line 3044
    .restart local v3  # "gonePackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShortcutUser$PackageWithUser;>;"
    :catchall_57
    move-exception v5

    :try_start_58
    monitor-exit v4
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    .end local v0  # "start":J
    .end local p0  # "this":Lcom/android/server/pm/ShortcutService;
    .end local p1  # "ownerUserId":I
    :try_start_59
    throw v5
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    .line 3046
    .end local v3  # "gonePackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShortcutUser$PackageWithUser;>;"
    .restart local v0  # "start":J
    .restart local p0  # "this":Lcom/android/server/pm/ShortcutService;
    .restart local p1  # "ownerUserId":I
    :catchall_5a
    move-exception v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v3
.end method

.method cleanUpPackageLocked(Ljava/lang/String;IIZ)V
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "owningUserId"  # I
    .param p3, "packageUserId"  # I
    .param p4, "appStillExists"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2530
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserLoadedLocked(I)Z

    move-result v0

    .line 2532
    .local v0, "wasUserLoaded":Z
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 2533
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    const/4 v2, 0x0

    .line 2536
    .local v2, "doNotify":Z
    if-ne p3, p2, :cond_12

    .line 2537
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutUser;->removePackage(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 2538
    const/4 v2, 0x1

    .line 2543
    :cond_12
    invoke-virtual {v1, p3, p1}, Lcom/android/server/pm/ShortcutUser;->removeLauncher(ILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    .line 2546
    new-instance v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$TVqBA9DN_h90eIcwrnmy7Mkl6jo;

    invoke-direct {v3, p1, p3}, Lcom/android/server/pm/-$$Lambda$ShortcutService$TVqBA9DN_h90eIcwrnmy7Mkl6jo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 2550
    sget-object v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$fCl_JbVpr187Fh4_6N-IxgnU68c;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$fCl_JbVpr187Fh4_6N-IxgnU68c;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 2552
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 2554
    if-eqz v2, :cond_2a

    .line 2555
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->notifyListeners(Ljava/lang/String;I)V

    .line 2559
    :cond_2a
    if-eqz p4, :cond_32

    if-ne p3, p2, :cond_32

    .line 2562
    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 2565
    :cond_32
    if-nez v0, :cond_37

    .line 2567
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->unloadUserLocked(I)V

    .line 2569
    :cond_37
    return-void
.end method

.method public cleanupBitmapsForPackage(ILjava/lang/String;)V
    .registers 6
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 1292
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1293
    .local v0, "packagePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1294
    return-void

    .line 1296
    :cond_10
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_32

    .line 1297
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to remove directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShortcutService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_32
    return-void
.end method

.method public createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "shortcut"  # Landroid/content/pm/ShortcutInfo;
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1961
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1962
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string v1, "Shortcut must be enabled"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1963
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 1964
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 1967
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1968
    :try_start_15
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 1971
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;

    move-result-object v1

    .line 1972
    .local v1, "ret":Landroid/content/Intent;
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    .line 1974
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 1975
    return-object v1

    .line 1972
    .end local v1  # "ret":Landroid/content/Intent;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V
    .registers 21
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "shortcutIds"  # Ljava/util/List;
    .param p3, "disabledMessage"  # Ljava/lang/CharSequence;
    .param p4, "disabledMessageResId"  # I
    .param p5, "userId"  # I

    .line 2024
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p5

    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2025
    const-string/jumbo v0, "shortcutIds must be provided"

    invoke-static {v3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2027
    iget-object v5, v1, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2028
    :try_start_13
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2030
    invoke-virtual {p0, v2, v4}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 2032
    .local v0, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V

    .line 2036
    if-nez p3, :cond_22

    const/4 v7, 0x0

    goto :goto_26

    :cond_22
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_26
    move-object v8, v7

    .line 2038
    .local v8, "disabledMessageString":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    move v13, v7

    .local v13, "i":I
    :goto_2d
    if-ltz v13, :cond_50

    .line 2039
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v14, v6

    .line 2040
    .local v14, "id":Ljava/lang/String;
    invoke-virtual {v0, v14}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 2041
    goto :goto_4d

    .line 2043
    :cond_43
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v6, v0

    move-object v7, v14

    move/from16 v9, p4

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/pm/ShortcutPackage;->disableWithId(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 2038
    .end local v14  # "id":Ljava/lang/String;
    :goto_4d
    add-int/lit8 v13, v13, -0x1

    goto :goto_2d

    .line 2050
    .end local v13  # "i":I
    :cond_50
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2051
    .end local v0  # "ps":Lcom/android/server/pm/ShortcutPackage;
    .end local v8  # "disabledMessageString":Ljava/lang/String;
    monitor-exit v5
    :try_end_54
    .catchall {:try_start_13 .. :try_end_54} :catchall_5b

    .line 2052
    invoke-virtual {p0, v2, v4}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 2054
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2055
    return-void

    .line 2051
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 3716
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-string v1, "ShortcutService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3717
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->dumpNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3718
    return-void
.end method

.method dumpNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3722
    invoke-static {p3}, Lcom/android/server/pm/ShortcutService;->parseDumpArgs([Ljava/lang/String;)Lcom/android/server/pm/ShortcutService$DumpFilter;

    move-result-object v0

    .line 3724
    .local v0, "filter":Lcom/android/server/pm/ShortcutService$DumpFilter;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpCheckIn()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3726
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldCheckInClear()Z

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/android/server/pm/ShortcutService;->dumpCheckin(Ljava/io/PrintWriter;Z)V

    goto :goto_36

    .line 3728
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpMain()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3729
    invoke-direct {p0, p2, v0}, Lcom/android/server/pm/ShortcutService;->dumpInner(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 3730
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3732
    :cond_1e
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpUid()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3733
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->dumpUid(Ljava/io/PrintWriter;)V

    .line 3734
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3736
    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpFiles()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 3737
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->dumpDumpFiles(Ljava/io/PrintWriter;)V

    .line 3738
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3741
    :cond_36
    :goto_36
    return-void
.end method

.method public enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "shortcutIds"  # Ljava/util/List;
    .param p3, "userId"  # I

    .line 2059
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2060
    const-string/jumbo v0, "shortcutIds must be provided"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2062
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2063
    :try_start_c
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2065
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2067
    .local v1, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V

    .line 2070
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_1c
    if-ltz v3, :cond_37

    .line 2071
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2072
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 2073
    goto :goto_34

    .line 2075
    :cond_31
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutPackage;->enableWithId(Ljava/lang/String;)V

    .line 2070
    .end local v2  # "id":Ljava/lang/String;
    :goto_34
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 2077
    .end local v1  # "ps":Lcom/android/server/pm/ShortcutPackage;
    .end local v3  # "i":I
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_3f

    .line 2078
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 2080
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2081
    return-void

    .line 2077
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method enforceMaxActivityShortcuts(I)V
    .registers 4
    .param p1, "numShortcuts"  # I

    .line 1627
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    if-gt p1, v0, :cond_5

    .line 1630
    return-void

    .line 1628
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max number of dynamic shortcuts exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V
    .registers 7
    .param p1, "si"  # Landroid/content/pm/ShortcutInfo;

    .line 1506
    nop

    .line 1507
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v1

    .line 1506
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    .line 1508
    .local v0, "publisherRes":Landroid/content/res/Resources;
    if-eqz v0, :cond_25

    .line 1509
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v1

    .line 1511
    .local v1, "start":J
    const/16 v3, 0xa

    :try_start_15
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceNames(Landroid/content/res/Resources;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_20

    .line 1513
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 1514
    nop

    .line 1515
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    goto :goto_25

    .line 1513
    :catchall_20
    move-exception v4

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v4

    .line 1517
    .end local v1  # "start":J
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

    .line 1250
    .local p1, "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/ShortcutUser;>;"
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1251
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutUser;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1250
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1253
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method final getActivityInfoWithMetadata(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 4
    .param p1, "activity"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I

    .line 3266
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method final getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3236
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getBackupPayload(I)[B
    .registers 9
    .param p1, "userId"  # I

    .line 3611
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    .line 3615
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3616
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_28

    .line 3617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t backup: user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is locked or not running"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 3618
    monitor-exit v0

    return-object v2

    .line 3621
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3622
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    if-nez v1, :cond_44

    .line 3623
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t backup: user not found: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 3624
    monitor-exit v0

    return-object v2

    .line 3628
    :cond_44
    sget-object v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$l8T8kXBB-Gktym0FoX_WiKj2Glc;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$l8T8kXBB-Gktym0FoX_WiKj2Glc;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 3631
    sget-object v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$TUT0CJsDhxqkpcseduaAriOs6bg;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$TUT0CJsDhxqkpcseduaAriOs6bg;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 3635
    sget-object v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$exGcjcSQADxpLL30XenIn9sDxlI;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$exGcjcSQADxpLL30XenIn9sDxlI;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 3638
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 3639
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    .line 3645
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const v4, 0x8000

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_61
    .catchall {:try_start_6 .. :try_end_61} :catchall_7d

    .line 3647
    .local v3, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x1

    :try_start_62
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V
    :try_end_65
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_62 .. :try_end_65} :catch_73
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_73
    .catchall {:try_start_62 .. :try_end_65} :catchall_7d

    .line 3652
    nop

    .line 3653
    :try_start_66
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 3654
    .local v2, "payload":[B
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string v5, "backup-1-payload.txt"

    invoke-virtual {v4, v5, v2}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;[B)Z

    .line 3655
    monitor-exit v0

    return-object v2

    .line 3648
    .end local v2  # "payload":[B
    :catch_73
    move-exception v4

    .line 3650
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "ShortcutService"

    const-string v6, "Backup failed."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3651
    monitor-exit v0

    return-object v2

    .line 3656
    .end local v1  # "user":Lcom/android/server/pm/ShortcutUser;
    .end local v3  # "os":Ljava/io/ByteArrayOutputStream;
    .end local v4  # "e":Ljava/lang/Exception;
    :catchall_7d
    move-exception v1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_66 .. :try_end_7f} :catchall_7d

    throw v1
.end method

.method getDefaultLauncher(I)Landroid/content/ComponentName;
    .registers 20
    .param p1, "userId"  # I

    .line 2429
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v3

    .line 2430
    .local v3, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v5

    .line 2432
    .local v5, "token":J
    :try_start_c
    iget-object v8, v1, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_a5

    .line 2433
    :try_start_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2435
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    .line 2437
    .local v0, "user":Lcom/android/server/pm/ShortcutUser;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2440
    .local v9, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v10

    .line 2441
    .local v10, "startGetHomeActivitiesAsUser":J
    iget-object v12, v1, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2442
    invoke-virtual {v12, v9, v2}, Landroid/content/pm/PackageManagerInternal;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object v12

    .line 2443
    .local v12, "defaultLauncher":Landroid/content/ComponentName;
    const/4 v13, 0x0

    invoke-virtual {v1, v13, v10, v11}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 2445
    const/4 v13, 0x0

    .line 2446
    .local v13, "detected":Landroid/content/ComponentName;
    if-eqz v12, :cond_2e

    .line 2447
    move-object v13, v12

    goto :goto_5b

    .line 2452
    :cond_2e
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->getLastKnownLauncher()Landroid/content/ComponentName;

    move-result-object v14

    move-object v13, v14

    .line 2454
    if-eqz v13, :cond_5b

    .line 2455
    invoke-virtual {v1, v13, v2}, Lcom/android/server/pm/ShortcutService;->injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z

    move-result v14

    if-eqz v14, :cond_3c

    goto :goto_5b

    .line 2460
    :cond_3c
    const-string v14, "ShortcutService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cached launcher "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " no longer exists"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    const/4 v13, 0x0

    .line 2462
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->clearLauncher()V

    .line 2467
    :cond_5b
    :goto_5b
    if-nez v13, :cond_96

    .line 2474
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 2476
    .local v7, "size":I
    const/high16 v14, -0x80000000

    .line 2477
    .local v14, "lastPriority":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_64
    if-ge v15, v7, :cond_93

    .line 2478
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    move-object/from16 v17, v16

    .line 2479
    .local v17, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17  # "ri":Landroid/content/pm/ResolveInfo;
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    .local v16, "user":Lcom/android/server/pm/ShortcutUser;
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_7d

    .line 2480
    goto :goto_8c

    .line 2486
    :cond_7d
    iget v2, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v2, v14, :cond_82

    .line 2487
    goto :goto_8c

    .line 2489
    :cond_82
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 2490
    .end local v13  # "detected":Landroid/content/ComponentName;
    .local v2, "detected":Landroid/content/ComponentName;
    iget v13, v0, Landroid/content/pm/ResolveInfo;->priority:I

    move v14, v13

    move-object v13, v2

    .line 2477
    .end local v0  # "ri":Landroid/content/pm/ResolveInfo;
    .end local v2  # "detected":Landroid/content/ComponentName;
    .restart local v13  # "detected":Landroid/content/ComponentName;
    :goto_8c
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p1

    move-object/from16 v0, v16

    goto :goto_64

    .end local v16  # "user":Lcom/android/server/pm/ShortcutUser;
    .local v0, "user":Lcom/android/server/pm/ShortcutUser;
    :cond_93
    move-object/from16 v16, v0

    .end local v0  # "user":Lcom/android/server/pm/ShortcutUser;
    .restart local v16  # "user":Lcom/android/server/pm/ShortcutUser;
    goto :goto_98

    .line 2467
    .end local v7  # "size":I
    .end local v14  # "lastPriority":I
    .end local v15  # "i":I
    .end local v16  # "user":Lcom/android/server/pm/ShortcutUser;
    .restart local v0  # "user":Lcom/android/server/pm/ShortcutUser;
    :cond_96
    move-object/from16 v16, v0

    .line 2493
    .end local v0  # "user":Lcom/android/server/pm/ShortcutUser;
    .restart local v16  # "user":Lcom/android/server/pm/ShortcutUser;
    :goto_98
    monitor-exit v8
    :try_end_99
    .catchall {:try_start_f .. :try_end_99} :catchall_a2

    .line 2496
    invoke-virtual {v1, v5, v6}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2497
    const/16 v2, 0x10

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 2493
    return-object v13

    .line 2494
    .end local v9  # "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10  # "startGetHomeActivitiesAsUser":J
    .end local v12  # "defaultLauncher":Landroid/content/ComponentName;
    .end local v13  # "detected":Landroid/content/ComponentName;
    .end local v16  # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_a2
    move-exception v0

    :try_start_a3
    monitor-exit v8
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    .end local v3  # "start":J
    .end local v5  # "token":J
    .end local p0  # "this":Lcom/android/server/pm/ShortcutService;
    .end local p1  # "userId":I
    :try_start_a4
    throw v0
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a5

    .line 2496
    .restart local v3  # "start":J
    .restart local v5  # "token":J
    .restart local p0  # "this":Lcom/android/server/pm/ShortcutService;
    .restart local p1  # "userId":I
    :catchall_a5
    move-exception v0

    invoke-virtual {v1, v5, v6}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2497
    const/16 v2, 0x10

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v0
.end method

.method getDummyMainActivity(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;

    .line 3509
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android.__dummy__"

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDumpPath()Ljava/io/File;
    .registers 4

    .line 4363
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
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
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

    .line 2131
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2133
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2134
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2136
    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/pm/-$$Lambda$vv6Ko6L2p38nn3EYcL5PZxcyRyk;->INSTANCE:Lcom/android/server/pm/-$$Lambda$vv6Ko6L2p38nn3EYcL5PZxcyRyk;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/pm/ShortcutService;->getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2139
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getIconMaxDimensions(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 2251
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2253
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2254
    :try_start_6
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    monitor-exit v0

    return v1

    .line 2255
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method getIconPersistFormatForTest()Landroid/graphics/Bitmap$CompressFormat;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4411
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method getIconPersistQualityForTest()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4416
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    return v0
.end method

.method final getInstalledPackages(I)Ljava/util/List;
    .registers 10
    .param p1, "userId"  # I
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

    .line 3299
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3300
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 3302
    .local v2, "token":J
    const/4 v4, 0x7

    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectGetPackagesWithUninstalled(I)Ljava/util/List;

    move-result-object v5

    .line 3304
    .local v5, "all":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    sget-object v6, Lcom/android/server/pm/ShortcutService;->PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate;

    invoke-interface {v5, v6}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_1c
    .catchall {:try_start_9 .. :try_end_12} :catchall_1a

    .line 3306
    nop

    .line 3312
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3314
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3306
    return-object v5

    .line 3312
    .end local v5  # "all":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_1a
    move-exception v5

    goto :goto_2c

    .line 3307
    :catch_1c
    move-exception v5

    .line 3309
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v6, "ShortcutService"

    const-string v7, "RemoteException"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_1a

    .line 3310
    const/4 v6, 0x0

    .line 3312
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3314
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3310
    return-object v6

    .line 3312
    .end local v5  # "e":Landroid/os/RemoteException;
    :goto_2c
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3314
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v5
.end method

.method getLastResetTimeLocked()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1139
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    .line 1140
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    return-wide v0
.end method

.method getLauncherShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4441
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4442
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutUser;

    .line 4443
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    if-nez v1, :cond_10

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 4445
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->getAllLaunchersForTest()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutLauncher;

    monitor-exit v0

    return-object v2

    .line 4446
    .end local v1  # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "ownerUserId"  # I
    .param p3, "launcherUserId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1281
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    .line 1282
    invoke-virtual {v0, p1, p3}, Lcom/android/server/pm/ShortcutUser;->getLauncherShortcuts(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    .line 1281
    return-object v0
.end method

.method public getManifestShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
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

    .line 2145
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2147
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2148
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2150
    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/pm/-$$Lambda$FW40Da1L1EZJ_usDX0ew1qRMmtc;->INSTANCE:Lcom/android/server/pm/-$$Lambda$FW40Da1L1EZJ_usDX0ew1qRMmtc;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/pm/ShortcutService;->getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2153
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1
.end method

.method getMaxActivityShortcuts()I
    .registers 2

    .line 1636
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return v0
.end method

.method getMaxIconDimensionForTest()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4406
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    return v0
.end method

.method public getMaxShortcutCountPerActivity(Ljava/lang/String;I)I
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2218
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2220
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return v0
.end method

.method getMaxShortcutsForTest()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4391
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return v0
.end method

.method getMaxUpdatesPerIntervalForTest()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4396
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

    .line 1146
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    .line 1147
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    iget-wide v2, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method getNonPersistentUserLocked(I)Lcom/android/server/pm/ShortcutNonPersistentUser;
    .registers 4
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1240
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutNonPersistentUser;

    .line 1241
    .local v0, "ret":Lcom/android/server/pm/ShortcutNonPersistentUser;
    if-nez v0, :cond_15

    .line 1242
    new-instance v1, Lcom/android/server/pm/ShortcutNonPersistentUser;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/ShortcutNonPersistentUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    move-object v0, v1

    .line 1243
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1245
    :cond_15
    return-object v0
.end method

.method final getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 3176
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method final getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "getSignatures"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3199
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->injectPackageInfoWithUninstalled(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method final getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 3168
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method getPackageShortcutForTest(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "shortcutId"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4431
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4432
    :try_start_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 4433
    .local v1, "pkg":Lcom/android/server/pm/ShortcutPackage;
    if-nez v1, :cond_c

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 4435
    :cond_c
    invoke-virtual {v1, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 4436
    .end local v1  # "pkg":Lcom/android/server/pm/ShortcutPackage;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4421
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4422
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutUser;

    .line 4423
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    if-nez v1, :cond_10

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 4425
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->getAllPackagesForTest()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutPackage;

    monitor-exit v0

    return-object v2

    .line 4426
    .end local v1  # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1271
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 1272
    .local v0, "ret":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->getUser()Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutUser;->onCalledByPublisher(Ljava/lang/String;)V

    .line 1273
    return-object v0
.end method

.method getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1263
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    return-object v0
.end method

.method getParentOrSelfUserId(I)I
    .registers 3
    .param p1, "userId"  # I

    .line 3584
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    return v0
.end method

.method public getPinnedShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
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

    .line 2159
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2161
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2162
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2164
    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/pm/-$$Lambda$K2g8Oho05j5S7zVOkoQrHzM_Gig;->INSTANCE:Lcom/android/server/pm/-$$Lambda$K2g8Oho05j5S7zVOkoQrHzM_Gig;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/pm/ShortcutService;->getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2167
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getRateLimitResetTime(Ljava/lang/String;I)J
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 2240
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2242
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2243
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2245
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getNextResetTimeLocked()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 2246
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getRemainingCallCount(Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 2225
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2227
    nop

    .line 2228
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    .line 2227
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v0

    .line 2230
    .local v0, "unlimited":Z
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2231
    :try_start_13
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2233
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v2

    .line 2234
    .local v2, "ps":Lcom/android/server/pm/ShortcutPackage;
    iget v3, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    invoke-virtual {v2, v0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    move-result v4

    sub-int/2addr v3, v4

    monitor-exit v1

    return v3

    .line 2235
    .end local v2  # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_23

    throw v2
.end method

.method getResetIntervalForTest()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4401
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    return-wide v0
.end method

.method public getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "filter"  # Landroid/content/IntentFilter;
    .param p3, "userId"  # I
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

    .line 2173
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2174
    const-string v0, "android.permission.MANAGE_APP_PREDICTIONS"

    const-string v1, "getShareTargets"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2178
    :try_start_d
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2182
    .local v1, "shortcutInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2

    .line 2183
    .local v2, "user":Lcom/android/server/pm/ShortcutUser;
    new-instance v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$H1HFyb1U9E1-y03suEsi37_w-t0;

    invoke-direct {v3, v1, p2}, Lcom/android/server/pm/-$$Lambda$ShortcutService$H1HFyb1U9E1-y03suEsi37_w-t0;-><init>(Ljava/util/List;Landroid/content/IntentFilter;)V

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 2185
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object v3

    .line 2186
    .end local v1  # "shortcutInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .end local v2  # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_28

    throw v1
.end method

.method getShortcutRequestPinProcessorForTest()Lcom/android/server/pm/ShortcutRequestPinProcessor;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4451
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

    .line 4386
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    return-object v0
.end method

.method getStatStartTime()J
    .registers 3

    .line 495
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method getUidLastForegroundElapsedTimeLocked(I)J
    .registers 4
    .param p1, "uid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getUserBitmapFilePath(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"  # I

    .line 4381
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "bitmaps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final getUserFile(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 971
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "shortcuts.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;
    .registers 4
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1218
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1219
    const-string v0, "User still locked"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1222
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutUser;

    .line 1223
    .local v0, "userPackages":Lcom/android/server/pm/ShortcutUser;
    if-nez v0, :cond_29

    .line 1224
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->loadUserLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    .line 1225
    if-nez v0, :cond_21

    .line 1226
    new-instance v1, Lcom/android/server/pm/ShortcutUser;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/ShortcutUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    move-object v0, v1

    .line 1228
    :cond_21
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1231
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->checkPackageChanges(I)V

    .line 1233
    :cond_29
    return-object v0
.end method

.method handleLocaleChanged()V
    .registers 5

    .line 2910
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    .line 2912
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2913
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_1a

    .line 2915
    .local v1, "token":J
    :try_start_a
    sget-object v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$oes_dY8CJz5MllJiOggarpV9YkA;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$oes_dY8CJz5MllJiOggarpV9YkA;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_15

    .line 2917
    :try_start_f
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2918
    nop

    .line 2919
    .end local v1  # "token":J
    monitor-exit v0

    .line 2920
    return-void

    .line 2917
    .restart local v1  # "token":J
    :catchall_15
    move-exception v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/pm/ShortcutService;
    throw v3

    .line 2919
    .end local v1  # "token":J
    .restart local p0  # "this":Lcom/android/server/pm/ShortcutService;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method handleOnUidStateChanged(II)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "procState"  # I

    .line 535
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 541
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 542
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 544
    :cond_17
    monitor-exit v0

    .line 545
    return-void

    .line 544
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method handleStopUser(I)V
    .registers 6
    .param p1, "userId"  # I

    .line 652
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 653
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->unloadUserLocked(I)V

    .line 655
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    .line 656
    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 657
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_12

    .line 658
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_15

    .line 659
    return-void

    .line 657
    :catchall_12
    move-exception v2

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    .end local p0  # "this":Lcom/android/server/pm/ShortcutService;
    .end local p1  # "userId":I
    :try_start_14
    throw v2

    .line 658
    .restart local p0  # "this":Lcom/android/server/pm/ShortcutService;
    .restart local p1  # "userId":I
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_15

    throw v1
.end method

.method handleUnlockUser(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 627
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 628
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 629
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_17

    .line 638
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 639
    .local v0, "start":J
    new-instance v2, Lcom/android/server/pm/-$$Lambda$ShortcutService$QFWliMhWloedhnaZCwVKaqKPVb4;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/server/pm/-$$Lambda$ShortcutService$QFWliMhWloedhnaZCwVKaqKPVb4;-><init>(Lcom/android/server/pm/ShortcutService;JI)V

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutService;->injectRunOnNewThread(Ljava/lang/Runnable;)V

    .line 645
    return-void

    .line 629
    .end local v0  # "start":J
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public hasShareTargets(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "packageToCheck"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 2192
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2193
    const-string v0, "android.permission.MANAGE_APP_PREDICTIONS"

    const-string v1, "hasShareTargets"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2197
    :try_start_d
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2199
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->hasShareTargets()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2200
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method hasShortcutHostPermission(Ljava/lang/String;III)Z
    .registers 9
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "callingPid"  # I
    .param p4, "callingUid"  # I

    .line 2354
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2355
    const/4 v0, 0x1

    return v0

    .line 2357
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 2359
    .local v0, "start":J
    const/4 v2, 0x4

    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermissionInner(Ljava/lang/String;I)Z

    move-result v3
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_15

    .line 2361
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 2359
    return v3

    .line 2361
    :catchall_15
    move-exception v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v3
.end method

.method hasShortcutHostPermissionInner(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2397
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2398
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2400
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 2403
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->getCachedLauncher()Landroid/content/ComponentName;

    move-result-object v2

    .line 2404
    .local v2, "cached":Landroid/content/ComponentName;
    if-eqz v2, :cond_1d

    .line 2405
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2406
    const/4 v3, 0x1

    monitor-exit v0

    return v3

    .line 2411
    :cond_1d
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 2414
    .local v3, "detected":Landroid/content/ComponentName;
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->setLauncher(Landroid/content/ComponentName;)V

    .line 2415
    if-eqz v3, :cond_30

    .line 2419
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    monitor-exit v0

    return v4

    .line 2422
    :cond_30
    const/4 v4, 0x0

    monitor-exit v0

    return v4

    .line 2424
    .end local v1  # "user":Lcom/android/server/pm/ShortcutUser;
    .end local v2  # "cached":Landroid/content/ComponentName;
    .end local v3  # "detected":Landroid/content/ComponentName;
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 11
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3246
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3247
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 3249
    .local v2, "token":J
    const/4 v4, 0x3

    :try_start_9
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v6, 0xc2000

    invoke-interface {v5, p1, v6, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_1b
    .catchall {:try_start_9 .. :try_end_12} :catchall_19

    .line 3255
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3257
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3249
    return-object v5

    .line 3255
    :catchall_19
    move-exception v5

    goto :goto_2b

    .line 3250
    :catch_1b
    move-exception v5

    .line 3252
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_1c
    const-string v6, "ShortcutService"

    const-string v7, "RemoteException"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 3253
    const/4 v6, 0x0

    .line 3255
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3257
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3253
    return-object v6

    .line 3255
    .end local v5  # "e":Landroid/os/RemoteException;
    :goto_2b
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3257
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v5
.end method

.method injectBinderCallingPid()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4312
    invoke-static {}, Lcom/android/server/pm/ShortcutService;->getCallingPid()I

    move-result v0

    return v0
.end method

.method injectBinderCallingUid()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4307
    invoke-static {}, Lcom/android/server/pm/ShortcutService;->getCallingUid()I

    move-result v0

    return v0
.end method

.method injectBuildFingerprint()Ljava/lang/String;
    .registers 2

    .line 4333
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method injectClearCallingIdentity()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4322
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method injectCurrentTimeMillis()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method injectDipToPixel(I)I
    .registers 5
    .param p1, "dip"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 756
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 757
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 756
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method injectElapsedRealtime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4296
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1572
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    return-void
.end method

.method injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 11
    .param p1, "activity"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3277
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3278
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 3280
    .local v2, "token":J
    const/4 v4, 0x6

    :try_start_9
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v6, 0xc2080

    invoke-interface {v5, p1, v6, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v5
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_1b
    .catchall {:try_start_9 .. :try_end_12} :catchall_19

    .line 3287
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3289
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3280
    return-object v5

    .line 3287
    :catchall_19
    move-exception v5

    goto :goto_2b

    .line 3282
    :catch_1b
    move-exception v5

    .line 3284
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_1c
    const-string v6, "ShortcutService"

    const-string v7, "RemoteException"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 3285
    const/4 v6, 0x0

    .line 3287
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3289
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3285
    return-object v6

    .line 3287
    .end local v5  # "e":Landroid/os/RemoteException;
    :goto_2b
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3289
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v5
.end method

.method injectGetDefaultMainActivity(Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 3472
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3474
    .local v0, "start":J
    nop

    .line 3475
    const/16 v2, 0xb

    :try_start_7
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v3

    .line 3476
    .local v3, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_17

    :goto_16
    goto :goto_25

    :cond_17
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_29

    goto :goto_16

    .line 3478
    :goto_25
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3476
    return-object v4

    .line 3478
    .end local v3  # "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_29
    move-exception v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v3
.end method

.method public injectGetLocaleTagsForUser(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"  # I

    .line 504
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method injectGetMainActivities(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
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

    .line 3521
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3523
    .local v0, "start":J
    const/16 v2, 0xc

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_13

    .line 3525
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3523
    return-object v3

    .line 3525
    :catchall_13
    move-exception v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v3
.end method

.method injectGetPackageUid(Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 3180
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 3182
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v3, 0xc2000

    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v2
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 3188
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3182
    return v2

    .line 3188
    :catchall_11
    move-exception v2

    goto :goto_20

    .line 3183
    :catch_13
    move-exception v2

    .line 3185
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_14
    const-string v3, "ShortcutService"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    .line 3186
    const/4 v3, -0x1

    .line 3188
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3186
    return v3

    .line 3188
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_20
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v2
.end method

.method injectGetPackagesWithUninstalled(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"  # I
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

    .line 3325
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 3326
    const v1, 0xc2000

    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3327
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    if-nez v0, :cond_10

    .line 3328
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 3330
    :cond_10
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method injectGetPinConfirmationActivity(Ljava/lang/String;II)Landroid/content/ComponentName;
    .registers 9
    .param p1, "launcherPackageName"  # Ljava/lang/String;
    .param p2, "launcherUserId"  # I
    .param p3, "requestType"  # I

    .line 3552
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3553
    const/4 v0, 0x1

    if-ne p3, v0, :cond_9

    .line 3554
    const-string v0, "android.content.pm.action.CONFIRM_PIN_SHORTCUT"

    goto :goto_b

    .line 3555
    :cond_9
    const-string v0, "android.content.pm.action.CONFIRM_PIN_APPWIDGET"

    :goto_b
    nop

    .line 3557
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3558
    .local v1, "confirmIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object v2

    .line 3560
    .local v2, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 3561
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    return-object v4

    .line 3563
    .end local v3  # "ri":Landroid/content/pm/ResolveInfo;
    :cond_31
    const/4 v3, 0x0

    return-object v3
.end method

.method injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .registers 12
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 3404
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3405
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 3407
    .local v2, "token":J
    const/16 v4, 0x9

    :try_start_a
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v5
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_14} :catch_1d
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 3413
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3415
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3407
    return-object v5

    .line 3413
    :catchall_1b
    move-exception v5

    goto :goto_41

    .line 3409
    :catch_1d
    move-exception v5

    .line 3410
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1e
    const-string v6, "ShortcutService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resources for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_1b

    .line 3411
    const/4 v6, 0x0

    .line 3413
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3415
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3411
    return-object v6

    .line 3413
    .end local v5  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_41
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3415
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v5
.end method

.method injectHasAccessShortcutsPermission(II)Z
    .registers 5
    .param p1, "callingPid"  # I
    .param p2, "callingUid"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2380
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_SHORTCUTS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method injectHasUnlimitedShortcutsApiCallsPermission(II)Z
    .registers 5
    .param p1, "callingPid"  # I
    .param p2, "callingUid"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2389
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UNLIMITED_SHORTCUTS_API_CALLS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "activity"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3535
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3537
    .local v0, "start":J
    const/16 v2, 0xd

    :try_start_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v3

    .line 3538
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_20

    if-lez v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    .line 3540
    :goto_1c
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3537
    return v3

    .line 3540
    :catchall_20
    move-exception v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v3
.end method

.method injectIsLowRamDevice()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4368
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    return v0
.end method

.method injectIsMainActivity(Landroid/content/ComponentName;I)Z
    .registers 10
    .param p1, "activity"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I

    .line 3486
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3488
    .local v0, "start":J
    const/4 v2, 0x0

    const/16 v3, 0xc

    if-nez p1, :cond_14

    .line 3489
    :try_start_9
    const-string/jumbo v4, "null activity detected"

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_3e

    .line 3490
    nop

    .line 3499
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3490
    return v2

    .line 3492
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

    .line 3493
    nop

    .line 3499
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3493
    return v5

    .line 3495
    :cond_26
    nop

    .line 3496
    :try_start_27
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3495
    invoke-virtual {p0, v4, v6, p1, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v4

    .line 3497
    .local v4, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_3e

    if-lez v6, :cond_3a

    move v2, v5

    .line 3499
    :cond_3a
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3497
    return v2

    .line 3499
    .end local v4  # "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_3e
    move-exception v2

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v2
.end method

.method injectIsSafeModeEnabled()Z
    .registers 5

    .line 3567
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 3569
    .local v0, "token":J
    :try_start_4
    const-string/jumbo v2, "window"

    .line 3570
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 3571
    invoke-interface {v2}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    move-result v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_1c
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 3575
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3569
    return v2

    .line 3575
    :catchall_17
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v2

    .line 3572
    :catch_1c
    move-exception v2

    .line 3573
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 3575
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3573
    return v3
.end method

.method injectPackageInfoWithUninstalled(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .registers 13
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "getSignatures"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3210
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3211
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 3213
    .local v2, "token":J
    const/4 v4, 0x2

    const/4 v5, 0x1

    :try_start_a
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v7, 0xc2000

    .line 3215
    if-eqz p3, :cond_14

    const/high16 v8, 0x8000000

    goto :goto_15

    :cond_14
    const/4 v8, 0x0

    :goto_15
    or-int/2addr v7, v8

    .line 3213
    invoke-interface {v6, p1, v7, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_28
    .catchall {:try_start_a .. :try_end_1a} :catchall_26

    .line 3222
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3224
    nop

    .line 3225
    if-eqz p3, :cond_21

    goto :goto_22

    :cond_21
    move v4, v5

    .line 3224
    :goto_22
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3213
    return-object v6

    .line 3222
    :catchall_26
    move-exception v6

    goto :goto_3d

    .line 3217
    :catch_28
    move-exception v6

    .line 3219
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v7, "ShortcutService"

    const-string v8, "RemoteException"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_26

    .line 3220
    const/4 v7, 0x0

    .line 3222
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3224
    nop

    .line 3225
    if-eqz p3, :cond_38

    goto :goto_39

    :cond_38
    move v4, v5

    .line 3224
    :goto_39
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3220
    return-object v7

    .line 3222
    .end local v6  # "e":Landroid/os/RemoteException;
    :goto_3d
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3224
    nop

    .line 3225
    if-eqz p3, :cond_44

    goto :goto_45

    :cond_44
    move v4, v5

    .line 3224
    :goto_45
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v6
.end method

.method injectPostToHandler(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"  # Ljava/lang/Runnable;

    .line 1615
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1616
    return-void
.end method

.method injectRegisterUidObserver(Landroid/app/IUidObserver;I)V
    .registers 6
    .param p1, "observer"  # Landroid/app/IUidObserver;
    .param p2, "which"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4374
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4377
    goto :goto_b

    .line 4376
    :catch_a
    move-exception v0

    .line 4378
    :goto_b
    return-void
.end method

.method injectRestoreCallingIdentity(J)V
    .registers 3
    .param p1, "token"  # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4328
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4329
    return-void
.end method

.method injectRunOnNewThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"  # Ljava/lang/Runnable;

    .line 1619
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1620
    return-void
.end method

.method injectSendIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 9
    .param p1, "intentSender"  # Landroid/content/IntentSender;
    .param p2, "extras"  # Landroid/content/Intent;

    .line 3588
    if-nez p1, :cond_3

    .line 3589
    return-void

    .line 3592
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

    .line 3596
    goto :goto_17

    .line 3594
    :catch_e
    move-exception v0

    .line 3595
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "ShortcutService"

    const-string/jumbo v2, "sendIntent failed()."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3597
    .end local v0  # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_17
    return-void
.end method

.method injectShortcutManagerConstants()Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 749
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 750
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 749
    const-string/jumbo v1, "shortcut_manager_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method injectShouldPerformVerification()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4460
    const/4 v0, 0x0

    return v0
.end method

.method injectSystemDataPath()Ljava/io/File;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4354
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method injectUptimeMillis()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4301
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method injectUserDataPath(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4359
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "shortcut_service"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method injectValidateIconResPackage(Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)V
    .registers 5
    .param p1, "shortcut"  # Landroid/content/pm/ShortcutInfo;
    .param p2, "icon"  # Landroid/graphics/drawable/Icon;

    .line 1465
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1469
    return-void

    .line 1466
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Icon resource must reside in shortcut owner package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method injectXmlMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 4
    .param p1, "activityInfo"  # Landroid/content/pm/ActivityInfo;
    .param p2, "key"  # Ljava/lang/String;

    .line 3399
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method isDummyMainActivity(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "name"  # Landroid/content/ComponentName;

    .line 3513
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.__dummy__"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method isEphemeralApp(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 3394
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isEphemeralApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method isPackageInstalled(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 3390
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isRequestPinItemSupported(II)Z
    .registers 6
    .param p1, "callingUserId"  # I
    .param p2, "requestType"  # I

    .line 2291
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 2293
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 2294
    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->isRequestPinItemSupported(II)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 2296
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2293
    return v2

    .line 2296
    :catchall_e
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v2
.end method

.method isUidForegroundLocked(I)Z
    .registers 5
    .param p1, "uid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 553
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_6

    .line 556
    return v0

    .line 559
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x15

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 560
    return v0

    .line 564
    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v0

    return v0
.end method

.method protected isUserUnlockedL(I)Z
    .registers 4
    .param p1, "userId"  # I

    .line 1188
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 1189
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1190
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1192
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_16

    .line 1198
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    return v0

    .line 1192
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public synthetic lambda$applyRestore$12$ShortcutService(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 3674
    const-string v0, "Start time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3675
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->dumpCurrentTime(Ljava/io/PrintWriter;)V

    .line 3676
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3677
    return-void
.end method

.method public synthetic lambda$applyRestore$13$ShortcutService(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 3703
    const-string v0, "Finish time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3704
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->dumpCurrentTime(Ljava/io/PrintWriter;)V

    .line 3705
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3706
    return-void
.end method

.method public synthetic lambda$checkPackageChanges$7$ShortcutService(Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 5
    .param p1, "gonePackages"  # Ljava/util/ArrayList;
    .param p2, "spi"  # Lcom/android/server/pm/ShortcutPackageItem;

    .line 3024
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3025
    return-void

    .line 3027
    :cond_b
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 3032
    invoke-static {p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(Lcom/android/server/pm/ShortcutPackageItem;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3034
    :cond_20
    return-void
.end method

.method public synthetic lambda$cleanUpPackageForAllLoadedUsers$3$ShortcutService(Ljava/lang/String;IZLcom/android/server/pm/ShortcutUser;)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "packageUserId"  # I
    .param p3, "appStillExists"  # Z
    .param p4, "user"  # Lcom/android/server/pm/ShortcutUser;

    .line 2514
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageLocked(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public synthetic lambda$handleUnlockUser$0$ShortcutService(JI)V
    .registers 6
    .param p1, "start"  # J
    .param p3, "userId"  # I

    .line 640
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    const/16 v1, 0xf

    :try_start_5
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 642
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 643
    monitor-exit v0

    .line 644
    return-void

    .line 643
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$notifyListeners$1$ShortcutService(ILjava/lang/String;)V
    .registers 6
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 1656
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_2b

    .line 1657
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1658
    monitor-exit v0

    return-void

    .line 1661
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1662
    .local v1, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;>;"
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_28

    .line 1664
    :try_start_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_19
    if-ltz v0, :cond_27

    .line 1665
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    invoke-interface {v2, p2, p1}, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;->onShortcutChanged(Ljava/lang/String;I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_2b

    .line 1664
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 1668
    .end local v0  # "i":I
    .end local v1  # "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;>;"
    :cond_27
    goto :goto_2c

    .line 1662
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    .end local p0  # "this":Lcom/android/server/pm/ShortcutService;
    .end local p1  # "userId":I
    .end local p2  # "packageName":Ljava/lang/String;
    :try_start_2a
    throw v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2b} :catch_2b

    .line 1667
    .restart local p0  # "this":Lcom/android/server/pm/ShortcutService;
    .restart local p1  # "userId":I
    .restart local p2  # "packageName":Ljava/lang/String;
    :catch_2b
    move-exception v0

    .line 1669
    :goto_2c
    return-void
.end method

.method public synthetic lambda$rescanUpdatedPackagesLocked$8$ShortcutService(Lcom/android/server/pm/ShortcutUser;ILandroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p1, "user"  # Lcom/android/server/pm/ShortcutUser;
    .param p2, "userId"  # I
    .param p3, "ai"  # Landroid/content/pm/ApplicationInfo;

    .line 3063
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 3065
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 3066
    return-void
.end method

.method logDurationStat(IJ)V
    .registers 5
    .param p1, "statId"  # I
    .param p2, "start"  # J

    .line 499
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 500
    return-void
.end method

.method public onApplicationActive(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 2337
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceResetThrottlingPermission()V

    .line 2339
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2340
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2342
    monitor-exit v0

    return-void

    .line 2345
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2346
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimitingForCommandLineNoSaving()V

    .line 2347
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V

    .line 2348
    monitor-exit v0

    .line 2349
    return-void

    .line 2348
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method onBootPhase(I)V
    .registers 4
    .param p1, "phase"  # I

    .line 612
    const/16 v0, 0x1e0

    if-eq p1, v0, :cond_10

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_9

    goto :goto_14

    .line 617
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_14

    .line 614
    :cond_10
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->initialize()V

    .line 615
    nop

    .line 620
    :goto_14
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 19
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 4062
    move-object v9, p0

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceShell()V

    .line 4064
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v10

    .line 4066
    .local v10, "token":J
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
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_28

    .line 4068
    .local v1, "status":I
    move-object/from16 v2, p6

    :try_start_1e
    invoke-virtual {v2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 4070
    .end local v1  # "status":I
    invoke-virtual {p0, v10, v11}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4071
    nop

    .line 4072
    return-void

    .line 4070
    :catchall_26
    move-exception v0

    goto :goto_2b

    :catchall_28
    move-exception v0

    move-object/from16 v2, p6

    :goto_2b
    invoke-virtual {p0, v10, v11}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v0
.end method

.method openIconFileForWrite(ILandroid/content/pm/ShortcutInfo;)Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    .registers 9
    .param p1, "userId"  # I
    .param p2, "shortcut"  # Landroid/content/pm/ShortcutInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1389
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v1

    .line 1390
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1391
    .local v0, "packagePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_37

    .line 1392
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1393
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1396
    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    goto :goto_37

    .line 1394
    :cond_20
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1399
    :cond_37
    :goto_37
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1400
    .local v1, "baseName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1401
    .local v2, "suffix":I
    :goto_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_49

    move-object v4, v1

    goto :goto_5d

    :cond_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1402
    .local v3, "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1403
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7a

    .line 1407
    new-instance v5, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;

    invoke-direct {v5, v4}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;-><init>(Ljava/io/File;)V

    return-object v5

    .line 1400
    .end local v3  # "filename":Ljava/lang/String;
    .end local v4  # "file":Ljava/io/File;
    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_40
.end method

.method packageShortcutsChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1644
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->notifyListeners(Ljava/lang/String;I)V

    .line 1645
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 1646
    return-void
.end method

.method queryActivities(Landroid/content/Intent;IZ)Ljava/util/List;
    .registers 8
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "userId"  # I
    .param p3, "exportedOnly"  # Z
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

    .line 3445
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 3447
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 3448
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v3, 0xc2000

    invoke-virtual {v2, p1, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_3b

    .line 3451
    .local v2, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3452
    nop

    .line 3453
    if-eqz v2, :cond_38

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_38

    .line 3457
    :cond_1e
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v3}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 3458
    sget-object v3, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    return-object v3

    .line 3460
    :cond_30
    if-eqz p3, :cond_37

    .line 3461
    sget-object v3, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate;

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 3463
    :cond_37
    return-object v2

    .line 3454
    :cond_38
    :goto_38
    sget-object v3, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    return-object v3

    .line 3451
    .end local v2  # "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_3b
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v2
.end method

.method queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 6
    .param p1, "baseIntent"  # Landroid/content/Intent;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "activity"  # Landroid/content/ComponentName;
    .param p4, "userId"  # I
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

    .line 3434
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3435
    if-eqz p3, :cond_e

    .line 3436
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3438
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p4, v0}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAllDynamicShortcuts(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 2115
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2117
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2118
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2120
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2121
    .local v1, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts(Z)V

    .line 2122
    .end local v1  # "ps":Lcom/android/server/pm/ShortcutPackage;
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_19

    .line 2123
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 2125
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2126
    return-void

    .line 2122
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "shortcutIds"  # Ljava/util/List;
    .param p3, "userId"  # I

    .line 2086
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2087
    const-string/jumbo v0, "shortcutIds must be provided"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2089
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2090
    :try_start_c
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2092
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2094
    .local v1, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V

    .line 2097
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_1c
    if-ltz v3, :cond_37

    .line 2098
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2099
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 2100
    goto :goto_34

    .line 2102
    :cond_31
    invoke-virtual {v1, v4, v2}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;Z)Z

    .line 2097
    .end local v4  # "id":Ljava/lang/String;
    :goto_34
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 2106
    .end local v3  # "i":I
    :cond_37
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2107
    .end local v1  # "ps":Lcom/android/server/pm/ShortcutPackage;
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_42

    .line 2108
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 2110
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2111
    return-void

    .line 2107
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method removeIconLocked(Landroid/content/pm/ShortcutInfo;)V
    .registers 3
    .param p1, "shortcut"  # Landroid/content/pm/ShortcutInfo;

    .line 1288
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 1289
    return-void
.end method

.method public reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "shortcutId"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 2260
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2262
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2269
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2270
    :try_start_9
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2272
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2274
    .local v1, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v1, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 2275
    const-string v2, "ShortcutService"

    const-string/jumbo v3, "reportShortcutUsed: package %s doesn\'t have shortcut %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    monitor-exit v0

    return-void

    .line 2279
    .end local v1  # "ps":Lcom/android/server/pm/ShortcutPackage;
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_41

    .line 2281
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 2283
    .local v0, "token":J
    :try_start_32
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v2, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->reportShortcutUsage(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_3c

    .line 2285
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2286
    nop

    .line 2287
    return-void

    .line 2285
    :catchall_3c
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v2

    .line 2279
    .end local v0  # "token":J
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Z
    .registers 14
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "shortcut"  # Landroid/content/pm/ShortcutInfo;
    .param p3, "resultIntent"  # Landroid/content/IntentSender;
    .param p4, "userId"  # I

    .line 1953
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1954
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string v1, "Shortcut must be enabled"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1955
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move-object v5, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result v0

    return v0
.end method

.method resetAllThrottlingInner()V
    .registers 4

    .line 2325
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2326
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 2327
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 2328
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    .line 2329
    const-string v0, "ShortcutService"

    const-string v1, "ShortcutManager: throttling counter reset for all users"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    return-void

    .line 2327
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

    .line 2306
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystemOrShell()V

    .line 2308
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->resetThrottlingInner(I)V

    .line 2309
    return-void
.end method

.method resetThrottlingInner(I)V
    .registers 6
    .param p1, "userId"  # I

    .line 2312
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2313
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 2314
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is locked or not running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    monitor-exit v0

    return-void

    .line 2318
    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->resetThrottling()V

    .line 2319
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_48

    .line 2320
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 2321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortcutManager: throttling counter reset for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    return-void

    .line 2319
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
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

    .line 891
    const-string/jumbo v0, "root"

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Landroid/util/AtomicFile;

    move-result-object v1

    .line 896
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 898
    .local v2, "outs":Ljava/io/FileOutputStream;
    :try_start_8
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 901
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 902
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 903
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 904
    invoke-interface {v3, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 907
    const-string/jumbo v4, "last_reset_time"

    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    invoke-static {v3, v4, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 910
    invoke-interface {v3, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 911
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 914
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_38} :catch_39

    .line 918
    .end local v3  # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_57

    .line 915
    :catch_39
    move-exception v0

    .line 916
    .local v0, "e":Ljava/io/IOException;
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

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 917
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 919
    .end local v0  # "e":Ljava/io/IOException;
    :goto_57
    return-void
.end method

.method saveDirtyInfo()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1120
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_31

    .line 1121
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_27

    .line 1122
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1123
    .local v2, "userId":I
    const/16 v3, -0x2710

    if-ne v2, v3, :cond_21

    .line 1124
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveBaseStateLocked()V

    goto :goto_24

    .line 1126
    :cond_21
    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V

    .line 1121
    .end local v2  # "userId":I
    :goto_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 1129
    .end local v1  # "i":I
    :cond_27
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1130
    monitor-exit v0

    .line 1133
    goto :goto_37

    .line 1130
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    .end local p0  # "this":Lcom/android/server/pm/ShortcutService;
    :try_start_30
    throw v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_31} :catch_31

    .line 1131
    .restart local p0  # "this":Lcom/android/server/pm/ShortcutService;
    :catch_31
    move-exception v0

    .line 1132
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception in saveDirtyInfo"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1134
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_37
    return-void
.end method

.method saveIconAndFixUpShortcutLocked(Landroid/content/pm/ShortcutInfo;)V
    .registers 11
    .param p1, "shortcut"  # Landroid/content/pm/ShortcutInfo;

    .line 1413
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    if-nez v0, :cond_7a

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_7a

    .line 1417
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 1420
    .local v0, "token":J
    :try_start_11
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->removeIconLocked(Landroid/content/pm/ShortcutInfo;)V

    .line 1422
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_75

    .line 1423
    .local v2, "icon":Landroid/graphics/drawable/Icon;
    if-nez v2, :cond_1e

    .line 1457
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 1424
    return-void

    .line 1426
    :cond_1e
    :try_start_1e
    iget v3, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_75

    .line 1429
    .local v3, "maxIconDimension":I
    :try_start_20
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_59

    const/4 v5, 0x2

    if-eq v4, v5, :cond_44

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3f

    .line 1441
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1442
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    int-to-float v5, v3

    const/high16 v6, 0x3f800000  # 1.0f

    const/high16 v7, 0x40000000  # 2.0f

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v8

    mul-float/2addr v8, v7

    add-float/2addr v8, v6

    mul-float/2addr v5, v8

    float-to-int v3, v5

    .line 1443
    goto :goto_5e

    .line 1448
    .end local v4  # "bitmap":Landroid/graphics/Bitmap;
    :cond_3f
    invoke-static {}, Landroid/content/pm/ShortcutInfo;->getInvalidIconException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    .end local v0  # "token":J
    .end local v2  # "icon":Landroid/graphics/drawable/Icon;
    .end local v3  # "maxIconDimension":I
    .end local p0  # "this":Lcom/android/server/pm/ShortcutService;
    .end local p1  # "shortcut":Landroid/content/pm/ShortcutInfo;
    throw v4

    .line 1431
    .restart local v0  # "token":J
    .restart local v2  # "icon":Landroid/graphics/drawable/Icon;
    .restart local v3  # "maxIconDimension":I
    .restart local p0  # "this":Lcom/android/server/pm/ShortcutService;
    .restart local p1  # "shortcut":Landroid/content/pm/ShortcutInfo;
    :cond_44
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/ShortcutService;->injectValidateIconResPackage(Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)V

    .line 1433
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    .line 1434
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_52
    .catchall {:try_start_20 .. :try_end_52} :catchall_70

    .line 1454
    :try_start_52
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_75

    .line 1457
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 1435
    return-void

    .line 1438
    :cond_59
    :try_start_59
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1439
    .restart local v4  # "bitmap":Landroid/graphics/Bitmap;
    nop

    .line 1450
    :goto_5e
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    invoke-virtual {v5, p1, v3, v6, v7}, Lcom/android/server/pm/ShortcutBitmapSaver;->saveBitmapLocked(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V
    :try_end_67
    .catchall {:try_start_59 .. :try_end_67} :catchall_70

    .line 1454
    :try_start_67
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_75

    .line 1455
    nop

    .line 1457
    .end local v2  # "icon":Landroid/graphics/drawable/Icon;
    .end local v3  # "maxIconDimension":I
    .end local v4  # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 1458
    nop

    .line 1459
    return-void

    .line 1454
    .restart local v2  # "icon":Landroid/graphics/drawable/Icon;
    .restart local v3  # "maxIconDimension":I
    :catchall_70
    move-exception v4

    :try_start_71
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->clearIcon()V

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/pm/ShortcutService;
    .end local p1  # "shortcut":Landroid/content/pm/ShortcutInfo;
    throw v4
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_75

    .line 1457
    .end local v2  # "icon":Landroid/graphics/drawable/Icon;
    .end local v3  # "maxIconDimension":I
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/pm/ShortcutService;
    .restart local p1  # "shortcut":Landroid/content/pm/ShortcutInfo;
    :catchall_75
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v2

    .line 1414
    .end local v0  # "token":J
    :cond_7a
    :goto_7a
    return-void
.end method

.method scheduleSaveUser(I)V
    .registers 2
    .param p1, "userId"  # I

    .line 1094
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    .line 1095
    return-void
.end method

.method public setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 13
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "shortcutInfoList"  # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"  # I

    .line 1757
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 1759
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1760
    .local v0, "newShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    .line 1761
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1763
    .local v1, "size":I
    nop

    .line 1764
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v3

    .line 1763
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v2

    .line 1766
    .local v2, "unlimited":Z
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1767
    :try_start_1e
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 1769
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v4

    .line 1771
    .local v4, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V

    .line 1773
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    .line 1775
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    .line 1778
    invoke-virtual {v4, v2}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    move-result v7

    if-nez v7, :cond_38

    .line 1779
    monitor-exit v3

    return v6

    .line 1783
    :cond_38
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    .line 1784
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    .line 1786
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3f
    if-ge v7, v1, :cond_4d

    .line 1787
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    invoke-direct {p0, v8, v6}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    .line 1786
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    .line 1791
    .end local v7  # "i":I
    :cond_4d
    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts(Z)V

    .line 1794
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_51
    if-ge v6, v1, :cond_5f

    .line 1795
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 1796
    .local v7, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4, v7}, Lcom/android/server/pm/ShortcutPackage;->addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    .line 1794
    .end local v7  # "newShortcut":Landroid/content/pm/ShortcutInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_51

    .line 1800
    .end local v6  # "i":I
    :cond_5f
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 1801
    .end local v4  # "ps":Lcom/android/server/pm/ShortcutPackage;
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_1e .. :try_end_63} :catchall_6a

    .line 1802
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 1804
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 1806
    return v5

    .line 1801
    :catchall_6a
    move-exception v4

    :try_start_6b
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v4
.end method

.method public setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "type"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 2503
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2504
    :try_start_3
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getNonPersistentUserLocked(I)Lcom/android/server/pm/ShortcutNonPersistentUser;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ShortcutNonPersistentUser;->setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    monitor-exit v0

    .line 2506
    return-void

    .line 2505
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method shouldBackupApp(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 3602
    const v0, 0x8000

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->isApplicationFlagSet(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method throwIfUserLockedL(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 1203
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1206
    return-void

    .line 1204
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is locked or not running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateConfigurationLocked(Ljava/lang/String;)Z
    .registers 12
    .param p1, "config"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 702
    const/4 v0, 0x1

    .line 704
    .local v0, "result":Z
    new-instance v1, Landroid/util/KeyValueListParser;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 706
    .local v1, "parser":Landroid/util/KeyValueListParser;
    :try_start_8
    invoke-virtual {v1, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_b} :catch_c

    .line 712
    goto :goto_15

    .line 707
    :catch_c
    move-exception v2

    .line 710
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "ShortcutService"

    const-string v4, "Bad shortcut manager settings"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    const/4 v0, 0x0

    .line 714
    .end local v2  # "e":Ljava/lang/IllegalArgumentException;
    :goto_15
    const-wide/16 v2, 0xbb8

    const-string/jumbo v4, "save_delay_ms"

    invoke-virtual {v1, v4, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    .line 717
    const-wide/16 v4, 0x1

    const-wide/32 v6, 0x15180

    const-string/jumbo v2, "reset_interval_sec"

    invoke-virtual {v1, v2, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    .line 721
    const-wide/16 v4, 0xa

    const-string/jumbo v2, "max_updates_per_interval"

    invoke-virtual {v1, v2, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    long-to-int v2, v6

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    .line 724
    const-string/jumbo v2, "max_shortcuts"

    invoke-virtual {v1, v2, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    .line 727
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 728
    const-wide/16 v3, 0x30

    const-string/jumbo v5, "max_icon_dimension_dp_lowram"

    invoke-virtual {v1, v5, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    goto :goto_75

    .line 731
    :cond_6b
    const-wide/16 v3, 0x60

    const-string/jumbo v5, "max_icon_dimension_dp"

    invoke-virtual {v1, v5, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    .line 727
    :goto_75
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 735
    .local v2, "iconDimensionDp":I
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutService;->injectDipToPixel(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    .line 737
    sget-object v3, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    .line 738
    const-string/jumbo v4, "icon_format"

    invoke-virtual {v1, v4, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 737
    invoke-static {v3}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 740
    const-wide/16 v3, 0x64

    const-string/jumbo v5, "icon_quality"

    invoke-virtual {v1, v5, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    .line 744
    return v0
.end method

.method public updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 20
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "shortcutInfoList"  # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"  # I

    .line 1812
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 1814
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    .line 1815
    .local v4, "newShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-direct {v1, v2, v4}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    .line 1816
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 1818
    .local v5, "size":I
    nop

    .line 1819
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v6

    .line 1818
    invoke-virtual {v1, v0, v6}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v6

    .line 1821
    .local v6, "unlimited":Z
    iget-object v7, v1, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1822
    :try_start_24
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 1824
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 1826
    .local v0, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v8, 0x1

    invoke-virtual {v0, v4, v8}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V

    .line 1831
    const/4 v9, 0x2

    invoke-virtual {v0, v4, v9}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    .line 1834
    invoke-virtual {v0, v6}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_3c

    .line 1835
    monitor-exit v7

    return v10

    .line 1839
    :cond_3c
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    .line 1840
    invoke-direct {v1, v4}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    .line 1842
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_43
    if-ge v9, v5, :cond_ab

    .line 1843
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ShortcutInfo;

    .line 1844
    .local v11, "source":Landroid/content/pm/ShortcutInfo;
    invoke-direct {v1, v11, v8}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    .line 1846
    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v12

    .line 1849
    .local v12, "target":Landroid/content/pm/ShortcutInfo;
    if-eqz v12, :cond_a8

    invoke-virtual {v12}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v13

    if-nez v13, :cond_5f

    .line 1850
    goto :goto_a8

    .line 1853
    :cond_5f
    invoke-virtual {v12}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v13

    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v14

    if-eq v13, v14, :cond_70

    .line 1854
    const-string v13, "ShortcutService"

    const-string v14, "ShortcutInfo.enabled cannot be changed with updateShortcuts()"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    :cond_70
    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->hasRank()Z

    move-result v13

    if-eqz v13, :cond_80

    .line 1861
    invoke-virtual {v12}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    .line 1862
    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    .line 1865
    :cond_80
    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    if-eqz v13, :cond_88

    move v13, v8

    goto :goto_89

    :cond_88
    move v13, v10

    .line 1866
    .local v13, "replacingIcon":Z
    :goto_89
    if-eqz v13, :cond_8e

    .line 1867
    invoke-virtual {v1, v12}, Lcom/android/server/pm/ShortcutService;->removeIconLocked(Landroid/content/pm/ShortcutInfo;)V

    .line 1871
    :cond_8e
    invoke-virtual {v12, v11}, Landroid/content/pm/ShortcutInfo;->copyNonNullFieldsFrom(Landroid/content/pm/ShortcutInfo;)V

    .line 1872
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1874
    if-eqz v13, :cond_9d

    .line 1875
    invoke-virtual {v1, v12}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcutLocked(Landroid/content/pm/ShortcutInfo;)V

    .line 1880
    :cond_9d
    if-nez v13, :cond_a5

    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    move-result v14

    if-eqz v14, :cond_a8

    .line 1881
    :cond_a5
    invoke-virtual {v1, v12}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 1842
    .end local v11  # "source":Landroid/content/pm/ShortcutInfo;
    .end local v12  # "target":Landroid/content/pm/ShortcutInfo;
    .end local v13  # "replacingIcon":Z
    :cond_a8
    :goto_a8
    add-int/lit8 v9, v9, 0x1

    goto :goto_43

    .line 1886
    .end local v9  # "i":I
    :cond_ab
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 1887
    .end local v0  # "ps":Lcom/android/server/pm/ShortcutPackage;
    monitor-exit v7
    :try_end_af
    .catchall {:try_start_24 .. :try_end_af} :catchall_b6

    .line 1888
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 1890
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 1892
    return v8

    .line 1887
    :catchall_b6
    move-exception v0

    :try_start_b7
    monitor-exit v7
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw v0
.end method

.method public validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V
    .registers 4
    .param p1, "shortcut"  # Landroid/content/pm/ShortcutInfo;

    .line 1717
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 1718
    return-void
.end method

.method final verifyStates()V
    .registers 2

    .line 4468
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectShouldPerformVerification()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4469
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesInner()V

    .line 4471
    :cond_9
    return-void
.end method

.method waitForBitmapSavesForTest()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4485
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4486
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    .line 4487
    monitor-exit v0

    .line 4488
    return-void

    .line 4487
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method final wtf(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"  # Ljava/lang/String;

    .line 4337
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4338
    return-void
.end method

.method wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "message"  # Ljava/lang/String;
    .param p2, "e"  # Ljava/lang/Throwable;

    .line 4342
    if-nez p2, :cond_a

    .line 4343
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stacktrace"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    .line 4345
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4346
    :try_start_d
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    .line 4347
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Last failure was logged here:"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    .line 4348
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_23

    .line 4349
    const-string v0, "ShortcutService"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4350
    return-void

    .line 4348
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method
