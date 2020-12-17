.class Lcom/android/server/StorageManagerService;
.super Landroid/os/storage/IStorageManager$Stub;
.source "StorageManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;,
        Lcom/android/server/StorageManagerService$Callbacks;,
        Lcom/android/server/StorageManagerService$UnmountObbAction;,
        Lcom/android/server/StorageManagerService$MountObbAction;,
        Lcom/android/server/StorageManagerService$ObbAction;,
        Lcom/android/server/StorageManagerService$ObbException;,
        Lcom/android/server/StorageManagerService$ObbActionHandler;,
        Lcom/android/server/StorageManagerService$AppFuseMountScope;,
        Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;,
        Lcom/android/server/StorageManagerService$ObbState;,
        Lcom/android/server/StorageManagerService$USBConstant;,
        Lcom/android/server/StorageManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ALL_STORAGE_PERMISSIONS:[Ljava/lang/String;

.field private static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field private static final ATTR_FS_UUID:Ljava/lang/String; = "fsUuid"

.field private static final ATTR_LAST_BENCH_MILLIS:Ljava/lang/String; = "lastBenchMillis"

.field private static final ATTR_LAST_SEEN_MILLIS:Ljava/lang/String; = "lastSeenMillis"

.field private static final ATTR_LAST_TRIM_MILLIS:Ljava/lang/String; = "lastTrimMillis"

.field private static final ATTR_NICKNAME:Ljava/lang/String; = "nickname"

.field private static final ATTR_PART_GUID:Ljava/lang/String; = "partGuid"

.field private static final ATTR_PRIMARY_STORAGE_UUID:Ljava/lang/String; = "primaryStorageUuid"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_USER_FLAGS:Ljava/lang/String; = "userFlags"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final AUTO_INSTALL_VERIFY:Ljava/lang/String; = "/data/app/autoVerify/"

.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field public static final CRYPTO_TYPES:[Ljava/lang/String;

.field private static final DEBUG_EVENTS:Z = false

.field private static final DEBUG_OBB:Z = false

.field private static final EMULATE_FBE_SUPPORTED:Z = true

.field private static final ENABLE_ISOLATED_STORAGE:Z

.field private static final H_ABORT_IDLE_MAINT:I = 0xc

.field private static final H_BOOT_COMPLETED:I = 0xd

.field private static final H_COMPLETE_UNLOCK_USER:I = 0xe

.field private static final H_DAEMON_CONNECTED:I = 0x2

.field private static final H_FSTRIM:I = 0x4

.field private static final H_INTERNAL_BROADCAST:I = 0x7

.field private static final H_PARTITION_FORGET:I = 0x9

.field private static final H_RESET:I = 0xa

.field private static final H_RUN_IDLE_MAINT:I = 0xb

.field private static final H_SHUTDOWN:I = 0x3

.field private static final H_SYSTEM_READY:I = 0x1

.field private static final H_VOLUME_BROADCAST:I = 0x6

.field private static final H_VOLUME_MOUNT:I = 0x5

.field private static final H_VOLUME_UNMOUNT:I = 0x8

.field private static final ISOLATED_STORAGE_ENABLED:Ljava/lang/String; = "isolated_storage_enabled"

.field private static final LAST_FSTRIM_FILE:Ljava/lang/String; = "last-fstrim"

.field private static final LOCAL_LOGV:Z

.field private static final MOVE_STATUS_COPY_FINISHED:I = 0x52

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x2

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final TAG:Ljava/lang/String; = "StorageManagerService"

.field private static final TAG_STORAGE_BENCHMARK:Ljava/lang/String; = "storage_benchmark"

.field private static final TAG_STORAGE_TRIM:Ljava/lang/String; = "storage_trim"

.field private static final TAG_VOLUME:Ljava/lang/String; = "volume"

.field private static final TAG_VOLUMES:Ljava/lang/String; = "volumes"

.field private static final VERSION_ADD_PRIMARY:I = 0x2

.field private static final VERSION_FIX_PRIMARY:I = 0x3

.field private static final VERSION_INIT:I = 0x1

.field private static final WATCHDOG_ENABLE:Z = true

.field private static final ZRAM_ENABLED_PROPERTY:Ljava/lang/String; = "persist.sys.zram_enabled"

.field static sSelf:Lcom/android/server/StorageManagerService;


# instance fields
.field private mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppFuseLock"
        }
    .end annotation
.end field

.field private final mAppFuseLock:Ljava/lang/Object;

.field private mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback$Stub;

.field private volatile mBootCompleted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private volatile mCurrentUserId:I

.field private volatile mDaemonConnected:Z

.field private mDiskScanLatches:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private mDisks:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private mIPackageManager:Landroid/content/pm/IPackageManager;

.field private mLastMaintenance:J

.field private final mLastMaintenanceFile:Ljava/io/File;

.field private final mListener:Landroid/os/IVoldListener;

.field private mLocalUnlockedUsers:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMoveCallback:Landroid/content/pm/IPackageMoveObserver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mMoveTargetUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mNextAppFuseName:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppFuseLock"
        }
    .end annotation
.end field

.field private final mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Lcom/android/server/StorageManagerService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/StorageManagerService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagesLock:Ljava/lang/Object;

.field private mPendingAutoInstall:Z

.field private mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field private mPrimaryStorageUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRecords:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;

.field private volatile mSecureKeyguardShowing:Z

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

.field private volatile mStoraged:Landroid/os/IStoraged;

.field private mSystemUnlockedUsers:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mVold:Landroid/os/IVold;

.field private final mVolumes:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 194
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 200
    invoke-static {}, Landroid/os/storage/StorageManager;->hasIsolatedStorage()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/StorageManagerService;->ENABLE_ISOLATED_STORAGE:Z

    .line 270
    const-string v0, "StorageManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/StorageManagerService;->LOCAL_LOGV:Z

    .line 305
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/StorageManagerService;->ALL_STORAGE_PERMISSIONS:[Ljava/lang/String;

    .line 466
    const-string/jumbo v0, "password"

    const-string v1, "default"

    const-string/jumbo v2, "pattern"

    const-string/jumbo v3, "pin"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/StorageManagerService;->CRYPTO_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"  # Landroid/content/Context;

    .line 1602
    invoke-direct {p0}, Landroid/os/storage/IStorageManager$Stub;-><init>()V

    .line 316
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 328
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 331
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    .line 334
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 338
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 341
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 345
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 351
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 362
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    .line 364
    iput v0, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    .line 367
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 475
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 476
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 477
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 503
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 506
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 509
    new-instance v3, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-direct {v3, p0, v1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    .line 723
    new-instance v3, Lcom/android/server/StorageManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/StorageManagerService$1;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 758
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mPendingAutoInstall:Z

    .line 759
    new-instance v0, Lcom/android/server/StorageManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$2;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1164
    new-instance v0, Lcom/android/server/StorageManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$5;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mListener:Landroid/os/IVoldListener;

    .line 3430
    new-instance v0, Lcom/android/server/StorageManagerService$13;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$13;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback$Stub;

    .line 1603
    sput-object p0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 1606
    nop

    .line 1607
    const-string/jumbo v0, "persist.sys.isolated_storage"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1606
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sys.isolated_storage_snapshot"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1610
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 1612
    new-instance v0, Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/StorageManagerService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 1613
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1615
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "StorageManagerService"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1616
    .local v0, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1617
    new-instance v2, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    .line 1620
    new-instance v2, Lcom/android/server/StorageManagerService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/StorageManagerService$ObbActionHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    .line 1623
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 1624
    .local v2, "dataDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "system"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1625
    .local v3, "systemDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "last-fstrim"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    .line 1626
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_11f

    .line 1630
    :try_start_f6
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_100} :catch_101

    goto :goto_11e

    .line 1631
    :catch_101
    move-exception v4

    .line 1632
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create fstrim record "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "StorageManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    .end local v4  # "e":Ljava/io/IOException;
    :goto_11e
    goto :goto_127

    .line 1635
    :cond_11f
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    .line 1638
    :goto_127
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    .line 1639
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "storage.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v6, "storage-settings"

    invoke-direct {v4, v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 1641
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1642
    :try_start_140
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->readSettingsLocked()V

    .line 1643
    monitor-exit v4
    :try_end_144
    .catchall {:try_start_140 .. :try_end_144} :catchall_195

    .line 1645
    const-class v4, Landroid/os/storage/StorageManagerInternal;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-static {v4, v5}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1647
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v5, v4

    .line 1648
    .local v5, "userFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1649
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1650
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v5, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1652
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1653
    :try_start_167
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V

    .line 1654
    monitor-exit v1
    :try_end_16b
    .catchall {:try_start_167 .. :try_end_16b} :catchall_192

    .line 1658
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 1662
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1663
    .local v1, "bootFilter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "meizu.intent.action.AUTO_INSTALL_SUCCESSFUL"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1664
    const-string/jumbo v4, "meizu.intent.action.HOME_LAUNCHED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1665
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1666
    const-string v4, "StorageManagerService"

    const-string v6, "RegisterReceiver_Broadcast_SUCCESSFUL !!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    return-void

    .line 1654
    .end local v1  # "bootFilter":Landroid/content/IntentFilter;
    :catchall_192
    move-exception v4

    :try_start_193
    monitor-exit v1
    :try_end_194
    .catchall {:try_start_193 .. :try_end_194} :catchall_192

    throw v4

    .line 1643
    .end local v5  # "userFilter":Landroid/content/IntentFilter;
    :catchall_195
    move-exception v1

    :try_start_196
    monitor-exit v4
    :try_end_197
    .catchall {:try_start_196 .. :try_end_197} :catchall_195

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->servicesReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->handleDaemonConnected()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/StorageManagerService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/server/StorageManagerService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # J

    .line 190
    iput-wide p1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/server/StorageManagerService;)Ljava/io/File;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/StorageManagerService;Landroid/os/IVold;)Landroid/os/IVold;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # Landroid/os/IVold;

    .line 190
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # Landroid/os/storage/VolumeInfo;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # Landroid/os/storage/VolumeInfo;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->mount(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # Landroid/os/storage/VolumeInfo;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->unmount(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/StorageManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->systemReady()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/StorageManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # I

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->completeUnlockUser(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->startAutoInstall()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshZramSettings()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshIsolatedStorageSettings()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->bootCompleted()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/StorageManagerService;Landroid/os/storage/DiskInfo;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # Landroid/os/storage/DiskInfo;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$Callbacks;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # Landroid/os/storage/VolumeInfo;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;II)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # Landroid/os/storage/VolumeInfo;
    .param p2, "x2"  # I
    .param p3, "x3"  # I

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V

    return-void
.end method

.method static synthetic access$3702(Lcom/android/server/StorageManagerService;Landroid/os/IStoraged;)Landroid/os/IStoraged;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # Landroid/os/IStoraged;

    .line 190
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connect()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # Landroid/os/IVoldTaskListener;
    .param p2, "x2"  # I
    .param p3, "x3"  # Landroid/os/PersistableBundle;

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->dispatchOnStatus(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # Landroid/os/IVoldTaskListener;
    .param p2, "x2"  # I
    .param p3, "x3"  # Landroid/os/PersistableBundle;

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->dispatchOnFinished(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/StorageManagerService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # I

    .line 190
    iput p1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->scrubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/StorageManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # I

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    return-void
.end method

.method static synthetic access$4700()Z
    .registers 1

    .line 190
    sget-boolean v0, Lcom/android/server/StorageManagerService;->ENABLE_ISOLATED_STORAGE:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/StorageManagerService;ILjava/lang/String;)I
    .registers 4
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->getMountMode(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/StorageManagerService;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->remountUidExternalStorage(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/StorageManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # I

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onUnlockUser(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/StorageManagerService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/StorageManagerService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # Lcom/android/server/StorageManagerService$ObbState;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/StorageManagerService;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # Lcom/android/server/StorageManagerService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->addObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/StorageManagerService;)Landroid/content/pm/IPackageManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/StorageManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;
    .param p1, "x1"  # I

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onCleanupUser(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/StorageManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/StorageManagerService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->handleSystemReady()V

    return-void
.end method

.method private addInternalVolumeLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 958
    new-instance v0, Landroid/os/storage/VolumeInfo;

    const/4 v1, 0x0

    const-string/jumbo v2, "private"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1, v1}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 960
    .local v0, "internal":Landroid/os/storage/VolumeInfo;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/storage/VolumeInfo;->state:I

    .line 961
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 962
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    return-void
.end method

.method private addObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 8
    .param p1, "obbState"  # Lcom/android/server/StorageManagerService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3440
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3441
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3443
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    if-nez v1, :cond_1a

    .line 3444
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 3445
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 3447
    :cond_1a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/StorageManagerService$ObbState;

    .line 3448
    .local v3, "o":Lcom/android/server/StorageManagerService$ObbState;
    iget-object v4, v3, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 3452
    .end local v3  # "o":Lcom/android/server/StorageManagerService$ObbState;
    goto :goto_1e

    .line 3449
    .restart local v3  # "o":Lcom/android/server/StorageManagerService$ObbState;
    :cond_35
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Attempt to add ObbState twice. This indicates an error in the StorageManagerService logic."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3455
    .end local v3  # "o":Lcom/android/server/StorageManagerService$ObbState;
    :cond_3d
    :goto_3d
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3457
    :try_start_40
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->link()V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_43} :catch_4c

    .line 3470
    nop

    .line 3472
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3473
    return-void

    .line 3458
    :catch_4c
    move-exception v2

    .line 3463
    .local v2, "e":Landroid/os/RemoteException;
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3464
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 3465
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3469
    :cond_5b
    throw v2
.end method

.method private adjustAllocateFlags(IILjava/lang/String;)I
    .registers 10
    .param p1, "flags"  # I
    .param p2, "callingUid"  # I
    .param p3, "callingPackage"  # Ljava/lang/String;

    .line 3329
    and-int/lit8 v0, p1, 0x1

    const-string v1, "StorageManagerService"

    if-eqz v0, :cond_d

    .line 3330
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ALLOCATE_AGGRESSIVE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3335
    :cond_d
    and-int/lit8 p1, p1, -0x3

    .line 3336
    and-int/lit8 p1, p1, -0x5

    .line 3341
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 3342
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3344
    .local v2, "token":J
    const/16 v4, 0x1a

    :try_start_21
    invoke-virtual {v0, v4, p2, p3}, Landroid/app/AppOpsManager;->isOperationActive(IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 3345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is actively using camera; letting them defy reserved cached data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_21 .. :try_end_40} :catchall_47

    .line 3347
    or-int/lit8 p1, p1, 0x4

    .line 3350
    :cond_42
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3351
    nop

    .line 3353
    return p1

    .line 3350
    :catchall_47
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private bootCompleted()V
    .registers 3

    .line 1769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 1770
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1771
    return-void
.end method

.method private completeUnlockUser(I)V
    .registers 10
    .param p1, "userId"  # I

    .line 1047
    if-nez p1, :cond_7

    .line 1048
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->migrateLegacyObbData()V

    .line 1053
    :cond_7
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1054
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_c
    :try_start_c
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4c

    .line 1055
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 1056
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 1057
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, v1}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 1058
    .local v4, "userVol":Landroid/os/storage/StorageVolume;
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1060
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v5

    invoke-static {v5}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v5

    .line 1061
    .local v5, "envState":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5, v5}, Lcom/android/server/StorageManagerService$Callbacks;->access$2700(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    .end local v3  # "vol":Landroid/os/storage/VolumeInfo;
    .end local v4  # "userVol":Landroid/os/storage/StorageVolume;
    .end local v5  # "envState":Ljava/lang/String;
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1064
    .end local v2  # "i":I
    :cond_4c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 1065
    monitor-exit v0

    .line 1066
    return-void

    .line 1065
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_c .. :try_end_58} :catchall_56

    throw v1
.end method

.method private connect()V
    .registers 6

    .line 1675
    const-string/jumbo v0, "storaged"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1676
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 1678
    :try_start_a
    new-instance v2, Lcom/android/server/StorageManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/StorageManagerService$6;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_13

    .line 1688
    goto :goto_15

    .line 1686
    :catch_13
    move-exception v2

    .line 1687
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 1691
    .end local v2  # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    const-string v2, "StorageManagerService"

    if-eqz v0, :cond_20

    .line 1692
    invoke-static {v0}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    goto :goto_26

    .line 1694
    :cond_20
    const-string/jumbo v3, "storaged not found; trying again"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    :goto_26
    const-string/jumbo v3, "vold"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1698
    if-eqz v0, :cond_3a

    .line 1700
    :try_start_2f
    new-instance v3, Lcom/android/server/StorageManagerService$7;

    invoke-direct {v3, p0}, Lcom/android/server/StorageManagerService$7;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-interface {v0, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_37} :catch_38

    .line 1710
    goto :goto_3a

    .line 1708
    :catch_38
    move-exception v1

    .line 1709
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 1713
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_3a
    :goto_3a
    if-eqz v0, :cond_55

    .line 1714
    invoke-static {v0}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 1716
    :try_start_42
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mListener:Landroid/os/IVoldListener;

    invoke-interface {v1, v3}, Landroid/os/IVold;->setListener(Landroid/os/IVoldListener;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_49} :catch_4a

    goto :goto_54

    .line 1717
    :catch_4a
    move-exception v1

    .line 1718
    .restart local v1  # "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 1719
    const-string/jumbo v3, "vold listener rejected; trying again"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1720
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_54
    goto :goto_5b

    .line 1722
    :cond_55
    const-string/jumbo v1, "vold not found; trying again"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :goto_5b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    if-nez v1, :cond_64

    goto :goto_68

    .line 1730
    :cond_64
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->onDaemonConnected()V

    goto :goto_76

    .line 1726
    :cond_68
    :goto_68
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/-$$Lambda$StorageManagerService$cjI7lxk7c1DOoxF4YyMUk3dhoPA;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$cjI7lxk7c1DOoxF4YyMUk3dhoPA;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1732
    :goto_76
    return-void
.end method

.method private copyLocaleFromMountService()V
    .registers 8

    .line 1141
    :try_start_0
    const-string v0, "SystemLocale"

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_65

    .line 1144
    .local v0, "systemLocale":Ljava/lang/String;
    nop

    .line 1145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1146
    return-void

    .line 1149
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got locale "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from mount service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "StorageManagerService"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 1151
    .local v1, "locale":Ljava/util/Locale;
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 1152
    .local v4, "config":Landroid/content/res/Configuration;
    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 1154
    :try_start_35
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_3d

    .line 1157
    goto :goto_43

    .line 1155
    :catch_3d
    move-exception v5

    .line 1156
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "Error setting system locale from mount service"

    invoke-static {v3, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1160
    .end local v5  # "e":Landroid/os/RemoteException;
    :goto_43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting system properties to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "persist.sys.locale"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    return-void

    .line 1142
    .end local v0  # "systemLocale":Ljava/lang/String;
    .end local v1  # "locale":Ljava/util/Locale;
    .end local v4  # "config":Landroid/content/res/Configuration;
    :catch_65
    move-exception v0

    .line 1143
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method private dispatchOnFinished(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "listener"  # Landroid/os/IVoldTaskListener;
    .param p2, "status"  # I
    .param p3, "extras"  # Landroid/os/PersistableBundle;

    .line 3749
    if-eqz p1, :cond_7

    .line 3751
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/os/IVoldTaskListener;->onFinished(ILandroid/os/PersistableBundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 3753
    goto :goto_7

    .line 3752
    :catch_6
    move-exception v0

    .line 3755
    :cond_7
    :goto_7
    return-void
.end method

.method private dispatchOnStatus(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "listener"  # Landroid/os/IVoldTaskListener;
    .param p2, "status"  # I
    .param p3, "extras"  # Landroid/os/PersistableBundle;

    .line 3739
    if-eqz p1, :cond_7

    .line 3741
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/os/IVoldTaskListener;->onStatus(ILandroid/os/PersistableBundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 3743
    goto :goto_7

    .line 3742
    :catch_6
    move-exception v0

    .line 3745
    :cond_7
    :goto_7
    return-void
.end method

.method private encodeBytes([B)Ljava/lang/String;
    .registers 3
    .param p1, "bytes"  # [B

    .line 2875
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2876
    const-string v0, "!"

    return-object v0

    .line 2878
    :cond_9
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private enforceAdminUser()V
    .registers 8

    .line 1583
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1584
    .local v0, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1586
    .local v1, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1588
    .local v2, "token":J
    :try_start_13
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v4
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_2a

    .line 1590
    .local v4, "isAdmin":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1591
    nop

    .line 1592
    if-eqz v4, :cond_22

    .line 1595
    return-void

    .line 1593
    :cond_22
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Only admin users can adopt sd cards"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1590
    .end local v4  # "isAdmin":Z
    :catchall_2a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .registers 3
    .param p1, "perm"  # Ljava/lang/String;

    .line 1556
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    return-void
.end method

.method private findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
    .registers 6
    .param p1, "diskId"  # Ljava/lang/String;

    .line 453
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 455
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    if-nez v1, :cond_19

    .line 456
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v1, v2

    .line 457
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    :cond_19
    monitor-exit v0

    return-object v1

    .line 460
    .end local v1  # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .registers 7
    .param p1, "path"  # Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 395
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 396
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_2c

    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 397
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    monitor-exit v0

    return-object v3

    .line 394
    .end local v2  # "vol":Landroid/os/storage/VolumeInfo;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 400
    .end local v1  # "i":I
    :cond_2f
    monitor-exit v0

    .line 401
    const/4 v0, 0x0

    return-object v0

    .line 400
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 4
    .param p1, "volumeUuid"  # Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 419
    .local v0, "storage":Landroid/os/storage/StorageManager;
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 420
    const-string v1, "emulated"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1

    .line 421
    :cond_19
    const-string/jumbo v1, "primary_physical"

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 422
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1

    .line 424
    :cond_27
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1
.end method

.method private findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 5
    .param p1, "id"  # Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 373
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_f

    .line 374
    monitor-exit v0

    return-object v1

    .line 376
    .end local v1  # "vol":Landroid/os/storage/VolumeInfo;
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_27

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No volume found for ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "path"  # Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 383
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 384
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_24

    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 385
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    monitor-exit v0

    return-object v3

    .line 382
    .end local v2  # "vol":Landroid/os/storage/VolumeInfo;
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 388
    .end local v1  # "i":I
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_3f

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No volume found for path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "partGuid"  # Ljava/lang/String;
    .param p2, "fsUuid"  # Ljava/lang/String;

    .line 2109
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 2112
    goto :goto_c

    .line 2110
    :catch_6
    move-exception v0

    .line 2111
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2113
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method private getDefaultPrimaryStorageUuid()Ljava/lang/String;
    .registers 3

    .line 1779
    const-string/jumbo v0, "ro.vold.primary_physical"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1780
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 1782
    :cond_e
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private static getLastAccessTime(Landroid/app/AppOpsManager;ILjava/lang/String;[I)J
    .registers 13
    .param p0, "manager"  # Landroid/app/AppOpsManager;
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "ops"  # [I

    .line 1750
    const-wide/16 v0, 0x0

    .line 1751
    .local v0, "maxTime":J
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v2

    .line 1752
    .local v2, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 1753
    .local v4, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 1754
    .local v6, "op":Landroid/app/AppOpsManager$OpEntry;
    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v7

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1756
    .end local v6  # "op":Landroid/app/AppOpsManager$OpEntry;
    goto :goto_26

    .line 1757
    .end local v4  # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_3d
    goto :goto_e

    .line 1758
    :cond_3e
    return-wide v0
.end method

.method private getMountMode(ILjava/lang/String;)I
    .registers 6
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 3758
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->getMountModeInternal(ILjava/lang/String;)I

    move-result v0

    .line 3759
    .local v0, "mode":I
    sget-boolean v1, Lcom/android/server/StorageManagerService;->LOCAL_LOGV:Z

    if-eqz v1, :cond_32

    .line 3760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolved mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3761
    invoke-static {p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3760
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3763
    :cond_32
    return v0
.end method

.method private getMountModeInternal(ILjava/lang/String;)I
    .registers 16
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 3769
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3770
    return v0

    .line 3773
    :cond_8
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 3774
    .local v1, "packagesForUid":[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3776
    return v0

    .line 3778
    :cond_15
    if-nez p2, :cond_1a

    .line 3779
    aget-object v2, v1, v0

    move-object p2, v2

    .line 3782
    :cond_1a
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3783
    return v0

    .line 3787
    :cond_27
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v8, 0x3b

    move v5, p1

    move-object v6, p2

    invoke-static/range {v2 .. v8}, Landroid/os/storage/StorageManager;->checkPermissionAndCheckOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    move v9, v2

    .line 3789
    .local v9, "hasRead":Z
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v8, 0x3c

    move v5, p1

    move-object v6, p2

    invoke-static/range {v2 .. v8}, Landroid/os/storage/StorageManager;->checkPermissionAndCheckOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 3794
    .local v2, "hasWrite":Z
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v4, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-interface {v3, v4, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_51

    move v3, v4

    goto :goto_52

    :cond_51
    move v3, v0

    .line 3796
    .local v3, "hasFull":Z
    :goto_52
    if-eqz v3, :cond_58

    if-eqz v2, :cond_58

    .line 3797
    const/4 v0, 0x6

    return v0

    .line 3802
    :cond_58
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v6, "android.permission.INSTALL_PACKAGES"

    invoke-interface {v5, v6, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_64

    move v5, v4

    goto :goto_65

    :cond_64
    move v5, v0

    .line 3804
    .local v5, "hasInstall":Z
    :goto_65
    const/4 v6, 0x0

    .line 3809
    .local v6, "hasInstallOp":Z
    array-length v7, v1

    move v8, v0

    :goto_68
    if-ge v8, v7, :cond_7b

    aget-object v10, v1, v8

    .line 3810
    .local v10, "uidPackageName":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v12, 0x42

    invoke-interface {v11, v12, p1, v10}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v11

    if-nez v11, :cond_78

    .line 3812
    const/4 v6, 0x1

    .line 3813
    goto :goto_7b

    .line 3809
    .end local v10  # "uidPackageName":Ljava/lang/String;
    :cond_78
    add-int/lit8 v8, v8, 0x1

    goto :goto_68

    .line 3816
    :cond_7b
    :goto_7b
    const/4 v7, 0x3

    if-nez v5, :cond_80

    if-eqz v6, :cond_83

    :cond_80
    if-eqz v2, :cond_83

    .line 3817
    return v7

    .line 3822
    :cond_83
    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v10, 0x57

    invoke-interface {v8, v10, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v8
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8b} :catch_9a

    if-nez v8, :cond_8e

    move v0, v4

    .line 3824
    .local v0, "hasLegacy":Z
    :cond_8e
    if-eqz v0, :cond_93

    if-eqz v2, :cond_93

    .line 3825
    return v7

    .line 3826
    :cond_93
    if-eqz v0, :cond_99

    if-eqz v9, :cond_99

    .line 3827
    const/4 v4, 0x2

    return v4

    .line 3829
    :cond_99
    return v4

    .line 3831
    .end local v0  # "hasLegacy":Z
    .end local v1  # "packagesForUid":[Ljava/lang/String;
    .end local v2  # "hasWrite":Z
    .end local v3  # "hasFull":Z
    .end local v5  # "hasInstall":Z
    .end local v6  # "hasInstallOp":Z
    .end local v9  # "hasRead":Z
    :catch_9a
    move-exception v1

    .line 3834
    return v0
.end method

.method private handleBootCompleted()V
    .registers 1

    .line 1774
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->initIfBootedAndConnected()V

    .line 1775
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    .line 1776
    return-void
.end method

.method private handleDaemonConnected()V
    .registers 3

    .line 1128
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->initIfBootedAndConnected()V

    .line 1129
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    .line 1133
    invoke-static {}, Landroid/sysprop/VoldProperties;->encrypt_progress()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1134
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->copyLocaleFromMountService()V

    .line 1136
    :cond_19
    return-void
.end method

.method private handleSystemReady()V
    .registers 7

    .line 821
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    .line 824
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 825
    const-string/jumbo v1, "zram_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/StorageManagerService$3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/StorageManagerService$3;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Handler;)V

    .line 824
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 833
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshZramSettings()V

    .line 836
    const-string/jumbo v0, "persist.sys.zram_enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, "zramPropValue":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 838
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 840
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ZramWriteback;->scheduleZramWriteback(Landroid/content/Context;)V

    .line 843
    :cond_42
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 844
    const-string/jumbo v2, "isolated_storage_remote"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v5, Lcom/android/server/StorageManagerService$4;

    invoke-direct {v5, p0, v3}, Lcom/android/server/StorageManagerService$4;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Handler;)V

    .line 843
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 853
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 854
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/-$$Lambda$StorageManagerService$js3bHvdd2Mf8gztNxvL27JoT034;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$js3bHvdd2Mf8gztNxvL27JoT034;-><init>(Lcom/android/server/StorageManagerService;)V

    .line 853
    const-string/jumbo v3, "storage"

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 857
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshIsolatedStorageSettings()V

    .line 858
    return-void
.end method

.method private initIfBootedAndConnected()V
    .registers 11

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thinking about init, mBootCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDaemonConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_88

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    if-eqz v0, :cond_88

    .line 969
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-nez v0, :cond_88

    .line 973
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    move-result v0

    .line 974
    .local v0, "initLocked":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting up emulation state, initlocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 976
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 978
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_70

    .line 979
    :try_start_68
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v5, v6}, Landroid/os/IVold;->lockUserKey(I)V

    goto :goto_82

    .line 981
    :cond_70
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v9

    .line 982
    invoke-direct {p0, v8}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v8

    .line 981
    invoke-interface {v5, v6, v7, v9, v8}, Landroid/os/IVold;->unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_82} :catch_83

    .line 986
    :goto_82
    goto :goto_87

    .line 984
    :catch_83
    move-exception v5

    .line 985
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v1, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 987
    .end local v4  # "user":Landroid/content/pm/UserInfo;
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_87
    goto :goto_5a

    .line 989
    .end local v0  # "initLocked":Z
    .end local v2  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_88
    return-void
.end method

.method private isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z
    .registers 8
    .param p1, "vol"  # Landroid/os/storage/VolumeInfo;

    .line 1366
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_11

    if-eq v0, v4, :cond_11

    if-eq v0, v3, :cond_11

    if-eq v0, v2, :cond_11

    .line 1373
    return v1

    .line 1371
    :cond_11
    nop

    .line 1376
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-eqz v0, :cond_27

    const/16 v5, 0x8

    if-eq v0, v5, :cond_27

    if-eq v0, v3, :cond_27

    const/4 v3, 0x3

    if-eq v0, v3, :cond_27

    if-eq v0, v2, :cond_27

    const/4 v2, 0x6

    if-eq v0, v2, :cond_27

    .line 1385
    return v1

    .line 1383
    :cond_27
    nop

    .line 1388
    return v4
.end method

.method private isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    .registers 8
    .param p1, "vol"  # Landroid/os/storage/VolumeInfo;

    .line 1563
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1565
    .local v0, "userManager":Landroid/os/UserManager;
    const/4 v1, 0x0

    .line 1566
    .local v1, "isUsbRestricted":Z
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v2, :cond_23

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1567
    nop

    .line 1568
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1567
    const-string/jumbo v3, "no_usb_file_transfer"

    invoke-virtual {v0, v3, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    .line 1571
    :cond_23
    const/4 v2, 0x0

    .line 1572
    .local v2, "isTypeRestricted":Z
    iget v3, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v4, 0x1

    if-eqz v3, :cond_32

    iget v3, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-eq v3, v4, :cond_32

    iget v3, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_3e

    .line 1574
    :cond_32
    nop

    .line 1576
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 1575
    const-string/jumbo v5, "no_physical_media"

    invoke-virtual {v0, v5, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    .line 1579
    :cond_3e
    if-nez v1, :cond_44

    if-eqz v2, :cond_43

    goto :goto_44

    :cond_43
    const/4 v4, 0x0

    :cond_44
    :goto_44
    return v4
.end method

.method private isSystemUnlocked(I)Z
    .registers 4
    .param p1, "userId"  # I

    .line 2998
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2999
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3000
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "callerUid"  # I

    .line 2443
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_6

    .line 2444
    return v0

    .line 2447
    :cond_6
    const/4 v1, 0x0

    if-nez p1, :cond_a

    .line 2448
    return v1

    .line 2451
    :cond_a
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v3, 0x10000000

    .line 2452
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2451
    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    .line 2459
    .local v2, "packageUid":I
    if-ne p2, v2, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    return v0
.end method

.method private killMediaProvider(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 926
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez p1, :cond_3

    return-void

    .line 928
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 930
    .local v0, "token":J
    :try_start_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 932
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSystemOnly()Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_b

    .line 934
    :cond_1e
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-string/jumbo v5, "media"

    const/high16 v6, 0xc0000

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 938
    .local v4, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v4, :cond_46

    .line 939
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_4c

    .line 941
    .local v5, "am":Landroid/app/IActivityManager;
    :try_start_31
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 942
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/4 v8, -0x1

    const-string/jumbo v9, "vold reset"

    .line 941
    invoke-interface {v5, v6, v7, v8, v9}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_44} :catch_45
    .catchall {:try_start_31 .. :try_end_44} :catchall_4c

    .line 945
    goto :goto_47

    .line 946
    :catch_45
    move-exception v6

    .line 949
    .end local v3  # "user":Landroid/content/pm/UserInfo;
    .end local v4  # "provider":Landroid/content/pm/ProviderInfo;
    .end local v5  # "am":Landroid/app/IActivityManager;
    :cond_46
    goto :goto_b

    .line 951
    :cond_47
    :goto_47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 952
    nop

    .line 953
    return-void

    .line 951
    :catchall_4c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private maybeLogMediaMount(Landroid/os/storage/VolumeInfo;I)V
    .registers 10
    .param p1, "vol"  # Landroid/os/storage/VolumeInfo;
    .param p2, "newState"  # I

    .line 1504
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1505
    return-void

    .line 1508
    :cond_7
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 1509
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v0, :cond_4e

    iget v1, v0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v1, v1, 0xc

    if-nez v1, :cond_14

    goto :goto_4e

    .line 1514
    :cond_14
    iget-object v1, v0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, v0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_1f
    const-string v1, ""

    .line 1516
    .local v1, "label":Ljava/lang/String;
    :goto_21
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p2, v4, :cond_3f

    const/4 v5, 0x3

    if-ne p2, v5, :cond_2a

    goto :goto_3f

    .line 1519
    :cond_2a
    if-eqz p2, :cond_30

    const/16 v5, 0x8

    if-ne p2, v5, :cond_4d

    .line 1521
    :cond_30
    const v5, 0x3345e

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    aput-object v6, v4, v3

    aput-object v1, v4, v2

    invoke-static {v5, v4}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_4d

    .line 1518
    :cond_3f
    :goto_3f
    const v5, 0x3345d

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    aput-object v6, v4, v3

    aput-object v1, v4, v2

    invoke-static {v5, v4}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1523
    :cond_4d
    :goto_4d
    return-void

    .line 1510
    .end local v1  # "label":Ljava/lang/String;
    :cond_4e
    :goto_4e
    return-void
.end method

.method private mount(Landroid/os/storage/VolumeInfo;)V
    .registers 6
    .param p1, "vol"  # Landroid/os/storage/VolumeInfo;

    .line 1919
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iget v3, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IVold;->mount(Ljava/lang/String;II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1922
    goto :goto_12

    .line 1920
    :catch_c
    move-exception v0

    .line 1921
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1923
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method private onCleanupUser(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCleanupUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :try_start_17
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->onUserStopped(I)V

    .line 1073
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v0, p1}, Landroid/os/IStoraged;->onUserStopped(I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_22

    .line 1076
    goto :goto_28

    .line 1074
    :catch_22
    move-exception v0

    .line 1075
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1078
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_28
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1079
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 1080
    monitor-exit v0

    .line 1081
    return-void

    .line 1080
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_35

    throw v1
.end method

.method private onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V
    .registers 7
    .param p1, "disk"  # Landroid/os/storage/DiskInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1287
    const/4 v0, 0x0

    .line 1288
    .local v0, "volumeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 1289
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 1290
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1291
    add-int/lit8 v0, v0, 0x1

    .line 1288
    .end local v2  # "vol":Landroid/os/storage/VolumeInfo;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1295
    .end local v1  # "i":I
    :cond_23
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.os.storage.action.DISK_SCANNED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1296
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x5000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1298
    iget-object v2, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    const-string v3, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1299
    const-string v2, "android.os.storage.extra.VOLUME_COUNT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1300
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1302
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    .line 1303
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v2, :cond_54

    .line 1304
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1307
    :cond_54
    iput v0, p1, Landroid/os/storage/DiskInfo;->volumeCount:I

    .line 1308
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v3, p1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->access$3500(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;I)V

    .line 1309
    return-void
.end method

.method private onMoveStatusLocked(I)V
    .registers 7
    .param p1, "status"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1527
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    const-string v1, "StorageManagerService"

    if-nez v0, :cond_c

    .line 1528
    const-string v0, "Odd, status but no move requested"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    return-void

    .line 1534
    :cond_c
    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    :try_start_f
    invoke-interface {v0, v2, p1, v3, v4}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 1536
    goto :goto_14

    .line 1535
    :catch_13
    move-exception v0

    .line 1540
    :goto_14
    const/16 v0, 0x52

    const-string v2, "Move to "

    if-ne p1, v0, :cond_3a

    .line 1541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " copy phase finshed; persisting"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1544
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1547
    :cond_3a
    invoke-static {p1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " finished with status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 1551
    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 1553
    :cond_61
    return-void
.end method

.method private onUnlockUser(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUnlockUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :try_start_17
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->onUserStarted(I)V

    .line 1035
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v0, p1}, Landroid/os/IStoraged;->onUserStarted(I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_22

    .line 1038
    goto :goto_26

    .line 1036
    :catch_22
    move-exception v0

    .line 1037
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1040
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_26
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1041
    return-void
.end method

.method private onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V
    .registers 11
    .param p1, "vol"  # Landroid/os/storage/VolumeInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1313
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->isOnlyCoreApps()Z

    move-result v0

    const-string v1, "StorageManagerService"

    if-eqz v0, :cond_23

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System booted in core-only mode; ignoring volume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    return-void

    .line 1318
    :cond_23
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    const-string v2, "Found primary storage at "

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x5

    if-ne v0, v4, :cond_a6

    .line 1319
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1320
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v6

    .line 1322
    .local v6, "privateVol":Landroid/os/storage/VolumeInfo;
    sget-object v7, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    iget-object v7, v6, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 1323
    const-string/jumbo v8, "private"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 1324
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1326
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1327
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a4

    .line 1329
    :cond_75
    iget-object v7, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 1330
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1332
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1333
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1336
    .end local v0  # "storage":Landroid/os/storage/StorageManager;
    .end local v6  # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_a4
    :goto_a4
    goto/16 :goto_128

    :cond_a6
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v0, :cond_f4

    .line 1338
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    const-string/jumbo v6, "primary_physical"

    invoke-static {v6, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 1339
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1342
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v0, v4

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1347
    :cond_d9
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 1348
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v0, v4

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1351
    :cond_e6
    iget v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1352
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_128

    .line 1354
    :cond_f4
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v0, v3, :cond_102

    .line 1355
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_128

    .line 1357
    :cond_102
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v0, v5, :cond_114

    .line 1358
    iget v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1359
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_128

    .line 1361
    :cond_114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping automatic mounting of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :goto_128
    return-void
.end method

.method private onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V
    .registers 16
    .param p1, "vol"  # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"  # I
    .param p3, "newState"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1395
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 1396
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 1397
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    if-nez v0, :cond_3d

    .line 1398
    new-instance v1, Landroid/os/storage/VolumeRecord;

    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    .line 1399
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 1401
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    .line 1402
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1404
    :cond_35
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 1407
    :cond_3d
    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1408
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1412
    :cond_49
    :goto_49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    .line 1413
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1416
    .end local v0  # "rec":Landroid/os/storage/VolumeRecord;
    :cond_52
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->access$3600(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeInfo;II)V

    .line 1420
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-eqz v0, :cond_118

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 1421
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1422
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const-string v4, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1423
    const-string v3, "android.os.storage.extra.VOLUME_STATE"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1424
    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    const-string v4, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1425
    const/high16 v3, 0x5000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1427
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1429
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    if-nez v3, :cond_118

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v3

    if-eqz v3, :cond_118

    .line 1430
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_ab

    .line 1431
    const-string v1, "StorageManagerService"

    const-string/jumbo v2, "onVolumeStateChangedLocked, path invalid"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    return-void

    .line 1434
    :cond_ab
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1436
    .local v3, "volPath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v5

    const-string/jumbo v6, "root_path"

    if-eqz v5, :cond_104

    if-eq v5, v1, :cond_ef

    if-eq v5, v2, :cond_da

    const/16 v7, 0x8

    if-eq v5, v7, :cond_c5

    goto :goto_118

    .line 1459
    :cond_c5
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "action.external.volume.idle"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {v7, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1459
    invoke-virtual {v5, v4, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1461
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1462
    goto :goto_118

    .line 1445
    :cond_da
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "action.external.volume.unmounting"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1448
    invoke-virtual {v7, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1445
    invoke-virtual {v5, v4, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1449
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1450
    goto :goto_118

    .line 1438
    :cond_ef
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "action.external.volume.mounted"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1441
    invoke-virtual {v7, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1438
    invoke-virtual {v5, v4, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1442
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1443
    goto :goto_118

    .line 1452
    :cond_104
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "action.external.volume.removed"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1455
    invoke-virtual {v7, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1452
    invoke-virtual {v5, v4, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1456
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1471
    .end local v0  # "intent":Landroid/content/Intent;
    .end local v3  # "volPath":Ljava/lang/String;
    :cond_118
    :goto_118
    invoke-static {p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v0

    .line 1472
    .local v0, "oldStateEnv":Ljava/lang/String;
    invoke-static {p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v3

    .line 1474
    .local v3, "newStateEnv":Ljava/lang/String;
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_151

    .line 1478
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_12b
    if-ge v7, v5, :cond_151

    aget v8, v4, v7

    .line 1479
    .local v8, "userId":I
    invoke-virtual {p1, v8}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v9

    if-eqz v9, :cond_14e

    .line 1480
    iget-object v9, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v9, v8, v6}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v9

    .line 1481
    .local v9, "userVol":Landroid/os/storage/StorageVolume;
    iget-object v10, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x6

    invoke-virtual {v10, v11, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 1483
    iget-object v10, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0, v3}, Lcom/android/server/StorageManagerService$Callbacks;->access$2700(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    .end local v8  # "userId":I
    .end local v9  # "userVol":Landroid/os/storage/StorageVolume;
    :cond_14e
    add-int/lit8 v7, v7, 0x1

    goto :goto_12b

    .line 1489
    :cond_151
    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz v4, :cond_159

    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v4, v2, :cond_168

    :cond_159
    iget v4, p1, Landroid/os/storage/VolumeInfo;->state:I

    if-ne v4, v2, :cond_168

    .line 1497
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    iget-object v4, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1500
    :cond_168
    invoke-direct {p0, p1, p3}, Lcom/android/server/StorageManagerService;->maybeLogMediaMount(Landroid/os/storage/VolumeInfo;I)V

    .line 1501
    return-void
.end method

.method private readSettingsLocked()V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1788
    const-string v0, "Failed reading metadata"

    const-string v1, "StorageManagerService"

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 1789
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1791
    const/4 v2, 0x0

    .line 1793
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_10
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 1794
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 1795
    .local v3, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1798
    :cond_24
    :goto_24
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_78

    .line 1799
    const/4 v4, 0x2

    if-ne v5, v4, :cond_24

    .line 1800
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1801
    .local v7, "tag":Ljava/lang/String;
    const-string/jumbo v8, "volumes"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 1802
    const-string/jumbo v8, "version"

    invoke-static {v3, v8, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 1803
    .local v8, "version":I
    const-string/jumbo v9, "ro.vold.primary_physical"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1805
    .local v9, "primaryPhysical":Z
    const/4 v11, 0x3

    if-ge v8, v11, :cond_54

    if-lt v8, v4, :cond_53

    if-nez v9, :cond_53

    goto :goto_54

    :cond_53
    move v6, v10

    :cond_54
    :goto_54
    move v4, v6

    .line 1807
    .local v4, "validAttr":Z
    if-eqz v4, :cond_76

    .line 1808
    const-string/jumbo v6, "primaryStorageUuid"

    invoke-static {v3, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    goto :goto_76

    .line 1811
    .end local v4  # "validAttr":Z
    .end local v8  # "version":I
    .end local v9  # "primaryPhysical":Z
    :cond_61
    const-string/jumbo v4, "volume"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 1812
    invoke-static {v3}, Lcom/android/server/StorageManagerService;->readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;

    move-result-object v4

    .line 1813
    .local v4, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v8, v4, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v6, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_75} :catch_8b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_75} :catch_81
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_75} :catch_7b
    .catchall {:try_start_10 .. :try_end_75} :catchall_79

    goto :goto_77

    .line 1811
    .end local v4  # "rec":Landroid/os/storage/VolumeRecord;
    :cond_76
    :goto_76
    nop

    .line 1815
    .end local v7  # "tag":Ljava/lang/String;
    :goto_77
    goto :goto_24

    .line 1798
    .end local v3  # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5  # "type":I
    :cond_78
    goto :goto_8c

    .line 1824
    :catchall_79
    move-exception v0

    goto :goto_87

    .line 1821
    :catch_7b
    move-exception v3

    .line 1822
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_7c
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1824
    nop

    .end local v3  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_8d

    .line 1819
    :catch_81
    move-exception v3

    .line 1820
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_79

    .line 1824
    nop

    .end local v3  # "e":Ljava/io/IOException;
    goto :goto_8d

    :goto_87
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 1817
    :catch_8b
    move-exception v0

    .line 1824
    :goto_8c
    nop

    :goto_8d
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1825
    nop

    .line 1826
    return-void
.end method

.method public static readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;
    .registers 8
    .param p0, "in"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1857
    const-string/jumbo v0, "type"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 1858
    .local v0, "type":I
    const-string v1, "fsUuid"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1859
    .local v1, "fsUuid":Ljava/lang/String;
    new-instance v2, Landroid/os/storage/VolumeRecord;

    invoke-direct {v2, v0, v1}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 1860
    .local v2, "meta":Landroid/os/storage/VolumeRecord;
    const-string/jumbo v3, "partGuid"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1861
    const-string/jumbo v3, "nickname"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1862
    const-string/jumbo v3, "userFlags"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 1863
    const-wide/16 v3, 0x0

    const-string v5, "createdMillis"

    invoke-static {p0, v5, v3, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v2, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 1864
    const-string/jumbo v5, "lastSeenMillis"

    invoke-static {p0, v5, v3, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v2, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    .line 1865
    const-string/jumbo v5, "lastTrimMillis"

    invoke-static {p0, v5, v3, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v2, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 1866
    const-string/jumbo v5, "lastBenchMillis"

    invoke-static {p0, v5, v3, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 1867
    return-object v2
.end method

.method private refreshIsolatedStorageSettings()V
    .registers 6

    .line 891
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 893
    const-string/jumbo v1, "storage"

    const-string/jumbo v2, "isolated_storage_enabled"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 891
    const-string/jumbo v2, "isolated_storage_remote"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 895
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v3, "isolated_storage_local"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 897
    .local v0, "local":I
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 903
    .local v1, "remote":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2f

    .line 904
    const/4 v2, 0x0

    .local v2, "res":Z
    goto :goto_3d

    .line 905
    .end local v2  # "res":Z
    :cond_2f
    const/4 v3, 0x1

    if-ne v0, v3, :cond_34

    .line 906
    const/4 v2, 0x1

    .restart local v2  # "res":Z
    goto :goto_3d

    .line 907
    .end local v2  # "res":Z
    :cond_34
    if-ne v1, v2, :cond_38

    .line 908
    const/4 v2, 0x0

    .restart local v2  # "res":Z
    goto :goto_3d

    .line 909
    .end local v2  # "res":Z
    :cond_38
    if-ne v1, v3, :cond_3c

    .line 910
    const/4 v2, 0x1

    .restart local v2  # "res":Z
    goto :goto_3d

    .line 912
    .end local v2  # "res":Z
    :cond_3c
    const/4 v2, 0x1

    .line 915
    .restart local v2  # "res":Z
    :goto_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Isolated storage local flag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and remote flag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " resolved to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StorageManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "persist.sys.isolated_storage"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    return-void
.end method

.method private refreshZramSettings()V
    .registers 6

    .line 866
    const-string/jumbo v0, "persist.sys.zram_enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 867
    .local v1, "propertyValue":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 868
    return-void

    .line 873
    :cond_10
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 871
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const-string/jumbo v4, "zram_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "1"

    if-eqz v2, :cond_24

    .line 874
    move-object v2, v3

    goto :goto_26

    :cond_24
    const-string v2, "0"

    .line 875
    .local v2, "desiredPropertyValue":Ljava/lang/String;
    :goto_26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 879
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 882
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x111011d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 884
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ZramWriteback;->scheduleZramWriteback(Landroid/content/Context;)V

    .line 887
    :cond_49
    return-void
.end method

.method private remountUidExternalStorage(II)V
    .registers 5
    .param p1, "uid"  # I
    .param p2, "mode"  # I

    .line 2226
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->remountUid(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 2229
    goto :goto_c

    .line 2227
    :catch_6
    move-exception v0

    .line 2228
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2230
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method private removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 6
    .param p1, "obbState"  # Lcom/android/server/StorageManagerService$ObbState;

    .line 3476
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3477
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3478
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    if-eqz v1, :cond_22

    .line 3479
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3480
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->unlink()V

    .line 3482
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3483
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3487
    :cond_22
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3488
    return-void
.end method

.method private resetIfBootedAndConnected()V
    .registers 8

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thinking about reset, mBootCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDaemonConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_99

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    if-eqz v0, :cond_99

    .line 995
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 996
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->killMediaProvider(Ljava/util/List;)V

    .line 999
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1000
    :try_start_3e
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 1002
    .local v2, "systemUnlockedUsers":[I
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 1003
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 1005
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V

    .line 1006
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_3e .. :try_end_4e} :catchall_96

    .line 1009
    :try_start_4e
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v1}, Landroid/os/IVold;->reset()V

    .line 1012
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1013
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    iget v6, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v4, v5, v6}, Landroid/os/IVold;->onUserAdded(II)V

    .line 1014
    .end local v3  # "user":Landroid/content/pm/UserInfo;
    goto :goto_57

    .line 1015
    :cond_6d
    array-length v1, v2

    const/4 v3, 0x0

    :goto_6f
    if-ge v3, v1, :cond_80

    aget v4, v2, v3

    .line 1016
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v5, v4}, Landroid/os/IVold;->onUserStarted(I)V

    .line 1017
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v5, v4}, Landroid/os/IStoraged;->onUserStarted(I)V

    .line 1015
    .end local v4  # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 1019
    :cond_80
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-boolean v3, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    invoke-interface {v1, v3}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V

    .line 1020
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-virtual {v1, v3}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->onReset(Landroid/os/IVold;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_8e} :catch_8f

    .line 1023
    goto :goto_99

    .line 1021
    :catch_8f
    move-exception v1

    .line 1022
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "StorageManagerService"

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_99

    .line 1006
    .end local v1  # "e":Ljava/lang/Exception;
    .end local v2  # "systemUnlockedUsers":[I
    :catchall_96
    move-exception v2

    :try_start_97
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v2

    .line 1025
    .end local v0  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_99
    :goto_99
    return-void
.end method

.method private scrubPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "path"  # Ljava/lang/String;

    .line 405
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 406
    const-string/jumbo v0, "internal"

    return-object v0

    .line 408
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    .line 409
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v0, :cond_45

    iget-wide v1, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_21

    goto :goto_45

    .line 412
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 410
    :cond_45
    :goto_45
    const-string/jumbo v1, "unknown"

    return-object v1
.end method

.method private servicesReady()V
    .registers 5

    .line 1735
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1737
    nop

    .line 1738
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1737
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1739
    nop

    .line 1740
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1739
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 1742
    :try_start_25
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v1, 0x42

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback$Stub;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 1743
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v1, 0x57

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback$Stub;

    invoke-interface {v0, v1, v3, v2}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_38} :catch_39

    .line 1745
    goto :goto_3a

    .line 1744
    :catch_39
    move-exception v0

    .line 1746
    :goto_3a
    return-void
.end method

.method private shouldBenchmark()Z
    .registers 13

    .line 429
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "storage_benchmark_interval"

    const-wide/32 v2, 0x240c8400

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 431
    .local v0, "benchInterval":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_18

    .line 432
    return v3

    .line 433
    :cond_18
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    const/4 v4, 0x1

    if-nez v2, :cond_20

    .line 434
    return v4

    .line 437
    :cond_20
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 438
    move v5, v3

    .local v5, "i":I
    :goto_24
    :try_start_24
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_56

    .line 439
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 440
    .local v6, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v8, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/VolumeRecord;

    .line 441
    .local v7, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v8

    if-eqz v8, :cond_53

    if-eqz v7, :cond_53

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v7, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    sub-long/2addr v8, v10

    .line 443
    .local v8, "benchAge":J
    cmp-long v10, v8, v0

    if-ltz v10, :cond_53

    .line 444
    monitor-exit v2

    return v4

    .line 438
    .end local v6  # "vol":Landroid/os/storage/VolumeInfo;
    .end local v7  # "rec":Landroid/os/storage/VolumeRecord;
    .end local v8  # "benchAge":J
    :cond_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 448
    .end local v5  # "i":I
    :cond_56
    monitor-exit v2

    return v3

    .line 449
    :catchall_58
    move-exception v3

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_24 .. :try_end_5a} :catchall_58

    throw v3
.end method

.method private start()V
    .registers 1

    .line 1671
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connect()V

    .line 1672
    return-void
.end method

.method private startAutoInstall()V
    .registers 4

    .line 785
    sget-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    .line 786
    return-void

    .line 788
    :cond_9
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app/autoVerify/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 789
    .local v0, "verifyDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_30

    .line 790
    const-string v1, "StorageManagerService"

    const-string/jumbo v2, "sendBroadcast: meizu.intent.action.AUTO_INSTALL_START"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "meizu.intent.action.AUTO_INSTALL_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 792
    .local v1, "autoInstallStart":Landroid/content/Intent;
    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 793
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 795
    .end local v1  # "autoInstallStart":Landroid/content/Intent;
    :cond_30
    return-void
.end method

.method private supportsBlockCheckpoint()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1084
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->supportsBlockCheckpoint()Z

    move-result v0

    return v0
.end method

.method private systemReady()V
    .registers 3

    .line 1762
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1763
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 1765
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1766
    return-void
.end method

.method private unmount(Landroid/os/storage/VolumeInfo;)V
    .registers 4
    .param p1, "vol"  # Landroid/os/storage/VolumeInfo;

    .line 1935
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 1938
    goto :goto_e

    .line 1936
    :catch_8
    move-exception v0

    .line 1937
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1939
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    .registers 13
    .param p1, "latch"  # Ljava/util/concurrent/CountDownLatch;
    .param p2, "condition"  # Ljava/lang/String;
    .param p3, "timeoutMillis"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 800
    const-string v0, "Thread "

    const-string v1, "StorageManagerService"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 803
    .local v2, "startMillis":J
    :goto_8
    const-wide/16 v4, 0x1388

    :try_start_a
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 804
    return-void

    .line 806
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " still waiting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_3a} :catch_3b

    .line 811
    goto :goto_50

    .line 809
    :catch_3b
    move-exception v4

    .line 810
    .local v4, "e":Ljava/lang/InterruptedException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interrupt while waiting for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    .end local v4  # "e":Ljava/lang/InterruptedException;
    :goto_50
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-lez v4, :cond_94

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v6, v2, p3

    cmp-long v4, v4, v6

    if-gtz v4, :cond_61

    goto :goto_94

    .line 813
    :cond_61
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " gave up waiting for "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " after "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 812
    :cond_94
    :goto_94
    goto/16 :goto_8
.end method

.method private warnOnNotMounted()V
    .registers 5

    .line 2429
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2430
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 2431
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 2432
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2434
    monitor-exit v0

    return-void

    .line 2430
    .end local v2  # "vol":Landroid/os/storage/VolumeInfo;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2437
    .end local v1  # "i":I
    :cond_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2e

    .line 2439
    const-string v0, "StorageManagerService"

    const-string v1, "No primary storage mounted!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    return-void

    .line 2437
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private writeSettingsLocked()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1830
    const-string/jumbo v0, "volumes"

    const/4 v1, 0x0

    .line 1832
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 1834
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1835
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1836
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1837
    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1838
    const-string/jumbo v3, "version"

    const/4 v5, 0x3

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1839
    const-string/jumbo v3, "primaryStorageUuid"

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1840
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1841
    .local v3, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3b
    if-ge v5, v3, :cond_4b

    .line 1842
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeRecord;

    .line 1843
    .local v6, "rec":Landroid/os/storage/VolumeRecord;
    invoke-static {v2, v6}, Lcom/android/server/StorageManagerService;->writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V

    .line 1841
    .end local v6  # "rec":Landroid/os/storage/VolumeRecord;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 1845
    .end local v5  # "i":I
    :cond_4b
    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1846
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1848
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_56} :catch_57

    .line 1853
    .end local v2  # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3  # "size":I
    goto :goto_5f

    .line 1849
    :catch_57
    move-exception v0

    .line 1850
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_5f

    .line 1851
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1854
    .end local v0  # "e":Ljava/io/IOException;
    :cond_5f
    :goto_5f
    return-void
.end method

.method public static writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V
    .registers 7
    .param p0, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "rec"  # Landroid/os/storage/VolumeRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1871
    const-string/jumbo v0, "volume"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1872
    iget v2, p1, Landroid/os/storage/VolumeRecord;->type:I

    const-string/jumbo v3, "type"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1873
    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    const-string v3, "fsUuid"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1874
    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    const-string/jumbo v3, "partGuid"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1875
    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    const-string/jumbo v3, "nickname"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1876
    iget v2, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    const-string/jumbo v3, "userFlags"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1877
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-string v4, "createdMillis"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1878
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    const-string/jumbo v4, "lastSeenMillis"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1879
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    const-string/jumbo v4, "lastTrimMillis"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1880
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    const-string/jumbo v4, "lastBenchMillis"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1881
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1882
    return-void
.end method


# virtual methods
.method public abortChanges(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "message"  # Ljava/lang/String;
    .param p2, "retry"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2818
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    .line 2822
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    .line 2823
    return-void

    .line 2819
    :cond_e
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to commit checkpoint changes"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abortIdleMaint(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "callback"  # Ljava/lang/Runnable;

    .line 2199
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2202
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/StorageManagerService$11;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/os/IVold;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    .line 2216
    goto :goto_16

    .line 2214
    :catch_10
    move-exception v0

    .line 2215
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2217
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_16
    return-void
.end method

.method public abortIdleMaintenance()V
    .registers 2

    .line 2221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    .line 2222
    return-void
.end method

.method public addUserKeyAuth(II[B[B)V
    .registers 8
    .param p1, "userId"  # I
    .param p2, "serialNumber"  # I
    .param p3, "token"  # [B
    .param p4, "secret"  # [B

    .line 2891
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2895
    const/4 p3, 0x0

    .line 2896
    const/4 p4, 0x0

    .line 2898
    :try_start_7
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/os/IVold;->addUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_15

    .line 2901
    goto :goto_1b

    .line 2899
    :catch_15
    move-exception v0

    .line 2900
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2902
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public allocateBytes(Ljava/lang/String;JILjava/lang/String;)V
    .registers 14
    .param p1, "volumeUuid"  # Ljava/lang/String;
    .param p2, "bytes"  # J
    .param p4, "flags"  # I
    .param p5, "callingPackage"  # Ljava/lang/String;

    .line 3402
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p4, v0, p5}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result p4

    .line 3404
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/server/StorageManagerService;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    .line 3405
    .local v0, "allocatableBytes":J
    cmp-long v2, p2, v0

    if-gtz v2, :cond_48

    .line 3410
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 3411
    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3415
    .local v3, "token":J
    :try_start_1e
    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 3416
    .local v5, "path":Ljava/io/File;
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_2c

    .line 3417
    invoke-virtual {v2, v5}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr p2, v6

    goto :goto_31

    .line 3419
    :cond_2c
    invoke-virtual {v2, v5}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr p2, v6

    .line 3422
    :goto_31
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, p1, p2, p3, p4}, Landroid/content/pm/PackageManagerInternal;->freeStorage(Ljava/lang/String;JI)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_36} :catch_3d
    .catchall {:try_start_1e .. :try_end_36} :catchall_3b

    .line 3426
    .end local v5  # "path":Ljava/io/File;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3427
    nop

    .line 3428
    return-void

    .line 3426
    :catchall_3b
    move-exception v5

    goto :goto_44

    .line 3423
    :catch_3d
    move-exception v5

    .line 3424
    .local v5, "e":Ljava/io/IOException;
    :try_start_3e
    new-instance v6, Landroid/os/ParcelableException;

    invoke-direct {v6, v5}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .end local v0  # "allocatableBytes":J
    .end local v2  # "storage":Landroid/os/storage/StorageManager;
    .end local v3  # "token":J
    .end local p0  # "this":Lcom/android/server/StorageManagerService;
    .end local p1  # "volumeUuid":Ljava/lang/String;
    .end local p2  # "bytes":J
    .end local p4  # "flags":I
    .end local p5  # "callingPackage":Ljava/lang/String;
    throw v6
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_3b

    .line 3426
    .end local v5  # "e":Ljava/io/IOException;
    .restart local v0  # "allocatableBytes":J
    .restart local v2  # "storage":Landroid/os/storage/StorageManager;
    .restart local v3  # "token":J
    .restart local p0  # "this":Lcom/android/server/StorageManagerService;
    .restart local p1  # "volumeUuid":Ljava/lang/String;
    .restart local p2  # "bytes":J
    .restart local p4  # "flags":I
    .restart local p5  # "callingPackage":Ljava/lang/String;
    :goto_44
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 3406
    .end local v2  # "storage":Landroid/os/storage/StorageManager;
    .end local v3  # "token":J
    :cond_48
    new-instance v2, Landroid/os/ParcelableException;

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to allocate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " because only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " allocatable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    .registers 5
    .param p1, "volId"  # Ljava/lang/String;
    .param p2, "listener"  # Landroid/os/IVoldTaskListener;

    .line 1955
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1958
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$8;

    invoke-direct {v1, p0, p2}, Lcom/android/server/StorageManagerService$8;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V

    invoke-interface {v0, p1, v1}, Landroid/os/IVold;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_11

    .line 1989
    nop

    .line 1990
    return-void

    .line 1987
    :catch_11
    move-exception v0

    .line 1988
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public changeEncryptionPassword(ILjava/lang/String;)I
    .registers 10
    .param p1, "type"  # I
    .param p2, "password"  # Ljava/lang/String;

    .line 2606
    const-string v0, "StorageManagerService"

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v3, "no permission to access the crypt keeper"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_14

    .line 2611
    return v2

    .line 2614
    :cond_14
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1a

    .line 2615
    const-string p2, ""

    goto :goto_20

    .line 2616
    :cond_1a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 2624
    :goto_20
    nop

    .line 2625
    const-string/jumbo v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2624
    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 2626
    .local v1, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const-string v3, "default_password"

    .line 2628
    .local v3, "currentPassword":Ljava/lang/String;
    :try_start_2e
    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->getPassword()Ljava/lang/String;

    move-result-object v4
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_32} :catch_34

    move-object v3, v4

    .line 2631
    goto :goto_49

    .line 2629
    :catch_34
    move-exception v4

    .line 2630
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t get password"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    .end local v4  # "e":Ljava/lang/Exception;
    :goto_49
    :try_start_49
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v4, p1, v3, p2}, Landroid/os/IVold;->fdeChangePassword(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_69

    .line 2636
    :try_start_4e
    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->sanitizePassword()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_52

    .line 2639
    goto :goto_67

    .line 2637
    :catch_52
    move-exception v4

    .line 2638
    .restart local v4  # "e":Ljava/lang/Exception;
    :try_start_53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t sanitize password"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_67} :catch_69

    .line 2640
    .end local v4  # "e":Ljava/lang/Exception;
    :goto_67
    const/4 v0, 0x0

    return v0

    .line 2641
    :catch_69
    move-exception v4

    .line 2642
    .restart local v4  # "e":Ljava/lang/Exception;
    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2643
    return v2

    .line 2617
    .end local v1  # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v3  # "currentPassword":Ljava/lang/String;
    .end local v4  # "e":Ljava/lang/Exception;
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearPassword()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2840
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "only keyguard can clear password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2844
    :try_start_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeClearPassword()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    .line 2845
    return-void

    .line 2846
    :catch_10
    move-exception v0

    .line 2847
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2848
    return-void
.end method

.method public clearUserKeyAuth(II[B[B)V
    .registers 8
    .param p1, "userId"  # I
    .param p2, "serialNumber"  # I
    .param p3, "token"  # [B
    .param p4, "secret"  # [B

    .line 2913
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2917
    const/4 p3, 0x0

    .line 2918
    const/4 p4, 0x0

    .line 2920
    :try_start_7
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/os/IVold;->clearUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_15

    .line 2923
    goto :goto_1b

    .line 2921
    :catch_15
    move-exception v0

    .line 2922
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2924
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public commitChanges()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2796
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    .line 2800
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->commitChanges()V

    .line 2801
    return-void

    .line 2797
    :cond_e
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to commit checkpoint changes"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createUserKey(IIZ)V
    .registers 6
    .param p1, "userId"  # I
    .param p2, "serialNumber"  # I
    .param p3, "ephemeral"  # Z

    .line 2854
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2857
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IVold;->createUserKey(IIZ)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 2860
    goto :goto_11

    .line 2858
    :catch_b
    move-exception v0

    .line 2859
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2861
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .registers 7
    .param p1, "password"  # Ljava/lang/String;

    .line 2545
    const-string v0, "StorageManagerService"

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v3, "no permission to access the crypt keeper"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 2557
    :try_start_12
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v1, p1}, Landroid/os/IVold;->fdeCheckPassword(Ljava/lang/String;)V

    .line 2558
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/-$$Lambda$StorageManagerService$2rDVUdOXDdDWJMpN6OOM5W8W9RY;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$2rDVUdOXDdDWJMpN6OOM5W8W9RY;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_23
    .catch Landroid/os/ServiceSpecificException; {:try_start_12 .. :try_end_23} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25

    .line 2565
    const/4 v0, 0x0

    return v0

    .line 2569
    :catch_25
    move-exception v1

    .line 2570
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2571
    const/4 v0, -0x1

    return v0

    .line 2566
    .end local v1  # "e":Ljava/lang/Exception;
    :catch_2b
    move-exception v1

    .line 2567
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string v2, "fdeCheckPassword failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2568
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0

    .line 2549
    .end local v1  # "e":Landroid/os/ServiceSpecificException;
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroyUserKey(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 2865
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2868
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->destroyUserKey(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 2871
    goto :goto_11

    .line 2869
    :catch_b
    move-exception v0

    .line 2870
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2872
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public destroyUserStorage(Ljava/lang/String;II)V
    .registers 6
    .param p1, "volumeUuid"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "flags"  # I

    .line 3016
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3019
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IVold;->destroyUserStorage(Ljava/lang/String;II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 3022
    goto :goto_11

    .line 3020
    :catch_b
    move-exception v0

    .line 3021
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3023
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "writer"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 3950
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "StorageManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3952
    :cond_b
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 v1, 0xa0

    const-string v2, "  "

    invoke-direct {v0, p2, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3953
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3954
    :try_start_17
    const-string v2, "Disks:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3955
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3956
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_21
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_37

    .line 3957
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/DiskInfo;

    .line 3958
    .local v4, "disk":Landroid/os/storage/DiskInfo;
    invoke-virtual {v4, v0}, Landroid/os/storage/DiskInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3956
    .end local v4  # "disk":Landroid/os/storage/DiskInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 3960
    .end local v3  # "i":I
    :cond_37
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3962
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3963
    const-string v3, "Volumes:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3964
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3965
    move v3, v2

    .restart local v3  # "i":I
    :goto_46
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_68

    .line 3966
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 3967
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    const-string/jumbo v5, "private"

    iget-object v6, v4, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    goto :goto_65

    .line 3968
    :cond_62
    invoke-virtual {v4, v0}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3965
    .end local v4  # "vol":Landroid/os/storage/VolumeInfo;
    :goto_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 3970
    .end local v3  # "i":I
    :cond_68
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3972
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3973
    const-string v3, "Records:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3974
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3975
    move v3, v2

    .restart local v3  # "i":I
    :goto_77
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_8d

    .line 3976
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeRecord;

    .line 3977
    .local v4, "note":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v4, v0}, Landroid/os/storage/VolumeRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3975
    .end local v4  # "note":Landroid/os/storage/VolumeRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    .line 3979
    .end local v3  # "i":I
    :cond_8d
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3981
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3982
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Primary storage UUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3984
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3985
    invoke-static {}, Landroid/os/storage/StorageManager;->getPrimaryStoragePathAndSize()Landroid/util/Pair;

    move-result-object v3

    .line 3986
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v3, :cond_b8

    .line 3987
    const-string v4, "Internal storage total size: N/A"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e9

    .line 3989
    :cond_b8
    const-string v4, "Internal storage ("

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3990
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3991
    const-string v4, ") total size: "

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3992
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 3993
    const-string v4, " ("

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3994
    sget-object v4, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 3995
    const-string v4, " MiB)"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3998
    :goto_e9
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3999
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Local unlocked users: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4000
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System unlocked users: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4002
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 4003
    .local v4, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4004
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Isolated storage, local feature flag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "isolated_storage_local"

    .line 4005
    invoke-static {v4, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4004
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4006
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Isolated storage, remote feature flag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "isolated_storage_remote"

    .line 4007
    invoke-static {v4, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4006
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Isolated storage, resolved: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/storage/StorageManager;->hasIsolatedStorage()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4009
    .end local v3  # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v4  # "cr":Landroid/content/ContentResolver;
    monitor-exit v1
    :try_end_178
    .catchall {:try_start_17 .. :try_end_178} :catchall_22c

    .line 4011
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v2

    .line 4012
    :try_start_17b
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4013
    const-string/jumbo v1, "mObbMounts:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4014
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4015
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 4016
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4017
    .local v1, "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;>;>;"
    :goto_191
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d7

    .line 4018
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4019
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4020
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4021
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 4022
    .local v4, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1c2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/StorageManagerService$ObbState;

    .line 4023
    .local v6, "obbState":Lcom/android/server/StorageManagerService$ObbState;
    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4024
    .end local v6  # "obbState":Lcom/android/server/StorageManagerService$ObbState;
    goto :goto_1c2

    .line 4025
    :cond_1d2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4026
    nop

    .end local v3  # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;>;"
    .end local v4  # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    goto :goto_191

    .line 4027
    :cond_1d7
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4029
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4030
    const-string/jumbo v3, "mObbPathToStateMap:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4031
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4032
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4033
    .local v3, "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;>;"
    :goto_1f0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_212

    .line 4034
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4035
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4036
    const-string v5, " -> "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4037
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4038
    .end local v4  # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;"
    goto :goto_1f0

    .line 4039
    :cond_212
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4040
    nop

    .end local v1  # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;>;>;"
    .end local v3  # "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;>;"
    monitor-exit v2
    :try_end_217
    .catchall {:try_start_17b .. :try_end_217} :catchall_229

    .line 4042
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4043
    const-string v1, "Last maintenance: "

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4044
    iget-wide v1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4045
    return-void

    .line 4040
    :catchall_229
    move-exception v1

    :try_start_22a
    monitor-exit v2
    :try_end_22b
    .catchall {:try_start_22a .. :try_end_22b} :catchall_229

    throw v1

    .line 4009
    :catchall_22c
    move-exception v2

    :try_start_22d
    monitor-exit v1
    :try_end_22e
    .catchall {:try_start_22d .. :try_end_22e} :catchall_22c

    throw v2
.end method

.method public encryptStorage(ILjava/lang/String;)I
    .registers 6
    .param p1, "type"  # I
    .param p2, "password"  # Ljava/lang/String;

    .line 2577
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2580
    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    .line 2581
    const-string p2, ""

    goto :goto_16

    .line 2582
    :cond_10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 2591
    :goto_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IVold;->fdeEnable(ILjava/lang/String;I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_1e

    .line 2595
    nop

    .line 2597
    return v1

    .line 2592
    :catch_1e
    move-exception v0

    .line 2593
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2594
    const/4 v1, -0x1

    return v1

    .line 2583
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fixateNewestUserKeyAuth(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 2931
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2934
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->fixateNewestUserKeyAuth(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 2937
    goto :goto_11

    .line 2935
    :catch_b
    move-exception v0

    .line 2936
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2938
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public forgetAllVolumes()V
    .registers 7

    .line 2085
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2087
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2088
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 2089
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2090
    .local v2, "fsUuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    .line 2091
    .local v3, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v4, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 2092
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2094
    :cond_34
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v4, v2}, Lcom/android/server/StorageManagerService$Callbacks;->access$4500(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    .line 2088
    .end local v2  # "fsUuid":Ljava/lang/String;
    .end local v3  # "rec":Landroid/os/storage/VolumeRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2096
    .end local v1  # "i":I
    :cond_3c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2098
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 2099
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 2102
    :cond_51
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2103
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2104
    monitor-exit v0

    .line 2105
    return-void

    .line 2104
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_9 .. :try_end_63} :catchall_61

    throw v1
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .registers 6
    .param p1, "fsUuid"  # Ljava/lang/String;

    .line 2061
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2063
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2065
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2066
    :try_start_b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 2067
    .local v1, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v1, :cond_28

    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 2068
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2070
    :cond_28
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v2, p1}, Lcom/android/server/StorageManagerService$Callbacks;->access$4500(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    .line 2074
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 2075
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 2076
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2079
    :cond_46
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2080
    .end local v1  # "rec":Landroid/os/storage/VolumeRecord;
    monitor-exit v0

    .line 2081
    return-void

    .line 2080
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_b .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public format(Ljava/lang/String;)V
    .registers 6
    .param p1, "volId"  # Ljava/lang/String;

    .line 1943
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1945
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 1947
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const-string v3, "auto"

    invoke-interface {v1, v2, v3}, Landroid/os/IVold;->format(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_13

    .line 1950
    goto :goto_19

    .line 1948
    :catch_13
    move-exception v1

    .line 1949
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1951
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_19
    return-void
.end method

.method public fstrim(ILandroid/os/IVoldTaskListener;)V
    .registers 5
    .param p1, "flags"  # I
    .param p2, "listener"  # Landroid/os/IVoldTaskListener;

    .line 2117
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2124
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->supportsBlockCheckpoint()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1a

    .line 2157
    :cond_12
    const-string v0, "StorageManagerService"

    const-string v1, "Skipping fstrim - block based checkpoint in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 2125
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$9;

    invoke-direct {v1, p0, p2}, Lcom/android/server/StorageManagerService$9;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V

    invoke-interface {v0, p1, v1}, Landroid/os/IVold;->fstrim(ILandroid/os/IVoldTaskListener;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_24} :catch_26

    .line 2161
    :goto_24
    nop

    .line 2162
    return-void

    .line 2159
    :catch_26
    move-exception v0

    .line 2160
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J
    .registers 28
    .param p1, "volumeUuid"  # Ljava/lang/String;
    .param p2, "flags"  # I
    .param p3, "callingPackage"  # Ljava/lang/String;

    .line 3358
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v1, v3, v0, v4}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result v3

    .line 3360
    .end local p2  # "flags":I
    .local v3, "flags":I
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 3361
    .local v5, "storage":Landroid/os/storage/StorageManager;
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/usage/StorageStatsManager;

    .line 3362
    .local v6, "stats":Landroid/app/usage/StorageStatsManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 3368
    .local v7, "token":J
    :try_start_2a
    invoke-virtual {v5, v2}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3370
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v9

    .line 3371
    .local v9, "usable":J
    invoke-virtual {v5, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v11

    .line 3372
    .local v11, "lowReserved":J
    invoke-virtual {v5, v0}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v13

    .line 3374
    .local v13, "fullReserved":J
    invoke-virtual {v6, v2}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v15

    move-wide/from16 v16, v11

    .end local v11  # "lowReserved":J
    .local v16, "lowReserved":J
    const-wide/16 v11, 0x0

    if-eqz v15, :cond_72

    .line 3375
    invoke-virtual {v6, v2}, Landroid/app/usage/StorageStatsManager;->getCacheBytes(Ljava/lang/String;)J

    move-result-wide v18

    .line 3376
    .local v18, "cacheTotal":J
    invoke-virtual {v5, v0, v3}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    move-result-wide v20

    .line 3377
    .local v20, "cacheReserved":J
    move-object/from16 p2, v0

    .end local v0  # "path":Ljava/io/File;
    .local p2, "path":Ljava/io/File;
    sub-long v0, v18, v20

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_54} :catch_92
    .catchall {:try_start_2a .. :try_end_54} :catchall_8f

    .line 3379
    .local v0, "cacheClearable":J
    and-int/lit8 v15, v3, 0x1

    if-eqz v15, :cond_65

    .line 3380
    add-long v22, v9, v0

    move-object v15, v5

    .end local v5  # "storage":Landroid/os/storage/StorageManager;
    .local v15, "storage":Landroid/os/storage/StorageManager;
    sub-long v4, v22, v13

    :try_start_5d
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_61} :catch_8d
    .catchall {:try_start_5d .. :try_end_61} :catchall_9a

    .line 3396
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3380
    return-wide v4

    .line 3382
    .end local v15  # "storage":Landroid/os/storage/StorageManager;
    .restart local v5  # "storage":Landroid/os/storage/StorageManager;
    :cond_65
    move-object v15, v5

    .end local v5  # "storage":Landroid/os/storage/StorageManager;
    .restart local v15  # "storage":Landroid/os/storage/StorageManager;
    add-long v4, v9, v0

    sub-long v4, v4, v16

    :try_start_6a
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6e} :catch_8d
    .catchall {:try_start_6a .. :try_end_6e} :catchall_9a

    .line 3396
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3382
    return-wide v4

    .line 3387
    .end local v15  # "storage":Landroid/os/storage/StorageManager;
    .end local v18  # "cacheTotal":J
    .end local v20  # "cacheReserved":J
    .end local p2  # "path":Ljava/io/File;
    .local v0, "path":Ljava/io/File;
    .restart local v5  # "storage":Landroid/os/storage/StorageManager;
    :cond_72
    move-object/from16 p2, v0

    move-object v15, v5

    .end local v0  # "path":Ljava/io/File;
    .end local v5  # "storage":Landroid/os/storage/StorageManager;
    .restart local v15  # "storage":Landroid/os/storage/StorageManager;
    .restart local p2  # "path":Ljava/io/File;
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_83

    .line 3388
    sub-long v0, v9, v13

    :try_start_7b
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7f} :catch_8d
    .catchall {:try_start_7b .. :try_end_7f} :catchall_9a

    .line 3396
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3388
    return-wide v0

    .line 3390
    :cond_83
    sub-long v0, v9, v16

    :try_start_85
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_89} :catch_8d
    .catchall {:try_start_85 .. :try_end_89} :catchall_9a

    .line 3396
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3390
    return-wide v0

    .line 3393
    .end local v9  # "usable":J
    .end local v13  # "fullReserved":J
    .end local v16  # "lowReserved":J
    .end local p2  # "path":Ljava/io/File;
    :catch_8d
    move-exception v0

    goto :goto_94

    .line 3396
    .end local v15  # "storage":Landroid/os/storage/StorageManager;
    .restart local v5  # "storage":Landroid/os/storage/StorageManager;
    :catchall_8f
    move-exception v0

    move-object v15, v5

    .end local v5  # "storage":Landroid/os/storage/StorageManager;
    .restart local v15  # "storage":Landroid/os/storage/StorageManager;
    goto :goto_9b

    .line 3393
    .end local v15  # "storage":Landroid/os/storage/StorageManager;
    .restart local v5  # "storage":Landroid/os/storage/StorageManager;
    :catch_92
    move-exception v0

    move-object v15, v5

    .line 3394
    .end local v5  # "storage":Landroid/os/storage/StorageManager;
    .local v0, "e":Ljava/io/IOException;
    .restart local v15  # "storage":Landroid/os/storage/StorageManager;
    :goto_94
    :try_start_94
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .end local v3  # "flags":I
    .end local v6  # "stats":Landroid/app/usage/StorageStatsManager;
    .end local v7  # "token":J
    .end local v15  # "storage":Landroid/os/storage/StorageManager;
    .end local p0  # "this":Lcom/android/server/StorageManagerService;
    .end local p1  # "volumeUuid":Ljava/lang/String;
    .end local p3  # "callingPackage":Ljava/lang/String;
    throw v1
    :try_end_9a
    .catchall {:try_start_94 .. :try_end_9a} :catchall_9a

    .line 3396
    .end local v0  # "e":Ljava/io/IOException;
    .restart local v3  # "flags":I
    .restart local v6  # "stats":Landroid/app/usage/StorageStatsManager;
    .restart local v7  # "token":J
    .restart local v15  # "storage":Landroid/os/storage/StorageManager;
    .restart local p0  # "this":Lcom/android/server/StorageManagerService;
    .restart local p1  # "volumeUuid":Ljava/lang/String;
    .restart local p3  # "callingPackage":Ljava/lang/String;
    :catchall_9a
    move-exception v0

    :goto_9b
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getCacheQuotaBytes(Ljava/lang/String;I)J
    .registers 8
    .param p1, "volumeUuid"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 3299
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p2, v0, :cond_f

    .line 3300
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STORAGE_INTERNAL"

    const-string v2, "StorageManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3302
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3303
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    .line 3305
    .local v2, "stats":Landroid/app/usage/StorageStatsManager;
    :try_start_1d
    invoke-virtual {v2, p1, p2}, Landroid/app/usage/StorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v3
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_25

    .line 3307
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3305
    return-wide v3

    .line 3307
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getCacheSizeBytes(Ljava/lang/String;I)J
    .registers 7
    .param p1, "volumeUuid"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 3313
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p2, v0, :cond_f

    .line 3314
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STORAGE_INTERNAL"

    const-string v2, "StorageManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3316
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3318
    .local v0, "token":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    .line 3319
    invoke-virtual {v2, p1, p2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/lang/String;I)Landroid/app/usage/StorageStats;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v2
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_25} :catch_2b
    .catchall {:try_start_13 .. :try_end_25} :catchall_29

    .line 3323
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3318
    return-wide v2

    .line 3323
    :catchall_29
    move-exception v2

    goto :goto_32

    .line 3320
    :catch_2b
    move-exception v2

    .line 3321
    .local v2, "e":Ljava/io/IOException;
    :try_start_2c
    new-instance v3, Landroid/os/ParcelableException;

    invoke-direct {v3, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/StorageManagerService;
    .end local p1  # "volumeUuid":Ljava/lang/String;
    .end local p2  # "uid":I
    throw v3
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_29

    .line 3323
    .end local v2  # "e":Ljava/io/IOException;
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/StorageManagerService;
    .restart local p1  # "volumeUuid":Ljava/lang/String;
    .restart local p2  # "uid":I
    :goto_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDisks()[Landroid/os/storage/DiskInfo;
    .registers 5

    .line 3266
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3267
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/DiskInfo;

    .line 3268
    .local v1, "res":[Landroid/os/storage/DiskInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 3269
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/DiskInfo;

    aput-object v3, v1, v2

    .line 3268
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3271
    .end local v2  # "i":I
    :cond_21
    monitor-exit v0

    return-object v1

    .line 3272
    .end local v1  # "res":[Landroid/os/storage/DiskInfo;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public getEncryptionState()I
    .registers 4

    .line 2532
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    :try_start_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeComplete()I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 2537
    :catch_11
    move-exception v0

    .line 2538
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2539
    const/4 v1, -0x1

    return v1
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "field"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2725
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 2730
    return-object v1

    .line 2734
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->fdeGetField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_19

    return-object v0

    .line 2735
    :catch_19
    move-exception v0

    .line 2736
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2737
    return-object v1
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "rawPath"  # Ljava/lang/String;

    .line 2464
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2466
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 2469
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 2470
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 2471
    .local v1, "state":Lcom/android/server/StorageManagerService$ObbState;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_3e

    .line 2472
    if-nez v1, :cond_2f

    .line 2473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find OBB mounted at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StorageManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    const/4 v0, 0x0

    return-object v0

    .line 2477
    :cond_2f
    iget-object v0, v1, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2471
    .end local v1  # "state":Lcom/android/server/StorageManagerService$ObbState;
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public getPassword()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2827
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "only keyguard can retrieve password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    :try_start_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeGetPassword()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return-object v0

    .line 2832
    :catch_11
    move-exception v0

    .line 2833
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2834
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPasswordType()I
    .registers 4

    .line 2683
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2687
    :try_start_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeGetPasswordType()I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 2688
    :catch_11
    move-exception v0

    .line 2689
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2690
    const/4 v1, -0x1

    return v1
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .registers 3

    .line 2349
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2350
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2351
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    .registers 42
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "flags"  # I

    .line 3173
    move-object/from16 v1, p0

    move/from16 v2, p3

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3175
    .local v3, "userId":I
    and-int/lit16 v0, v2, 0x100

    const/4 v5, 0x0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    move v0, v5

    :goto_10
    move v6, v0

    .line 3176
    .local v6, "forWrite":Z
    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    move v0, v5

    :goto_18
    move v7, v0

    .line 3177
    .local v7, "realState":Z
    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    move v0, v5

    :goto_20
    move v8, v0

    .line 3182
    .local v8, "includeInvisible":Z
    invoke-direct {v1, v5}, Lcom/android/server/StorageManagerService;->isSystemUnlocked(I)Z

    move-result v9

    .line 3186
    .local v9, "systemUserUnlocked":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3188
    .local v10, "token":J
    :try_start_29
    invoke-virtual {v1, v3}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v0

    move v12, v0

    .line 3189
    .local v12, "userKeyUnlocked":Z
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_15f

    move/from16 v13, p1

    move-object/from16 v14, p2

    :try_start_34
    invoke-virtual {v0, v13, v14}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->hasExternalStorage(ILjava/lang/String;)Z

    move-result v0
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_15d

    move v15, v0

    .line 3191
    .local v15, "storagePermission":Z
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3192
    nop

    .line 3194
    const/4 v0, 0x0

    .line 3196
    .local v0, "foundPrimary":Z
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v16

    .line 3197
    .local v17, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v4, v1, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3198
    move/from16 v18, v5

    move/from16 v37, v18

    move/from16 v18, v0

    move/from16 v0, v37

    .local v0, "i":I
    .local v18, "foundPrimary":Z
    :goto_50
    :try_start_50
    iget-object v5, v1, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v0, v5, :cond_ea

    .line 3199
    iget-object v5, v1, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 3200
    .local v5, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2
    :try_end_64
    .catchall {:try_start_50 .. :try_end_64} :catchall_154

    const/4 v13, 0x2

    if-eqz v2, :cond_72

    if-eq v2, v13, :cond_72

    const/4 v13, 0x5

    if-eq v2, v13, :cond_72

    .line 3206
    move/from16 v21, v6

    move-object/from16 v6, v17

    goto/16 :goto_d9

    .line 3204
    :cond_72
    nop

    .line 3209
    const/4 v2, 0x0

    .line 3210
    .local v2, "match":Z
    if-eqz v6, :cond_83

    .line 3211
    :try_start_76
    invoke-virtual {v5, v3}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v13
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_7c

    move v2, v13

    goto :goto_96

    .line 3236
    .end local v0  # "i":I
    .end local v2  # "match":Z
    .end local v5  # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_7c
    move-exception v0

    move/from16 v21, v6

    move-object/from16 v6, v17

    goto/16 :goto_159

    .line 3213
    .restart local v0  # "i":I
    .restart local v2  # "match":Z
    .restart local v5  # "vol":Landroid/os/storage/VolumeInfo;
    :cond_83
    :try_start_83
    invoke-virtual {v5, v3}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v13
    :try_end_87
    .catchall {:try_start_83 .. :try_end_87} :catchall_154

    if-nez v13, :cond_94

    if-eqz v8, :cond_92

    .line 3214
    :try_start_8b
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v13
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_7c

    if-eqz v13, :cond_92

    goto :goto_94

    :cond_92
    const/4 v13, 0x0

    goto :goto_95

    :cond_94
    :goto_94
    const/4 v13, 0x1

    :goto_95
    move v2, v13

    .line 3216
    :goto_96
    if-nez v2, :cond_9d

    move/from16 v21, v6

    move-object/from16 v6, v17

    goto :goto_d9

    .line 3218
    :cond_9d
    const/4 v13, 0x0

    .line 3219
    .local v13, "reportUnmounted":Z
    if-nez v9, :cond_a6

    .line 3220
    const/4 v13, 0x1

    move/from16 v20, v2

    move/from16 v21, v6

    goto :goto_ba

    .line 3221
    :cond_a6
    move/from16 v20, v2

    .end local v2  # "match":Z
    .local v20, "match":Z
    :try_start_a8
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_154

    move/from16 v21, v6

    const/4 v6, 0x2

    .end local v6  # "forWrite":Z
    .local v21, "forWrite":Z
    if-ne v2, v6, :cond_b5

    if-nez v12, :cond_b5

    .line 3222
    const/4 v13, 0x1

    goto :goto_ba

    .line 3223
    :cond_b5
    if-nez v15, :cond_ba

    if-nez v7, :cond_ba

    .line 3224
    const/4 v13, 0x1

    .line 3227
    :cond_ba
    :goto_ba
    :try_start_ba
    iget-object v2, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2, v3, v13}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 3229
    .local v2, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v6
    :try_end_c4
    .catchall {:try_start_ba .. :try_end_c4} :catchall_e6

    if-eqz v6, :cond_d2

    .line 3230
    move-object/from16 v6, v17

    move-object/from16 v17, v5

    const/4 v5, 0x0

    .end local v5  # "vol":Landroid/os/storage/VolumeInfo;
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .local v17, "vol":Landroid/os/storage/VolumeInfo;
    :try_start_cb
    invoke-virtual {v6, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3231
    const/4 v5, 0x1

    move/from16 v18, v5

    .end local v18  # "foundPrimary":Z
    .local v5, "foundPrimary":Z
    goto :goto_d9

    .line 3233
    .end local v6  # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .local v5, "vol":Landroid/os/storage/VolumeInfo;
    .local v17, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v18  # "foundPrimary":Z
    :cond_d2
    move-object/from16 v6, v17

    move-object/from16 v17, v5

    .end local v5  # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v6  # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .local v17, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3198
    .end local v2  # "userVol":Landroid/os/storage/StorageVolume;
    .end local v13  # "reportUnmounted":Z
    .end local v17  # "vol":Landroid/os/storage/VolumeInfo;
    .end local v20  # "match":Z
    :goto_d9
    add-int/lit8 v0, v0, 0x1

    move/from16 v13, p1

    move/from16 v2, p3

    move-object/from16 v17, v6

    move/from16 v6, v21

    const/4 v5, 0x0

    goto/16 :goto_50

    .line 3236
    .end local v0  # "i":I
    .end local v6  # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .local v17, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    :catchall_e6
    move-exception v0

    move-object/from16 v6, v17

    .end local v17  # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v6  # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    goto :goto_159

    .line 3198
    .end local v21  # "forWrite":Z
    .restart local v0  # "i":I
    .local v6, "forWrite":Z
    .restart local v17  # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    :cond_ea
    move/from16 v21, v6

    move-object/from16 v6, v17

    .line 3236
    .end local v0  # "i":I
    .end local v17  # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v21  # "forWrite":Z
    monitor-exit v4
    :try_end_ef
    .catchall {:try_start_cb .. :try_end_ef} :catchall_15b

    .line 3238
    if-nez v18, :cond_147

    .line 3239
    const-string v0, "StorageManagerService"

    const-string v2, "No primary storage defined yet; hacking together a stub"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    const-string/jumbo v0, "ro.vold.primary_physical"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3244
    .local v0, "primaryPhysical":Z
    const-string/jumbo v2, "stub_primary"

    .line 3245
    .local v2, "id":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 3246
    .local v4, "path":Ljava/io/File;
    iget-object v5, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const v13, 0x104000e

    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3247
    .local v5, "description":Ljava/lang/String;
    const/4 v13, 0x1

    .line 3248
    .local v13, "primary":Z
    move/from16 v28, v0

    .line 3249
    .local v28, "removable":Z
    xor-int/lit8 v29, v0, 0x1

    .line 3250
    .local v29, "emulated":Z
    const/16 v16, 0x0

    .line 3251
    .local v16, "allowMassStorage":Z
    const-wide/16 v19, 0x0

    .line 3252
    .local v19, "maxFileSize":J
    move/from16 v17, v0

    .end local v0  # "primaryPhysical":Z
    .local v17, "primaryPhysical":Z
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v33, v0

    .line 3253
    .local v33, "owner":Landroid/os/UserHandle;
    const/4 v0, 0x0

    .line 3254
    .local v0, "uuid":Ljava/lang/String;
    const-string/jumbo v36, "removed"

    .line 3256
    .local v36, "state":Ljava/lang/String;
    new-instance v1, Landroid/os/storage/StorageVolume;

    const/16 v27, 0x1

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const-string/jumbo v23, "stub_primary"

    const-string/jumbo v35, "removed"

    move-object/from16 v22, v1

    move-object/from16 v24, v4

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v34, v0

    invoke-direct/range {v22 .. v35}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZJLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v0

    const/4 v0, 0x0

    .end local v0  # "uuid":Ljava/lang/String;
    .local v22, "uuid":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3261
    .end local v2  # "id":Ljava/lang/String;
    .end local v4  # "path":Ljava/io/File;
    .end local v5  # "description":Ljava/lang/String;
    .end local v13  # "primary":Z
    .end local v16  # "allowMassStorage":Z
    .end local v17  # "primaryPhysical":Z
    .end local v19  # "maxFileSize":J
    .end local v22  # "uuid":Ljava/lang/String;
    .end local v28  # "removable":Z
    .end local v29  # "emulated":Z
    .end local v33  # "owner":Landroid/os/UserHandle;
    .end local v36  # "state":Ljava/lang/String;
    :cond_147
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/storage/StorageVolume;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/storage/StorageVolume;

    return-object v0

    .line 3236
    .end local v21  # "forWrite":Z
    .local v6, "forWrite":Z
    .local v17, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    :catchall_154
    move-exception v0

    move/from16 v21, v6

    move-object/from16 v6, v17

    .end local v17  # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v21  # "forWrite":Z
    :goto_159
    :try_start_159
    monitor-exit v4
    :try_end_15a
    .catchall {:try_start_159 .. :try_end_15a} :catchall_15b

    throw v0

    :catchall_15b
    move-exception v0

    goto :goto_159

    .line 3191
    .end local v12  # "userKeyUnlocked":Z
    .end local v15  # "storagePermission":Z
    .end local v18  # "foundPrimary":Z
    .end local v21  # "forWrite":Z
    .local v6, "forWrite":Z
    :catchall_15d
    move-exception v0

    goto :goto_162

    :catchall_15f
    move-exception v0

    move-object/from16 v14, p2

    :goto_162
    move/from16 v21, v6

    .end local v6  # "forWrite":Z
    .restart local v21  # "forWrite":Z
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;
    .registers 6
    .param p1, "flags"  # I

    .line 3288
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3289
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/VolumeRecord;

    .line 3290
    .local v1, "res":[Landroid/os/storage/VolumeRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 3291
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    aput-object v3, v1, v2

    .line 3290
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3293
    .end local v2  # "i":I
    :cond_21
    monitor-exit v0

    return-object v1

    .line 3294
    .end local v1  # "res":[Landroid/os/storage/VolumeRecord;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public getVolumes(I)[Landroid/os/storage/VolumeInfo;
    .registers 6
    .param p1, "flags"  # I

    .line 3277
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3278
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/VolumeInfo;

    .line 3279
    .local v1, "res":[Landroid/os/storage/VolumeInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 3280
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    aput-object v3, v1, v2

    .line 3279
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3282
    .end local v2  # "i":I
    :cond_21
    monitor-exit v0

    return-object v1

    .line 3283
    .end local v1  # "res":[Landroid/os/storage/VolumeInfo;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public isConvertibleToFBE()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2747
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2751
    :try_start_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->isConvertibleToFbe()Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 2752
    :catch_11
    move-exception v0

    .line 2753
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2754
    const/4 v1, 0x0

    return v1
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 4
    .param p1, "rawPath"  # Ljava/lang/String;

    .line 2482
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2483
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 2484
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2485
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public isUserKeyUnlocked(I)Z
    .registers 4
    .param p1, "userId"  # I

    .line 2992
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2993
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2994
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public synthetic lambda$connect$1$StorageManagerService()V
    .registers 1

    .line 1727
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connect()V

    .line 1728
    return-void
.end method

.method public synthetic lambda$decryptStorage$3$StorageManagerService()V
    .registers 3

    .line 2560
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeRestart()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 2563
    goto :goto_c

    .line 2561
    :catch_6
    move-exception v0

    .line 2562
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2564
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method public synthetic lambda$handleSystemReady$0$StorageManagerService(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2
    .param p1, "properties"  # Landroid/provider/DeviceConfig$Properties;

    .line 855
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshIsolatedStorageSettings()V

    .line 856
    return-void
.end method

.method public synthetic lambda$setDebugFlags$2$StorageManagerService()V
    .registers 3

    .line 2339
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 2340
    return-void
.end method

.method public lastMaintenance()J
    .registers 3

    .line 1119
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide v0
.end method

.method public lockUserKey(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 2976
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2979
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->lockUserKey(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_1b

    .line 2983
    nop

    .line 2985
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2986
    :try_start_e
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    .line 2987
    monitor-exit v0

    .line 2988
    return-void

    .line 2987
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v1

    .line 2980
    :catch_1b
    move-exception v0

    .line 2981
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2982
    return-void
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "callingPkg"  # Ljava/lang/String;
    .param p2, "appPath"  # Ljava/lang/String;

    .line 3122
    const-string v0, ": "

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3123
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3124
    .local v2, "userId":I
    new-instance v3, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v3, v2}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3125
    .local v3, "userEnv":Landroid/os/Environment$UserEnvironment;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sys.user."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".ce_available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3128
    .local v4, "propertyName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v5

    const-string v6, "Failed to prepare "

    if-eqz v5, :cond_f7

    .line 3133
    if-nez v2, :cond_4d

    const/4 v5, 0x0

    .line 3134
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_38

    goto :goto_4d

    .line 3135
    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3139
    :cond_4d
    :goto_4d
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v7, "appops"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    .line 3141
    .local v5, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {v5, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3143
    const/4 v7, 0x0

    .line 3145
    .local v7, "appFile":Ljava/io/File;
    :try_start_5b
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v8
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_64} :catch_d9

    move-object v7, v8

    .line 3148
    nop

    .line 3152
    invoke-virtual {v3, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_9c

    .line 3153
    invoke-virtual {v3, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_9c

    .line 3154
    invoke-virtual {v3, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_85

    goto :goto_9c

    .line 3168
    :cond_85
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid mkdirs path: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3155
    :cond_9c
    :goto_9c
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 3156
    const-string v8, "/"

    invoke-virtual {p2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b7

    .line 3157
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3161
    :cond_b7
    :try_start_b7
    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v8, p2}, Landroid/os/IVold;->mkdirs(Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_bc} :catch_bd

    .line 3162
    return-void

    .line 3163
    :catch_bd
    move-exception v8

    .line 3164
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 3146
    .end local v8  # "e":Ljava/lang/Exception;
    :catch_d9
    move-exception v6

    .line 3147
    .local v6, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to resolve "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3129
    .end local v5  # "appOps":Landroid/app/AppOpsManager;
    .end local v6  # "e":Ljava/io/IOException;
    .end local v7  # "appFile":Ljava/io/File;
    :cond_f7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public monitor()V
    .registers 3

    .line 4051
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->monitor()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 4054
    goto :goto_c

    .line 4052
    :catch_6
    move-exception v0

    .line 4053
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4055
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method public mount(Ljava/lang/String;)V
    .registers 6
    .param p1, "volId"  # Ljava/lang/String;

    .line 1908
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1910
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 1911
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1914
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->mount(Landroid/os/storage/VolumeInfo;)V

    .line 1915
    return-void

    .line 1912
    :cond_13
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mounting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " restricted by policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;ILandroid/content/res/ObbInfo;)V
    .registers 21
    .param p1, "rawPath"  # Ljava/lang/String;
    .param p2, "canonicalPath"  # Ljava/lang/String;
    .param p3, "key"  # Ljava/lang/String;
    .param p4, "token"  # Landroid/os/storage/IObbActionListener;
    .param p5, "nonce"  # I
    .param p6, "obbInfo"  # Landroid/content/res/ObbInfo;

    .line 2491
    const-string/jumbo v0, "rawPath cannot be null"

    move-object v9, p1

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2492
    const-string v0, "canonicalPath cannot be null"

    move-object/from16 v10, p2

    invoke-static {v10, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2493
    const-string/jumbo v0, "token cannot be null"

    move-object/from16 v11, p4

    invoke-static {v11, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2494
    const-string/jumbo v0, "obbIfno cannot be null"

    move-object/from16 v12, p6

    invoke-static {v12, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2496
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2497
    .local v0, "callingUid":I
    new-instance v13, Lcom/android/server/StorageManagerService$ObbState;

    const/4 v8, 0x0

    move-object v1, v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move v5, v0

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;ILjava/lang/String;)V

    move-object v3, v13

    .line 2499
    .local v3, "obbState":Lcom/android/server/StorageManagerService$ObbState;
    new-instance v7, Lcom/android/server/StorageManagerService$MountObbAction;

    move-object v1, v7

    move-object/from16 v4, p3

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/StorageManagerService$MountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Ljava/lang/String;ILandroid/content/res/ObbInfo;)V

    .line 2500
    .local v1, "action":Lcom/android/server/StorageManagerService$ObbAction;
    iget-object v4, v2, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2504
    return-void
.end method

.method public mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;
    .registers 9

    .line 3066
    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "mountProxyFileDescriptorBridge"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3070
    .local v0, "uid":I
    :goto_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3071
    const/4 v2, 0x0

    .line 3072
    .local v2, "newlyCreated":Z
    :try_start_10
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez v3, :cond_28

    .line 3073
    new-instance v3, Lcom/android/server/storage/AppFuseBridge;

    invoke-direct {v3}, Lcom/android/server/storage/AppFuseBridge;-><init>()V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 3074
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    const-string v5, "AppFuseBridge"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_58

    .line 3075
    const/4 v2, 0x1

    .line 3078
    :cond_28
    :try_start_28
    iget v3, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I
    :try_end_2e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_28 .. :try_end_2e} :catch_52
    .catchall {:try_start_28 .. :try_end_2e} :catchall_58

    .line 3080
    .local v3, "name":I
    :try_start_2e
    new-instance v4, Lcom/android/internal/os/AppFuseMount;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    new-instance v6, Lcom/android/server/StorageManagerService$AppFuseMountScope;

    invoke-direct {v6, p0, v0, v3}, Lcom/android/server/StorageManagerService$AppFuseMountScope;-><init>(Lcom/android/server/StorageManagerService;II)V

    .line 3081
    invoke-virtual {v5, v6}, Lcom/android/server/storage/AppFuseBridge;->addBridge(Lcom/android/server/storage/AppFuseBridge$MountScope;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/android/internal/os/AppFuseMount;-><init>(ILandroid/os/ParcelFileDescriptor;)V
    :try_end_3e
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_2e .. :try_end_3e} :catch_40
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2e .. :try_end_3e} :catch_52
    .catchall {:try_start_2e .. :try_end_3e} :catchall_58

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_58

    .line 3080
    return-object v4

    .line 3082
    :catch_40
    move-exception v4

    .line 3083
    .local v4, "e":Lcom/android/internal/os/FuseUnavailableMountException;
    const/4 v5, 0x0

    if-eqz v2, :cond_4d

    .line 3085
    :try_start_44
    const-string v6, "StorageManagerService"

    const-string v7, ""

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_44 .. :try_end_4b} :catch_52
    .catchall {:try_start_44 .. :try_end_4b} :catchall_58

    .line 3086
    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_58

    return-object v5

    .line 3089
    :cond_4d
    :try_start_4d
    iput-object v5, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;
    :try_end_4f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4d .. :try_end_4f} :catch_52
    .catchall {:try_start_4d .. :try_end_4f} :catchall_58

    .line 3093
    .end local v3  # "name":I
    .end local v4  # "e":Lcom/android/internal/os/FuseUnavailableMountException;
    nop

    .line 3094
    .end local v2  # "newlyCreated":Z
    :try_start_50
    monitor-exit v1

    goto :goto_c

    .line 3091
    .restart local v2  # "newlyCreated":Z
    :catch_52
    move-exception v3

    .line 3092
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    .end local v0  # "uid":I
    .end local p0  # "this":Lcom/android/server/StorageManagerService;
    throw v4

    .line 3094
    .end local v2  # "newlyCreated":Z
    .end local v3  # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0  # "uid":I
    .restart local p0  # "this":Lcom/android/server/StorageManagerService;
    :catchall_58
    move-exception v2

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_58

    throw v2
.end method

.method public needsCheckpoint()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2808
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2809
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->needsCheckpoint()Z

    move-result v0

    return v0
.end method

.method public onAwakeStateChanged(Z)V
    .registers 2
    .param p1, "isAwake"  # Z

    .line 1091
    return-void
.end method

.method public onDaemonConnected()V
    .registers 3

    .line 1123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 1124
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1125
    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 4
    .param p1, "isShowing"  # Z

    .line 1097
    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    .line 1098
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 1100
    :try_start_17
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    invoke-interface {v0, v1}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_1f

    .line 1103
    goto :goto_25

    .line 1101
    :catch_1f
    move-exception v0

    .line 1102
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1104
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_25
    return-void
.end method

.method public openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .param p1, "mountId"  # I
    .param p2, "fileId"  # I
    .param p3, "mode"  # I

    .line 3101
    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "mountProxyFileDescriptor"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    const/high16 v0, 0x30000000

    and-int/2addr p3, v0

    .line 3107
    const/4 v0, 0x0

    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_f
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_c .. :try_end_f} :catch_27
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_27

    .line 3108
    :try_start_f
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez v2, :cond_1c

    .line 3109
    const-string v2, "StorageManagerService"

    const-string v3, "FuseBridge has not been created"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    monitor-exit v1

    return-object v0

    .line 3112
    :cond_1c
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/storage/AppFuseBridge;->openFile(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 3113
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_24

    .end local p0  # "this":Lcom/android/server/StorageManagerService;
    .end local p1  # "mountId":I
    .end local p2  # "fileId":I
    .end local p3  # "mode":I
    :try_start_26
    throw v2
    :try_end_27
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_26 .. :try_end_27} :catch_27
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_27} :catch_27

    .line 3114
    .restart local p0  # "this":Lcom/android/server/StorageManagerService;
    .restart local p1  # "mountId":I
    .restart local p2  # "fileId":I
    .restart local p3  # "mode":I
    :catch_27
    move-exception v1

    .line 3115
    .local v1, "error":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    const-string v3, "The mount point has already been invalid"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3116
    return-object v0
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .registers 7
    .param p1, "diskId"  # Ljava/lang/String;
    .param p2, "ratio"  # I

    .line 2021
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2022
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 2024
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 2026
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x2

    invoke-interface {v1, p1, v2, p2}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 2027
    const-string/jumbo v1, "partitionMixed"

    const-wide/32 v2, 0x2bf20

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_1c

    .line 2030
    goto :goto_22

    .line 2028
    :catch_1c
    move-exception v1

    .line 2029
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2031
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_22
    return-void
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .registers 6
    .param p1, "diskId"  # Ljava/lang/String;

    .line 2007
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2008
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 2010
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 2012
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-interface {v1, p1, v2, v3}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 2013
    const-string/jumbo v1, "partitionPrivate"

    const-wide/32 v2, 0x2bf20

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_1d

    .line 2016
    goto :goto_23

    .line 2014
    :catch_1d
    move-exception v1

    .line 2015
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2017
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .registers 6
    .param p1, "diskId"  # Ljava/lang/String;

    .line 1994
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1996
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 1998
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {v1, p1, v2, v3}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 1999
    const-string/jumbo v1, "partitionPublic"

    const-wide/32 v2, 0x2bf20

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_1a

    .line 2002
    goto :goto_20

    .line 2000
    :catch_1a
    move-exception v1

    .line 2001
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2003
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_20
    return-void
.end method

.method public prepareUserStorage(Ljava/lang/String;III)V
    .registers 7
    .param p1, "volumeUuid"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "serialNumber"  # I
    .param p4, "flags"  # I

    .line 3005
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3008
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IVold;->prepareUserStorage(Ljava/lang/String;III)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 3011
    goto :goto_11

    .line 3009
    :catch_b
    move-exception v0

    .line 3010
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3012
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public registerListener(Landroid/os/storage/IStorageEventListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/os/storage/IStorageEventListener;

    .line 1890
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->register(Landroid/os/storage/IStorageEventListener;)V

    .line 1891
    return-void
.end method

.method runIdleMaint(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "callback"  # Ljava/lang/Runnable;

    .line 2165
    const-string v0, "StorageManagerService"

    const-string v1, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2172
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->supportsBlockCheckpoint()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_1a

    .line 2186
    :cond_14
    const-string v1, "Skipping idle maintenance - block based checkpoint in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 2173
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v2, Lcom/android/server/StorageManagerService$10;

    invoke-direct {v2, p0, p1}, Lcom/android/server/StorageManagerService$10;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Landroid/os/IVold;->runIdleMaint(Landroid/os/IVoldTaskListener;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_25

    .line 2190
    :goto_24
    goto :goto_29

    .line 2188
    :catch_25
    move-exception v1

    .line 2189
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2191
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_29
    return-void
.end method

.method public runIdleMaintenance()V
    .registers 2

    .line 2195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    .line 2196
    return-void
.end method

.method runIdleMaintenance(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "callback"  # Ljava/lang/Runnable;

    .line 1107
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1108
    return-void
.end method

.method public runMaintenance()V
    .registers 2

    .line 1113
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->runIdleMaintenance(Ljava/lang/Runnable;)V

    .line 1115
    return-void
.end method

.method public setDebugFlags(II)V
    .registers 10
    .param p1, "flags"  # I
    .param p2, "mask"  # I

    .line 2234
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2236
    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_55

    .line 2241
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 2245
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v0

    if-nez v0, :cond_45

    .line 2250
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2252
    .local v3, "token":J
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_23

    move v0, v2

    goto :goto_24

    :cond_23
    move v0, v1

    .line 2253
    .local v0, "emulateFbe":Z
    :goto_24
    :try_start_24
    const-string/jumbo v5, "persist.sys.emulate_fbe"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/PowerManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_24 .. :try_end_3c} :catchall_40

    .line 2258
    .end local v0  # "emulateFbe":Z
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2259
    goto :goto_55

    .line 2258
    :catchall_40
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2246
    .end local v3  # "token":J
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Emulation requires disabling \'Secure start-up\' in Settings > Security"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2242
    :cond_4d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Emulation not supported on device with native FBE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2262
    :cond_55
    :goto_55
    and-int/lit8 v0, p2, 0x3

    const/16 v3, 0xa

    if-eqz v0, :cond_87

    .line 2265
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_62

    .line 2266
    const-string v0, "force_on"

    .local v0, "value":Ljava/lang/String;
    goto :goto_6b

    .line 2267
    .end local v0  # "value":Ljava/lang/String;
    :cond_62
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_69

    .line 2268
    const-string v0, "force_off"

    .restart local v0  # "value":Ljava/lang/String;
    goto :goto_6b

    .line 2270
    .end local v0  # "value":Ljava/lang/String;
    :cond_69
    const-string v0, ""

    .line 2273
    .restart local v0  # "value":Ljava/lang/String;
    :goto_6b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2275
    .local v4, "token":J
    :try_start_6f
    const-string/jumbo v6, "persist.sys.adoptable"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_7e
    .catchall {:try_start_6f .. :try_end_7e} :catchall_82

    .line 2280
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2281
    goto :goto_87

    .line 2280
    :catchall_82
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 2284
    .end local v0  # "value":Ljava/lang/String;
    .end local v4  # "token":J
    :cond_87
    :goto_87
    and-int/lit8 v0, p2, 0x18

    if-eqz v0, :cond_b7

    .line 2287
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_92

    .line 2288
    const-string v0, "force_on"

    .restart local v0  # "value":Ljava/lang/String;
    goto :goto_9b

    .line 2289
    .end local v0  # "value":Ljava/lang/String;
    :cond_92
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_99

    .line 2290
    const-string v0, "force_off"

    .restart local v0  # "value":Ljava/lang/String;
    goto :goto_9b

    .line 2292
    .end local v0  # "value":Ljava/lang/String;
    :cond_99
    const-string v0, ""

    .line 2295
    .restart local v0  # "value":Ljava/lang/String;
    :goto_9b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2297
    .restart local v4  # "token":J
    :try_start_9f
    const-string/jumbo v6, "persist.sys.sdcardfs"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_ae
    .catchall {:try_start_9f .. :try_end_ae} :catchall_b2

    .line 2302
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2303
    goto :goto_b7

    .line 2302
    :catchall_b2
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 2306
    .end local v0  # "value":Ljava/lang/String;
    .end local v4  # "token":J
    :cond_b7
    :goto_b7
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_e1

    .line 2307
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_c0

    move v1, v2

    :cond_c0
    move v0, v1

    .line 2309
    .local v0, "enabled":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2311
    .local v1, "token":J
    :try_start_c5
    const-string/jumbo v4, "persist.sys.virtual_disk"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2314
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_d8
    .catchall {:try_start_c5 .. :try_end_d8} :catchall_dc

    .line 2316
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2317
    goto :goto_e1

    .line 2316
    :catchall_dc
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2320
    .end local v0  # "enabled":Z
    .end local v1  # "token":J
    :cond_e1
    :goto_e1
    and-int/lit16 v0, p2, 0xc0

    if-eqz v0, :cond_118

    .line 2323
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_eb

    .line 2324
    const/4 v0, 0x1

    .local v0, "value":I
    goto :goto_f2

    .line 2325
    .end local v0  # "value":I
    :cond_eb
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_f1

    .line 2326
    const/4 v0, -0x1

    .restart local v0  # "value":I
    goto :goto_f2

    .line 2328
    .end local v0  # "value":I
    :cond_f1
    const/4 v0, 0x0

    .line 2331
    .restart local v0  # "value":I
    :goto_f2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2333
    .restart local v1  # "token":J
    :try_start_f6
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "isolated_storage_local"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2335
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshIsolatedStorageSettings()V

    .line 2338
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/-$$Lambda$StorageManagerService$uqP0K_3jWGo_BEhUmSlAIUImjM4;

    invoke-direct {v4, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$uqP0K_3jWGo_BEhUmSlAIUImjM4;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_10f
    .catchall {:try_start_f6 .. :try_end_10f} :catchall_113

    .line 2342
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2343
    goto :goto_118

    .line 2342
    :catchall_113
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2345
    .end local v0  # "value":I
    .end local v1  # "token":J
    :cond_118
    :goto_118
    return-void
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "field"  # Ljava/lang/String;
    .param p2, "contents"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2701
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2706
    return-void

    .line 2710
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->fdeSetField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    .line 2711
    return-void

    .line 2712
    :catch_17
    move-exception v0

    .line 2713
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2714
    return-void
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .registers 11
    .param p1, "volumeUuid"  # Ljava/lang/String;
    .param p2, "callback"  # Landroid/content/pm/IPackageMoveObserver;

    .line 2356
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2361
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2362
    :try_start_8
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fd

    .line 2366
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-nez v1, :cond_f5

    .line 2369
    iput-object p2, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 2370
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 2373
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 2374
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 2375
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v4

    if-eqz v4, :cond_63

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 2376
    invoke-virtual {p0, v4}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v4

    if-nez v4, :cond_63

    .line 2377
    const-string v2, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failing move due to locked user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    const/16 v2, -0xa

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2379
    monitor-exit v0

    return-void

    .line 2381
    .end local v3  # "user":Landroid/content/pm/UserInfo;
    :cond_63
    goto :goto_2a

    .line 2385
    :cond_64
    const-string/jumbo v2, "primary_physical"

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d7

    const-string/jumbo v2, "primary_physical"

    .line 2386
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    goto :goto_d7

    .line 2394
    :cond_79
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 2395
    .local v2, "from":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 2397
    .local v3, "to":Landroid/os/storage/VolumeInfo;
    const/4 v4, -0x6

    if-nez v2, :cond_a3

    .line 2398
    const-string v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failing move due to missing from volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    invoke-direct {p0, v4}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2400
    monitor-exit v0

    return-void

    .line 2401
    :cond_a3
    if-nez v3, :cond_c0

    .line 2402
    const-string v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failing move due to missing to volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    invoke-direct {p0, v4}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2404
    monitor-exit v0

    return-void

    .line 2407
    .end local v1  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_c0
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_8 .. :try_end_c1} :catchall_114

    .line 2410
    :try_start_c1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v1, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget-object v4, v3, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    new-instance v5, Lcom/android/server/StorageManagerService$12;

    invoke-direct {v5, p0}, Lcom/android/server/StorageManagerService$12;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-interface {v0, v1, v4, v5}, Landroid/os/IVold;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_cf} :catch_d0

    .line 2425
    goto :goto_d6

    .line 2423
    :catch_d0
    move-exception v0

    .line 2424
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2426
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_d6
    return-void

    .line 2387
    .end local v2  # "from":Landroid/os/storage/VolumeInfo;
    .end local v3  # "to":Landroid/os/storage/VolumeInfo;
    .restart local v1  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_d7
    :goto_d7
    :try_start_d7
    const-string v2, "StorageManagerService"

    const-string v3, "Skipping move to/from primary physical"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2389
    const/16 v2, -0x64

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2390
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2391
    monitor-exit v0

    return-void

    .line 2367
    .end local v1  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_f5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Move already in progress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/StorageManagerService;
    .end local p1  # "volumeUuid":Ljava/lang/String;
    .end local p2  # "callback":Landroid/content/pm/IPackageMoveObserver;
    throw v1

    .line 2363
    .restart local p0  # "this":Lcom/android/server/StorageManagerService;
    .restart local p1  # "volumeUuid":Ljava/lang/String;
    .restart local p2  # "callback":Landroid/content/pm/IPackageMoveObserver;
    :cond_fd
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary storage already at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/StorageManagerService;
    .end local p1  # "volumeUuid":Ljava/lang/String;
    .end local p2  # "callback":Landroid/content/pm/IPackageMoveObserver;
    throw v1

    .line 2407
    .restart local p0  # "this":Lcom/android/server/StorageManagerService;
    .restart local p1  # "volumeUuid":Ljava/lang/String;
    .restart local p2  # "callback":Landroid/content/pm/IPackageMoveObserver;
    :catchall_114
    move-exception v1

    monitor-exit v0
    :try_end_116
    .catchall {:try_start_d7 .. :try_end_116} :catchall_114

    throw v1
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fsUuid"  # Ljava/lang/String;
    .param p2, "nickname"  # Ljava/lang/String;

    .line 2035
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2037
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2038
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2039
    :try_start_b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 2040
    .local v1, "rec":Landroid/os/storage/VolumeRecord;
    iput-object p2, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 2041
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService$Callbacks;->access$4400(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 2042
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2043
    .end local v1  # "rec":Landroid/os/storage/VolumeRecord;
    monitor-exit v0

    .line 2044
    return-void

    .line 2043
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public setVolumeUserFlags(Ljava/lang/String;II)V
    .registers 8
    .param p1, "fsUuid"  # Ljava/lang/String;
    .param p2, "flags"  # I
    .param p3, "mask"  # I

    .line 2048
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2050
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2052
    :try_start_b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 2053
    .local v1, "rec":Landroid/os/storage/VolumeRecord;
    iget v2, v1, Landroid/os/storage/VolumeRecord;->userFlags:I

    not-int v3, p3

    and-int/2addr v2, v3

    and-int v3, p2, p3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 2054
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService$Callbacks;->access$4400(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 2055
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2056
    .end local v1  # "rec":Landroid/os/storage/VolumeRecord;
    monitor-exit v0

    .line 2057
    return-void

    .line 2056
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_26

    throw v1
.end method

.method public shutdown(Landroid/os/storage/IStorageShutdownObserver;)V
    .registers 4
    .param p1, "observer"  # Landroid/os/storage/IStorageShutdownObserver;

    .line 1900
    const-string v0, "android.permission.SHUTDOWN"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1902
    const-string v0, "StorageManagerService"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1904
    return-void
.end method

.method public startCheckpoint(I)V
    .registers 4
    .param p1, "numTries"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2783
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    .line 2787
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->startCheckpoint(I)V

    .line 2788
    return-void

    .line 2784
    :cond_e
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to start filesystem checkpoint"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsCheckpoint()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2766
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_f

    .line 2770
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->supportsCheckpoint()Z

    move-result v0

    return v0

    .line 2767
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to check filesystem checkpoint support"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unlockUserKey(II[B[B)V
    .registers 8
    .param p1, "userId"  # I
    .param p2, "serialNumber"  # I
    .param p3, "token"  # [B
    .param p4, "secret"  # [B

    .line 2942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlockUserKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2945
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 2948
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 2950
    invoke-static {p1}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Secret required to unlock secure user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " --skip exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 2953
    :cond_52
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Secret required to unlock secure user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2958
    :cond_69
    :goto_69
    const/4 p3, 0x0

    .line 2959
    const/4 p4, 0x0

    .line 2961
    :try_start_6b
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    .line 2962
    invoke-direct {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    .line 2961
    invoke-interface {v0, p1, p2, v1, v2}, Landroid/os/IVold;->unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_78} :catch_79

    .line 2966
    goto :goto_80

    .line 2963
    :catch_79
    move-exception v0

    .line 2964
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2965
    return-void

    .line 2969
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_80
    :goto_80
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2970
    :try_start_83
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    .line 2971
    monitor-exit v0

    .line 2972
    return-void

    .line 2971
    :catchall_8d
    move-exception v1

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_83 .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method public unmount(Ljava/lang/String;)V
    .registers 3
    .param p1, "volId"  # Ljava/lang/String;

    .line 1927
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1929
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 1930
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->unmount(Landroid/os/storage/VolumeInfo;)V

    .line 1931
    return-void
.end method

.method public unmountExternalVolume(Ljava/lang/String;)I
    .registers 10
    .param p1, "diskId"  # Ljava/lang/String;

    .line 4161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 4162
    .local v1, "volumeInfos":[Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_4e

    if-nez p1, :cond_a

    goto :goto_4e

    .line 4166
    :cond_a
    array-length v2, v1

    move v3, v0

    :goto_c
    if-ge v3, v2, :cond_4d

    aget-object v4, v1, v3

    .line 4167
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4a

    .line 4168
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 4170
    :try_start_20
    iget-object v5, v4, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/StorageManagerService;->unmount(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_26

    .line 4173
    goto :goto_4a

    .line 4171
    :catch_26
    move-exception v5

    .line 4172
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unmountExternalVolume e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " vol = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "StorageManagerService"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4166
    .end local v4  # "vol":Landroid/os/storage/VolumeInfo;
    .end local v5  # "e":Ljava/lang/Exception;
    :cond_4a
    :goto_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 4176
    :cond_4d
    return v0

    .line 4164
    :cond_4e
    :goto_4e
    const/4 v0, -0x1

    return v0
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .registers 16
    .param p1, "rawPath"  # Ljava/lang/String;
    .param p2, "force"  # Z
    .param p3, "token"  # Landroid/os/storage/IObbActionListener;
    .param p4, "nonce"  # I

    .line 2508
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2511
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 2512
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 2513
    .local v1, "existingState":Lcom/android/server/StorageManagerService$ObbState;
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_4e

    .line 2515
    if-eqz v1, :cond_37

    .line 2517
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2518
    .local v0, "callingUid":I
    new-instance v10, Lcom/android/server/StorageManagerService$ObbState;

    iget-object v5, v1, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move v6, v0

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;ILjava/lang/String;)V

    .line 2520
    .local v2, "newState":Lcom/android/server/StorageManagerService$ObbState;
    new-instance v3, Lcom/android/server/StorageManagerService$UnmountObbAction;

    invoke-direct {v3, p0, v2, p2}, Lcom/android/server/StorageManagerService$UnmountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Z)V

    .line 2521
    .local v3, "action":Lcom/android/server/StorageManagerService$ObbAction;
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2525
    .end local v0  # "callingUid":I
    .end local v2  # "newState":Lcom/android/server/StorageManagerService$ObbState;
    .end local v3  # "action":Lcom/android/server/StorageManagerService$ObbAction;
    goto :goto_4d

    .line 2526
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown OBB mount at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StorageManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    :goto_4d
    return-void

    .line 2513
    .end local v1  # "existingState":Lcom/android/server/StorageManagerService$ObbState;
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public unregisterListener(Landroid/os/storage/IStorageEventListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/os/storage/IStorageEventListener;

    .line 1895
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->unregister(Landroid/os/storage/IStorageEventListener;)V

    .line 1896
    return-void
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .registers 5
    .param p1, "password"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2653
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "no permission to access the crypt keeper"

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_30

    .line 2657
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CRYPT_KEEPER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 2669
    :try_start_18
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->fdeVerifyPassword(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1f

    .line 2670
    const/4 v0, 0x0

    return v0

    .line 2671
    :catch_1f
    move-exception v0

    .line 2672
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2673
    const/4 v1, -0x1

    return v1

    .line 2661
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2654
    :cond_30
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
