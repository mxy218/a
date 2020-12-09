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

    .line 193
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 199
    invoke-static {}, Landroid/os/storage/StorageManager;->hasIsolatedStorage()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/StorageManagerService;->ENABLE_ISOLATED_STORAGE:Z

    .line 269
    const-string v0, "StorageManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/StorageManagerService;->LOCAL_LOGV:Z

    .line 295
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/StorageManagerService;->ALL_STORAGE_PERMISSIONS:[Ljava/lang/String;

    .line 456
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
    .registers 6

    .line 1502
    invoke-direct {p0}, Landroid/os/storage/IStorageManager$Stub;-><init>()V

    .line 306
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 318
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 321
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    .line 324
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 328
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 331
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 335
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 341
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 352
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    .line 354
    iput v0, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    .line 357
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 465
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 466
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 493
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 496
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 499
    new-instance v2, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-direct {v2, p0, v1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    .line 713
    new-instance v2, Lcom/android/server/StorageManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/StorageManagerService$1;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1110
    new-instance v2, Lcom/android/server/StorageManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/StorageManagerService$4;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mListener:Landroid/os/IVoldListener;

    .line 3317
    new-instance v2, Lcom/android/server/StorageManagerService$12;

    invoke-direct {v2, p0}, Lcom/android/server/StorageManagerService$12;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback$Stub;

    .line 1503
    sput-object p0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 1506
    nop

    .line 1507
    const-string/jumbo v2, "persist.sys.isolated_storage"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1506
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sys.isolated_storage_snapshot"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1510
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 1512
    new-instance p1, Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/server/StorageManagerService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 1513
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1515
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "StorageManagerService"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1516
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 1517
    new-instance v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    .line 1520
    new-instance p1, Lcom/android/server/StorageManagerService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/StorageManagerService$ObbActionHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    .line 1523
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p1

    .line 1524
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1525
    new-instance p1, Ljava/io/File;

    const-string v2, "last-fstrim"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    .line 1526
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_115

    .line 1530
    :try_start_ec
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_f6} :catch_f7

    goto :goto_114

    .line 1531
    :catch_f7
    move-exception p1

    .line 1532
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create fstrim record "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StorageManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :goto_114
    goto :goto_11d

    .line 1535
    :cond_115
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    .line 1538
    :goto_11d
    new-instance p1, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    .line 1539
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "storage.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "storage-settings"

    invoke-direct {p1, v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 1541
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1542
    :try_start_136
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->readSettingsLocked()V

    .line 1543
    monitor-exit p1
    :try_end_13a
    .catchall {:try_start_136 .. :try_end_13a} :catchall_16b

    .line 1545
    const-class p1, Landroid/os/storage/StorageManagerInternal;

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1547
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 1548
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1549
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1550
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1552
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1553
    :try_start_15c
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V

    .line 1554
    monitor-exit v0
    :try_end_160
    .catchall {:try_start_15c .. :try_end_160} :catchall_168

    .line 1558
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 1560
    return-void

    .line 1554
    :catchall_168
    move-exception p1

    :try_start_169
    monitor-exit v0
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_168

    throw p1

    .line 1543
    :catchall_16b
    move-exception v0

    :try_start_16c
    monitor-exit p1
    :try_end_16d
    .catchall {:try_start_16c .. :try_end_16d} :catchall_16b

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 189
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 189
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->servicesReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 189
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 189
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->handleDaemonConnected()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/StorageManagerService;)J
    .registers 3

    .line 189
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/server/StorageManagerService;J)J
    .registers 3

    .line 189
    iput-wide p1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/server/StorageManagerService;)Ljava/io/File;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/server/StorageManagerService;Landroid/os/IVold;)Landroid/os/IVold;
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)Z
    .registers 2

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .registers 2

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->mount(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .registers 2

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->unmount(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/StorageManagerService;)Landroid/content/Context;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 189
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->systemReady()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 189
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->completeUnlockUser(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 189
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshZramSettings()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 189
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshIsolatedStorageSettings()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/server/StorageManagerService;Landroid/os/storage/DiskInfo;)V
    .registers 2

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 189
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->bootCompleted()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$Callbacks;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .registers 2

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;II)V
    .registers 4

    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V

    return-void
.end method

.method static synthetic access$3602(Lcom/android/server/StorageManagerService;Landroid/os/IStoraged;)Landroid/os/IStoraged;
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 189
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 189
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectVold()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 4

    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->dispatchOnStatus(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 4

    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->dispatchOnFinished(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/StorageManagerService;I)I
    .registers 2

    .line 189
    iput p1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->scrubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .registers 2

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 189
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    return-void
.end method

.method static synthetic access$4700()Z
    .registers 1

    .line 189
    sget-boolean v0, Lcom/android/server/StorageManagerService;->ENABLE_ISOLATED_STORAGE:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/StorageManagerService;ILjava/lang/String;)I
    .registers 3

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->getMountMode(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Lcom/android/server/StorageManagerService;II)V
    .registers 3

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->remountUidExternalStorage(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onUnlockUser(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/StorageManagerService;)Ljava/util/Map;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/android/server/StorageManagerService;)Ljava/util/Map;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 2

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 189
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/StorageManagerService;Ljava/lang/String;I)Z
    .registers 3

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5500(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->addObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/StorageManagerService;)Landroid/content/pm/IPackageManager;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onCleanupUser(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 189
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

    .line 904
    new-instance v0, Landroid/os/storage/VolumeInfo;

    const/4 v1, 0x0

    const-string/jumbo v2, "private"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1, v1}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 906
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/storage/VolumeInfo;->state:I

    .line 907
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 908
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    return-void
.end method

.method private addObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3327
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3328
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3330
    if-nez v1, :cond_19

    .line 3331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3332
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 3334
    :cond_19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/StorageManagerService$ObbState;

    .line 3335
    iget-object v3, v3, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 3339
    goto :goto_1d

    .line 3336
    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempt to add ObbState twice. This indicates an error in the StorageManagerService logic."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3342
    :cond_3c
    :goto_3c
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3344
    :try_start_3f
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->link()V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_42} :catch_4b

    .line 3357
    nop

    .line 3359
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3360
    return-void

    .line 3345
    :catch_4b
    move-exception v2

    .line 3350
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3351
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 3352
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3356
    :cond_5a
    throw v2
.end method

.method private adjustAllocateFlags(IILjava/lang/String;)I
    .registers 9

    .line 3216
    and-int/lit8 v0, p1, 0x1

    const-string v1, "StorageManagerService"

    if-eqz v0, :cond_d

    .line 3217
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ALLOCATE_AGGRESSIVE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3222
    :cond_d
    and-int/lit8 p1, p1, -0x3

    .line 3223
    and-int/lit8 p1, p1, -0x5

    .line 3228
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 3229
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3231
    const/16 v4, 0x1a

    :try_start_21
    invoke-virtual {v0, v4, p2, p3}, Landroid/app/AppOpsManager;->isOperationActive(IILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_42

    .line 3232
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UID "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is actively using camera; letting them defy reserved cached data"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_21 .. :try_end_40} :catchall_47

    .line 3234
    or-int/lit8 p1, p1, 0x4

    .line 3237
    :cond_42
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3238
    nop

    .line 3240
    return p1

    .line 3237
    :catchall_47
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private bootCompleted()V
    .registers 3

    .line 1672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 1673
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1674
    return-void
.end method

.method private completeUnlockUser(I)V
    .registers 9

    .line 993
    if-nez p1, :cond_7

    .line 994
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->migrateLegacyObbData()V

    .line 999
    :cond_7
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1000
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    :try_start_c
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4c

    .line 1001
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 1002
    invoke-virtual {v3, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 1003
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, v1}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 1004
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1006
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v3

    invoke-static {v3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v3

    .line 1007
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v3, v3}, Lcom/android/server/StorageManagerService$Callbacks;->access$2600(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1010
    :cond_4c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 1011
    monitor-exit v0

    .line 1012
    return-void

    .line 1011
    :catchall_56
    move-exception p1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_c .. :try_end_58} :catchall_56

    throw p1
.end method

.method private connectStoraged()V
    .registers 5

    .line 1568
    const-string/jumbo v0, "storaged"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1569
    if-eqz v0, :cond_15

    .line 1571
    :try_start_9
    new-instance v1, Lcom/android/server/StorageManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$5;-><init>(Lcom/android/server/StorageManagerService;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    .line 1581
    goto :goto_15

    .line 1579
    :catch_13
    move-exception v0

    .line 1580
    const/4 v0, 0x0

    .line 1584
    :cond_15
    :goto_15
    if-eqz v0, :cond_1e

    .line 1585
    invoke-static {v0}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    goto :goto_26

    .line 1587
    :cond_1e
    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "storaged not found; trying again"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :goto_26
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    if-nez v0, :cond_39

    .line 1591
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$StorageManagerService$rphiUwXTDSwqMt8xpkOYwsKQc5w;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$rphiUwXTDSwqMt8xpkOYwsKQc5w;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3c

    .line 1595
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->onDaemonConnected()V

    .line 1597
    :goto_3c
    return-void
.end method

.method private connectVold()V
    .registers 5

    .line 1600
    const-string/jumbo v0, "vold"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1601
    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 1603
    :try_start_a
    new-instance v2, Lcom/android/server/StorageManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/StorageManagerService$6;-><init>(Lcom/android/server/StorageManagerService;)V

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    .line 1613
    goto :goto_16

    .line 1611
    :catch_14
    move-exception v0

    .line 1612
    move-object v0, v1

    .line 1616
    :cond_16
    :goto_16
    const-string v2, "StorageManagerService"

    if-eqz v0, :cond_32

    .line 1617
    invoke-static {v0}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 1619
    :try_start_20
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mListener:Landroid/os/IVoldListener;

    invoke-interface {v0, v3}, Landroid/os/IVold;->setListener(Landroid/os/IVoldListener;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28

    goto :goto_31

    .line 1620
    :catch_28
    move-exception v0

    .line 1621
    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 1622
    const-string/jumbo v1, "vold listener rejected; trying again"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1623
    :goto_31
    goto :goto_38

    .line 1625
    :cond_32
    const-string/jumbo v0, "vold not found; trying again"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :goto_38
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    if-nez v0, :cond_4b

    .line 1629
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$StorageManagerService$iQEwQayMYzs9Ew4L6Gk7kRIO9wM;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$iQEwQayMYzs9Ew4L6Gk7kRIO9wM;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4e

    .line 1633
    :cond_4b
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->onDaemonConnected()V

    .line 1635
    :goto_4e
    return-void
.end method

.method private copyLocaleFromMountService()V
    .registers 7

    .line 1087
    :try_start_0
    const-string v0, "SystemLocale"

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_65

    .line 1090
    nop

    .line 1091
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1092
    return-void

    .line 1095
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

    .line 1096
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 1097
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 1098
    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 1100
    :try_start_35
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_3d

    .line 1103
    goto :goto_43

    .line 1101
    :catch_3d
    move-exception v4

    .line 1102
    const-string v5, "Error setting system locale from mount service"

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1106
    :goto_43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting system properties to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.locale"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    return-void

    .line 1088
    :catch_65
    move-exception v0

    .line 1089
    return-void
.end method

.method private dispatchOnFinished(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 4

    .line 3636
    if-eqz p1, :cond_7

    .line 3638
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/os/IVoldTaskListener;->onFinished(ILandroid/os/PersistableBundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 3640
    goto :goto_7

    .line 3639
    :catch_6
    move-exception p1

    .line 3642
    :cond_7
    :goto_7
    return-void
.end method

.method private dispatchOnStatus(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 4

    .line 3626
    if-eqz p1, :cond_7

    .line 3628
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/os/IVoldTaskListener;->onStatus(ILandroid/os/PersistableBundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 3630
    goto :goto_7

    .line 3629
    :catch_6
    move-exception p1

    .line 3632
    :cond_7
    :goto_7
    return-void
.end method

.method private encodeBytes([B)Ljava/lang/String;
    .registers 3

    .line 2778
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2779
    const-string p1, "!"

    return-object p1

    .line 2781
    :cond_9
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private enforceAdminUser()V
    .registers 5

    .line 1483
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1484
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1486
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1488
    :try_start_13
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_2a

    .line 1490
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1491
    nop

    .line 1492
    if-eqz v0, :cond_22

    .line 1495
    return-void

    .line 1493
    :cond_22
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only admin users can adopt sd cards"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1490
    :catchall_2a
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .registers 3

    .line 1456
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    return-void
.end method

.method private findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
    .registers 5

    .line 443
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 445
    if-nez v1, :cond_18

    .line 446
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 447
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_18
    monitor-exit v0

    return-object v1

    .line 450
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method private findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .registers 6

    .line 383
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 385
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 386
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_2c

    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 387
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v1, v2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeRecord;

    monitor-exit v0

    return-object p1

    .line 384
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 390
    :cond_2f
    monitor-exit v0

    .line 391
    const/4 p1, 0x0

    return-object p1

    .line 390
    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_32

    throw p1
.end method

.method private findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 4

    .line 408
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 409
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 410
    const-string p1, "emulated"

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    return-object p1

    .line 411
    :cond_19
    const-string/jumbo v1, "primary_physical"

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 412
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object p1

    return-object p1

    .line 414
    :cond_27
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    return-object p1
.end method

.method private findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 5

    .line 361
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 363
    if-eqz v1, :cond_f

    .line 364
    monitor-exit v0

    return-object v1

    .line 366
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_27

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No volume found for ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method private findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 371
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 373
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 374
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_24

    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 375
    iget-object p1, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 372
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 378
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_3f

    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No volume found for path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :catchall_3f
    move-exception p1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method private forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2012
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 2015
    goto :goto_c

    .line 2013
    :catch_6
    move-exception p1

    .line 2014
    const-string p2, "StorageManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2016
    :goto_c
    return-void
.end method

.method private getDefaultPrimaryStorageUuid()Ljava/lang/String;
    .registers 3

    .line 1682
    const-string/jumbo v0, "ro.vold.primary_physical"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1683
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 1685
    :cond_e
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private static getLastAccessTime(Landroid/app/AppOpsManager;ILjava/lang/String;[I)J
    .registers 6

    .line 1653
    nop

    .line 1654
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object p0

    .line 1655
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 p1, 0x0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AppOpsManager$PackageOps;

    .line 1656
    invoke-virtual {p3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_27
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    .line 1657
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 1659
    goto :goto_27

    .line 1660
    :cond_3e
    goto :goto_f

    .line 1661
    :cond_3f
    return-wide p1
.end method

.method private getMountMode(ILjava/lang/String;)I
    .registers 6

    .line 3645
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->getMountModeInternal(ILjava/lang/String;)I

    move-result v0

    .line 3646
    sget-boolean v1, Lcom/android/server/StorageManagerService;->LOCAL_LOGV:Z

    if-eqz v1, :cond_32

    .line 3647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolved mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3648
    invoke-static {p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3647
    const-string p2, "StorageManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3650
    :cond_32
    return v0
.end method

.method private getMountModeInternal(ILjava/lang/String;)I
    .registers 14

    .line 3656
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3657
    return v0

    .line 3660
    :cond_8
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 3661
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3663
    return v0

    .line 3665
    :cond_15
    if-nez p2, :cond_19

    .line 3666
    aget-object p2, v1, v0

    .line 3669
    :cond_19
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 3670
    return v0

    .line 3674
    :cond_26
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v8, 0x3b

    move v5, p1

    move-object v6, p2

    invoke-static/range {v2 .. v8}, Landroid/os/storage/StorageManager;->checkPermissionAndCheckOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    .line 3676
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v8, 0x3c

    move v5, p1

    move-object v6, p2

    invoke-static/range {v2 .. v8}, Landroid/os/storage/StorageManager;->checkPermissionAndCheckOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 3681
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v4, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-interface {v3, v4, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_4f

    move v3, v4

    goto :goto_50

    :cond_4f
    move v3, v0

    .line 3683
    :goto_50
    if-eqz v3, :cond_56

    if-eqz v2, :cond_56

    .line 3684
    const/4 p1, 0x6

    return p1

    .line 3689
    :cond_56
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v5, "android.permission.INSTALL_PACKAGES"

    invoke-interface {v3, v5, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_62

    move v3, v4

    goto :goto_63

    :cond_62
    move v3, v0

    .line 3691
    :goto_63
    nop

    .line 3696
    array-length v5, v1

    move v6, v0

    :goto_66
    if-ge v6, v5, :cond_7a

    aget-object v7, v1, v6

    .line 3697
    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v10, 0x42

    invoke-interface {v8, v10, p1, v7}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_77

    .line 3699
    nop

    .line 3700
    move v1, v4

    goto :goto_7b

    .line 3696
    :cond_77
    add-int/lit8 v6, v6, 0x1

    goto :goto_66

    :cond_7a
    move v1, v0

    .line 3703
    :goto_7b
    const/4 v5, 0x3

    if-nez v3, :cond_80

    if-eqz v1, :cond_83

    :cond_80
    if-eqz v2, :cond_83

    .line 3704
    return v5

    .line 3709
    :cond_83
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v3, 0x57

    invoke-interface {v1, v3, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result p1
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8b} :catch_9a

    if-nez p1, :cond_8e

    move v0, v4

    .line 3711
    :cond_8e
    if-eqz v0, :cond_93

    if-eqz v2, :cond_93

    .line 3712
    return v5

    .line 3713
    :cond_93
    if-eqz v0, :cond_99

    if-eqz v9, :cond_99

    .line 3714
    const/4 p1, 0x2

    return p1

    .line 3716
    :cond_99
    return v4

    .line 3718
    :catch_9a
    move-exception p1

    .line 3721
    return v0
.end method

.method private handleBootCompleted()V
    .registers 1

    .line 1677
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->initIfBootedAndConnected()V

    .line 1678
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    .line 1679
    return-void
.end method

.method private handleDaemonConnected()V
    .registers 3

    .line 1074
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->initIfBootedAndConnected()V

    .line 1075
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    .line 1079
    invoke-static {}, Landroid/sysprop/VoldProperties;->encrypt_progress()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1080
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->copyLocaleFromMountService()V

    .line 1082
    :cond_19
    return-void
.end method

.method private handleSystemReady()V
    .registers 6

    .line 767
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    .line 770
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 771
    const-string/jumbo v1, "zram_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/StorageManagerService$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/StorageManagerService$2;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Handler;)V

    .line 770
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 779
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshZramSettings()V

    .line 782
    const-string/jumbo v0, "persist.sys.zram_enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 783
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 784
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 786
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ZramWriteback;->scheduleZramWriteback(Landroid/content/Context;)V

    .line 789
    :cond_42
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 790
    const-string v1, "isolated_storage_remote"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/StorageManagerService$3;

    invoke-direct {v2, p0, v3}, Lcom/android/server/StorageManagerService$3;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Handler;)V

    .line 789
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 799
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 800
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$StorageManagerService$js3bHvdd2Mf8gztNxvL27JoT034;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$js3bHvdd2Mf8gztNxvL27JoT034;-><init>(Lcom/android/server/StorageManagerService;)V

    .line 799
    const-string/jumbo v2, "storage"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 803
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshIsolatedStorageSettings()V

    .line 804
    return-void
.end method

.method private initIfBootedAndConnected()V
    .registers 9

    .line 912
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

    .line 914
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_88

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    if-eqz v0, :cond_88

    .line 915
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-nez v0, :cond_88

    .line 919
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    move-result v0

    .line 920
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting up emulation state, initlocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 922
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 924
    if-eqz v0, :cond_70

    .line 925
    :try_start_68
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, v3}, Landroid/os/IVold;->lockUserKey(I)V

    goto :goto_82

    .line 927
    :cond_70
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    iget v3, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v7

    .line 928
    invoke-direct {p0, v6}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v6

    .line 927
    invoke-interface {v4, v5, v3, v7, v6}, Landroid/os/IVold;->unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_82} :catch_83

    .line 932
    :goto_82
    goto :goto_87

    .line 930
    :catch_83
    move-exception v3

    .line 931
    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 933
    :goto_87
    goto :goto_5a

    .line 935
    :cond_88
    return-void
.end method

.method private isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z
    .registers 7

    .line 1307
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

    .line 1314
    return v1

    .line 1312
    :cond_11
    nop

    .line 1317
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result p1

    if-eqz p1, :cond_27

    const/16 v0, 0x8

    if-eq p1, v0, :cond_27

    if-eq p1, v3, :cond_27

    const/4 v0, 0x3

    if-eq p1, v0, :cond_27

    if-eq p1, v2, :cond_27

    const/4 v0, 0x6

    if-eq p1, v0, :cond_27

    .line 1326
    return v1

    .line 1324
    :cond_27
    nop

    .line 1329
    return v4
.end method

.method private isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    .registers 7

    .line 1463
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1465
    nop

    .line 1466
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1467
    nop

    .line 1468
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 1467
    const-string/jumbo v3, "no_usb_file_transfer"

    invoke-virtual {v0, v3, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    goto :goto_26

    .line 1471
    :cond_25
    move v1, v2

    :goto_26
    nop

    .line 1472
    iget v3, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v4, 0x1

    if-eqz v3, :cond_38

    iget v3, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-eq v3, v4, :cond_38

    iget p1, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x5

    if-ne p1, v3, :cond_36

    goto :goto_38

    :cond_36
    move p1, v2

    goto :goto_44

    .line 1474
    :cond_38
    :goto_38
    nop

    .line 1476
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    .line 1475
    const-string/jumbo v3, "no_physical_media"

    invoke-virtual {v0, v3, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    .line 1479
    :goto_44
    if-nez v1, :cond_48

    if-eqz p1, :cond_49

    :cond_48
    move v2, v4

    :cond_49
    return v2
.end method

.method private isSystemUnlocked(I)Z
    .registers 4

    .line 2885
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2886
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 2887
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .registers 8

    .line 2346
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_6

    .line 2347
    return v0

    .line 2350
    :cond_6
    const/4 v1, 0x0

    if-nez p1, :cond_a

    .line 2351
    return v1

    .line 2354
    :cond_a
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v3, 0x10000000

    .line 2355
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2354
    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result p1

    .line 2362
    if-ne p2, p1, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    return v0
.end method

.method private killMediaProvider(Ljava/util/List;)V
    .registers 9
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

    .line 872
    if-nez p1, :cond_3

    return-void

    .line 874
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 876
    :try_start_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 878
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSystemOnly()Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_b

    .line 880
    :cond_1e
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-string v4, "media"

    const/high16 v5, 0xc0000

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 884
    if-eqz v2, :cond_45

    .line 885
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_4b

    .line 887
    :try_start_30
    iget-object v4, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 888
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/4 v5, -0x1

    const-string/jumbo v6, "vold reset"

    .line 887
    invoke-interface {v3, v4, v2, v5, v6}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_43} :catch_44
    .catchall {:try_start_30 .. :try_end_43} :catchall_4b

    .line 891
    goto :goto_46

    .line 892
    :catch_44
    move-exception v2

    .line 895
    :cond_45
    goto :goto_b

    .line 897
    :cond_46
    :goto_46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 898
    nop

    .line 899
    return-void

    .line 897
    :catchall_4b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private maybeLogMediaMount(Landroid/os/storage/VolumeInfo;I)V
    .registers 8

    .line 1404
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1405
    return-void

    .line 1408
    :cond_7
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 1409
    if-eqz v0, :cond_4e

    iget v1, v0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v1, v1, 0xc

    if-nez v1, :cond_14

    goto :goto_4e

    .line 1414
    :cond_14
    iget-object v1, v0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v0, v0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_1f
    const-string v0, ""

    .line 1416
    :goto_21
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3f

    const/4 v4, 0x3

    if-ne p2, v4, :cond_2a

    goto :goto_3f

    .line 1419
    :cond_2a
    if-eqz p2, :cond_30

    const/16 v4, 0x8

    if-ne p2, v4, :cond_4d

    .line 1421
    :cond_30
    const p2, 0x3345e

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    aput-object p1, v3, v2

    aput-object v0, v3, v1

    invoke-static {p2, v3}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_4d

    .line 1418
    :cond_3f
    :goto_3f
    const p2, 0x3345d

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    aput-object p1, v3, v2

    aput-object v0, v3, v1

    invoke-static {p2, v3}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1423
    :cond_4d
    :goto_4d
    return-void

    .line 1410
    :cond_4e
    :goto_4e
    return-void
.end method

.method private mount(Landroid/os/storage/VolumeInfo;)V
    .registers 5

    .line 1822
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iget p1, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-interface {v0, v1, v2, p1}, Landroid/os/IVold;->mount(Ljava/lang/String;II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1825
    goto :goto_12

    .line 1823
    :catch_c
    move-exception p1

    .line 1824
    const-string v0, "StorageManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1826
    :goto_12
    return-void
.end method

.method private onCleanupUser(I)V
    .registers 4

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCleanupUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :try_start_17
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->onUserStopped(I)V

    .line 1019
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v0, p1}, Landroid/os/IStoraged;->onUserStopped(I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_22

    .line 1022
    goto :goto_28

    .line 1020
    :catch_22
    move-exception v0

    .line 1021
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1024
    :goto_28
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1025
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 1026
    monitor-exit v0

    .line 1027
    return-void

    .line 1026
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_35

    throw p1
.end method

.method private onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1226
    nop

    .line 1227
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 1228
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 1229
    iget-object v3, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1230
    add-int/lit8 v1, v1, 0x1

    .line 1227
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1234
    :cond_24
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.os.storage.action.DISK_SCANNED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1235
    const/high16 v2, 0x5000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1237
    iget-object v2, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    const-string v3, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1238
    const-string v2, "android.os.storage.extra.VOLUME_COUNT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1239
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1241
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 1242
    if-eqz v0, :cond_55

    .line 1243
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1246
    :cond_55
    iput v1, p1, Landroid/os/storage/DiskInfo;->volumeCount:I

    .line 1247
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v0, p1, v1}, Lcom/android/server/StorageManagerService$Callbacks;->access$3400(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;I)V

    .line 1248
    return-void
.end method

.method private onMoveStatusLocked(I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1427
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    const-string v1, "StorageManagerService"

    if-nez v0, :cond_c

    .line 1428
    const-string p1, "Odd, status but no move requested"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    return-void

    .line 1434
    :cond_c
    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    :try_start_f
    invoke-interface {v0, v2, p1, v3, v4}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 1436
    goto :goto_14

    .line 1435
    :catch_13
    move-exception v0

    .line 1440
    :goto_14
    const/16 v0, 0x52

    const-string v2, "Move to "

    if-ne p1, v0, :cond_3a

    .line 1441
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

    .line 1443
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1444
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1447
    :cond_3a
    invoke-static {p1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " finished with status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 1451
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 1453
    :cond_61
    return-void
.end method

.method private onUnlockUser(I)V
    .registers 4

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUnlockUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :try_start_17
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->onUserStarted(I)V

    .line 981
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v0, p1}, Landroid/os/IStoraged;->onUserStarted(I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_22

    .line 984
    goto :goto_26

    .line 982
    :catch_22
    move-exception v0

    .line 983
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 986
    :goto_26
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 987
    return-void
.end method

.method private onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1252
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->isOnlyCoreApps()Z

    move-result v0

    const-string v1, "StorageManagerService"

    if-eqz v0, :cond_23

    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System booted in core-only mode; ignoring volume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    return-void

    .line 1257
    :cond_23
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    const-string v2, "Found primary storage at "

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-ne v0, v5, :cond_a6

    .line 1258
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1259
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 1261
    sget-object v6, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    iget-object v6, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 1262
    const-string/jumbo v7, "private"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1265
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v0, v5

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1266
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a4

    .line 1268
    :cond_75
    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1271
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v0, v5

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1272
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1275
    :cond_a4
    :goto_a4
    goto/16 :goto_136

    :cond_a6
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v0, :cond_102

    .line 1277
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    const-string/jumbo v6, "primary_physical"

    invoke-static {v6, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 1278
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1281
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v0, v5

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1286
    :cond_d9
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 1287
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v0, v5

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    goto :goto_f4

    .line 1288
    :cond_e7
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 1289
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v0, v5

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1292
    :cond_f4
    :goto_f4
    iget v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1293
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_136

    .line 1295
    :cond_102
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v0, v3, :cond_110

    .line 1296
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_136

    .line 1298
    :cond_110
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v0, v4, :cond_122

    .line 1299
    iget v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1300
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_136

    .line 1302
    :cond_122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping automatic mounting of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :goto_136
    return-void
.end method

.method private onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1336
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 1337
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 1338
    if-nez v0, :cond_3c

    .line 1339
    new-instance v0, Landroid/os/storage/VolumeRecord;

    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 1340
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 1342
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_34

    .line 1343
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1345
    :cond_34
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    .line 1348
    :cond_3c
    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1349
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1353
    :cond_48
    :goto_48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    .line 1354
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1357
    :cond_51
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->access$3500(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeInfo;II)V

    .line 1361
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_89

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 1362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1363
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const-string v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1364
    const-string v1, "android.os.storage.extra.VOLUME_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1365
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    const-string v2, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1366
    const/high16 v1, 0x5000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1368
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1371
    :cond_89
    invoke-static {p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object p2

    .line 1372
    invoke-static {p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v0

    .line 1374
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c2

    .line 1378
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_9c
    if-ge v4, v2, :cond_c2

    aget v5, v1, v4

    .line 1379
    invoke-virtual {p1, v5}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v6

    if-eqz v6, :cond_bf

    .line 1380
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v6, v5, v3}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 1381
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1383
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, p2, v0}, Lcom/android/server/StorageManagerService$Callbacks;->access$2600(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    :cond_bf
    add-int/lit8 v4, v4, 0x1

    goto :goto_9c

    .line 1389
    :cond_c2
    iget p2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v0, 0x5

    if-eqz p2, :cond_cb

    iget p2, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne p2, v0, :cond_db

    :cond_cb
    iget p2, p1, Landroid/os/storage/VolumeInfo;->state:I

    if-ne p2, v0, :cond_db

    .line 1397
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 v0, 0x2

    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1400
    :cond_db
    invoke-direct {p0, p1, p3}, Lcom/android/server/StorageManagerService;->maybeLogMediaMount(Landroid/os/storage/VolumeInfo;I)V

    .line 1401
    return-void
.end method

.method private readSettingsLocked()V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1691
    const-string v0, "Failed reading metadata"

    const-string v1, "StorageManagerService"

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 1692
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1694
    nop

    .line 1696
    const/4 v2, 0x0

    :try_start_11
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 1697
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 1698
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1701
    :cond_24
    :goto_24
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_87

    .line 1702
    const/4 v6, 0x2

    if-ne v4, v6, :cond_24

    .line 1703
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1704
    const-string/jumbo v7, "volumes"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 1705
    const-string/jumbo v4, "version"

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 1706
    const-string/jumbo v7, "ro.vold.primary_physical"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1708
    const/4 v9, 0x3

    if-ge v4, v9, :cond_53

    if-lt v4, v6, :cond_52

    if-nez v7, :cond_52

    goto :goto_53

    :cond_52
    move v5, v8

    .line 1710
    :cond_53
    :goto_53
    if-eqz v5, :cond_74

    .line 1711
    const-string/jumbo v4, "primaryStorageUuid"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    goto :goto_74

    .line 1714
    :cond_5f
    const-string/jumbo v5, "volume"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 1715
    invoke-static {v3}, Lcom/android/server/StorageManagerService;->readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;

    move-result-object v4

    .line 1716
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v6, v4, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_73} :catch_86
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_73} :catch_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_73} :catch_78
    .catchall {:try_start_11 .. :try_end_73} :catchall_76

    goto :goto_75

    .line 1714
    :cond_74
    :goto_74
    nop

    .line 1718
    :goto_75
    goto :goto_24

    .line 1727
    :catchall_76
    move-exception v0

    goto :goto_82

    .line 1724
    :catch_78
    move-exception v3

    .line 1725
    :try_start_79
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_87

    .line 1722
    :catch_7d
    move-exception v3

    .line 1723
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_81
    .catchall {:try_start_79 .. :try_end_81} :catchall_76

    goto :goto_87

    .line 1727
    :goto_82
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 1720
    :catch_86
    move-exception v0

    .line 1727
    :cond_87
    :goto_87
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1728
    nop

    .line 1729
    return-void
.end method

.method public static readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1760
    const-string/jumbo v0, "type"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 1761
    const-string v1, "fsUuid"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1762
    new-instance v2, Landroid/os/storage/VolumeRecord;

    invoke-direct {v2, v0, v1}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 1763
    const-string/jumbo v0, "partGuid"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1764
    const-string/jumbo v0, "nickname"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1765
    const-string/jumbo v0, "userFlags"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 1766
    const-wide/16 v0, 0x0

    const-string v3, "createdMillis"

    invoke-static {p0, v3, v0, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 1767
    const-string v3, "lastSeenMillis"

    invoke-static {p0, v3, v0, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    .line 1768
    const-string v3, "lastTrimMillis"

    invoke-static {p0, v3, v0, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 1769
    const-string v3, "lastBenchMillis"

    invoke-static {p0, v3, v0, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v2, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 1770
    return-object v2
.end method

.method private refreshIsolatedStorageSettings()V
    .registers 6

    .line 837
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 839
    const-string/jumbo v1, "storage"

    const-string v2, "isolated_storage_enabled"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 837
    const-string v2, "isolated_storage_remote"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 841
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, "isolated_storage_local"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 843
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 849
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2d

    .line 850
    move v4, v1

    goto :goto_38

    .line 851
    :cond_2d
    if-ne v0, v4, :cond_30

    .line 852
    goto :goto_38

    .line 853
    :cond_30
    if-ne v2, v3, :cond_34

    .line 854
    move v4, v1

    goto :goto_38

    .line 855
    :cond_34
    if-ne v2, v4, :cond_37

    .line 856
    goto :goto_38

    .line 858
    :cond_37
    nop

    .line 861
    :goto_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Isolated storage local flag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and remote flag "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " resolved to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.isolated_storage"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method private refreshZramSettings()V
    .registers 6

    .line 812
    const-string/jumbo v0, "persist.sys.zram_enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 813
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 814
    return-void

    .line 819
    :cond_10
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 817
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const-string/jumbo v4, "zram_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "1"

    if-eqz v2, :cond_24

    .line 820
    move-object v2, v3

    goto :goto_26

    :cond_24
    const-string v2, "0"

    .line 821
    :goto_26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 825
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 828
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 830
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ZramWriteback;->scheduleZramWriteback(Landroid/content/Context;)V

    .line 833
    :cond_49
    return-void
.end method

.method private remountUidExternalStorage(II)V
    .registers 4

    .line 2129
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->remountUid(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 2132
    goto :goto_c

    .line 2130
    :catch_6
    move-exception p1

    .line 2131
    const-string p2, "StorageManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2133
    :goto_c
    return-void
.end method

.method private removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 5

    .line 3363
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3364
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3365
    if-eqz v1, :cond_22

    .line 3366
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3367
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->unlink()V

    .line 3369
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3370
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3374
    :cond_22
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3375
    return-void
.end method

.method private resetIfBootedAndConnected()V
    .registers 6

    .line 938
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

    .line 940
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_99

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    if-eqz v0, :cond_99

    .line 941
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 942
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->killMediaProvider(Ljava/util/List;)V

    .line 945
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 946
    :try_start_3e
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 948
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 949
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 951
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V

    .line 952
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_3e .. :try_end_4e} :catchall_96

    .line 955
    :try_start_4e
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v1}, Landroid/os/IVold;->reset()V

    .line 958
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 959
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    iget v1, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v3, v4, v1}, Landroid/os/IVold;->onUserAdded(II)V

    .line 960
    goto :goto_57

    .line 961
    :cond_6d
    array-length v0, v2

    const/4 v1, 0x0

    :goto_6f
    if-ge v1, v0, :cond_80

    aget v3, v2, v1

    .line 962
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v4, v3}, Landroid/os/IVold;->onUserStarted(I)V

    .line 963
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v4, v3}, Landroid/os/IStoraged;->onUserStarted(I)V

    .line 961
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 965
    :cond_80
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    invoke-interface {v0, v1}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V

    .line 966
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->onReset(Landroid/os/IVold;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_8e} :catch_8f

    .line 969
    goto :goto_99

    .line 967
    :catch_8f
    move-exception v0

    .line 968
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_99

    .line 952
    :catchall_96
    move-exception v0

    :try_start_97
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v0

    .line 971
    :cond_99
    :goto_99
    return-void
.end method

.method private scrubPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 395
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 396
    const-string p1, "internal"

    return-object p1

    .line 398
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object p1

    .line 399
    if-eqz p1, :cond_44

    iget-wide v0, p1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    goto :goto_44

    .line 402
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x240c8400

    div-long/2addr v1, v3

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "w"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 400
    :cond_44
    :goto_44
    const-string/jumbo p1, "unknown"

    return-object p1
.end method

.method private servicesReady()V
    .registers 5

    .line 1638
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1640
    nop

    .line 1641
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1640
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1642
    nop

    .line 1643
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1642
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 1645
    :try_start_25
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v1, 0x42

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback$Stub;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 1646
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v1, 0x57

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback$Stub;

    invoke-interface {v0, v1, v3, v2}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_38} :catch_39

    .line 1648
    goto :goto_3a

    .line 1647
    :catch_39
    move-exception v0

    .line 1649
    :goto_3a
    return-void
.end method

.method private shouldBenchmark()Z
    .registers 11

    .line 419
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "storage_benchmark_interval"

    const-wide/32 v2, 0x240c8400

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 421
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_18

    .line 422
    return v3

    .line 423
    :cond_18
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    const/4 v4, 0x1

    if-nez v2, :cond_20

    .line 424
    return v4

    .line 427
    :cond_20
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 428
    move v5, v3

    :goto_24
    :try_start_24
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_56

    .line 429
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 430
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v8, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/VolumeRecord;

    .line 431
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v6

    if-eqz v6, :cond_53

    if-eqz v7, :cond_53

    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v6, v7, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    sub-long/2addr v8, v6

    .line 433
    cmp-long v6, v8, v0

    if-ltz v6, :cond_53

    .line 434
    monitor-exit v2

    return v4

    .line 428
    :cond_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 438
    :cond_56
    monitor-exit v2

    return v3

    .line 439
    :catchall_58
    move-exception v0

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_24 .. :try_end_5a} :catchall_58

    throw v0
.end method

.method private start()V
    .registers 1

    .line 1563
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    .line 1564
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectVold()V

    .line 1565
    return-void
.end method

.method private supportsBlockCheckpoint()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1030
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->supportsBlockCheckpoint()Z

    move-result v0

    return v0
.end method

.method private systemReady()V
    .registers 3

    .line 1665
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1666
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 1668
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1669
    return-void
.end method

.method private unmount(Landroid/os/storage/VolumeInfo;)V
    .registers 3

    .line 1838
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-interface {v0, p1}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 1841
    goto :goto_e

    .line 1839
    :catch_8
    move-exception p1

    .line 1840
    const-string v0, "StorageManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1842
    :goto_e
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 746
    const-string v0, "Thread "

    const-string v1, "StorageManagerService"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 749
    :goto_8
    const-wide/16 v4, 0x1388

    :try_start_a
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 750
    return-void

    .line 752
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

    .line 757
    goto :goto_50

    .line 755
    :catch_3b
    move-exception v4

    .line 756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interrupt while waiting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
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

    .line 759
    :cond_61
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " gave up waiting for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " after "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "ms"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 758
    :cond_94
    :goto_94
    goto/16 :goto_8
.end method

.method private warnOnNotMounted()V
    .registers 5

    .line 2332
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2333
    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 2334
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 2335
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2337
    monitor-exit v0

    return-void

    .line 2333
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2340
    :cond_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2e

    .line 2342
    const-string v0, "StorageManagerService"

    const-string v1, "No primary storage mounted!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    return-void

    .line 2340
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

    .line 1733
    const-string/jumbo v0, "volumes"

    .line 1735
    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_57

    .line 1737
    :try_start_a
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1738
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1739
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1740
    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1741
    const-string/jumbo v4, "version"

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1742
    const-string/jumbo v4, "primaryStorageUuid"

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1743
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1744
    const/4 v5, 0x0

    :goto_39
    if-ge v5, v4, :cond_49

    .line 1745
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeRecord;

    .line 1746
    invoke-static {v3, v6}, Lcom/android/server/StorageManagerService;->writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V

    .line 1744
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 1748
    :cond_49
    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1749
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1751
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_54} :catch_55

    .line 1756
    goto :goto_60

    .line 1752
    :catch_55
    move-exception v0

    goto :goto_59

    :catch_57
    move-exception v0

    move-object v2, v1

    .line 1753
    :goto_59
    if-eqz v2, :cond_60

    .line 1754
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1757
    :cond_60
    :goto_60
    return-void
.end method

.method public static writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1774
    const-string/jumbo v0, "volume"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1775
    iget v2, p1, Landroid/os/storage/VolumeRecord;->type:I

    const-string/jumbo v3, "type"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1776
    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    const-string v3, "fsUuid"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1777
    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    const-string/jumbo v3, "partGuid"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1778
    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    const-string/jumbo v3, "nickname"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1779
    iget v2, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    const-string/jumbo v3, "userFlags"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1780
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-string v4, "createdMillis"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1781
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    const-string v4, "lastSeenMillis"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1782
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    const-string v4, "lastTrimMillis"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1783
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    const-string p1, "lastBenchMillis"

    invoke-static {p0, p1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1784
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1785
    return-void
.end method


# virtual methods
.method public abortChanges(Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2721
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    .line 2725
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    .line 2726
    return-void

    .line 2722
    :cond_e
    new-instance p1, Ljava/lang/SecurityException;

    const-string/jumbo p2, "no permission to commit checkpoint changes"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abortIdleMaint(Ljava/lang/Runnable;)V
    .registers 4

    .line 2102
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2105
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/StorageManagerService$10;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/os/IVold;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    .line 2119
    goto :goto_16

    .line 2117
    :catch_10
    move-exception p1

    .line 2118
    const-string v0, "StorageManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2120
    :goto_16
    return-void
.end method

.method public abortIdleMaintenance()V
    .registers 2

    .line 2124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    .line 2125
    return-void
.end method

.method public addUserKeyAuth(II[B[B)V
    .registers 6

    .line 2794
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2797
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IVold;->addUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_13

    .line 2800
    goto :goto_19

    .line 2798
    :catch_13
    move-exception p1

    .line 2799
    const-string p2, "StorageManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2801
    :goto_19
    return-void
.end method

.method public allocateBytes(Ljava/lang/String;JILjava/lang/String;)V
    .registers 10

    .line 3289
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p4, v0, p5}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result p4

    .line 3291
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/server/StorageManagerService;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    .line 3292
    cmp-long p5, p2, v0

    if-gtz p5, :cond_48

    .line 3297
    iget-object p5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/storage/StorageManager;

    .line 3298
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3302
    :try_start_1e
    invoke-virtual {p5, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 3303
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2c

    .line 3304
    invoke-virtual {p5, v2}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v2

    add-long/2addr p2, v2

    goto :goto_31

    .line 3306
    :cond_2c
    invoke-virtual {p5, v2}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v2

    add-long/2addr p2, v2

    .line 3309
    :goto_31
    iget-object p5, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/content/pm/PackageManagerInternal;->freeStorage(Ljava/lang/String;JI)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_36} :catch_3d
    .catchall {:try_start_1e .. :try_end_36} :catchall_3b

    .line 3313
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3314
    nop

    .line 3315
    return-void

    .line 3313
    :catchall_3b
    move-exception p1

    goto :goto_44

    .line 3310
    :catch_3d
    move-exception p1

    .line 3311
    :try_start_3e
    new-instance p2, Landroid/os/ParcelableException;

    invoke-direct {p2, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_3b

    .line 3313
    :goto_44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3293
    :cond_48
    new-instance p1, Landroid/os/ParcelableException;

    new-instance p4, Ljava/io/IOException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to allocate "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " because only "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " allocatable"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p4}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    .registers 5

    .line 1858
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1861
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$7;

    invoke-direct {v1, p0, p2}, Lcom/android/server/StorageManagerService$7;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V

    invoke-interface {v0, p1, v1}, Landroid/os/IVold;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_11

    .line 1892
    nop

    .line 1893
    return-void

    .line 1890
    :catch_11
    move-exception p1

    .line 1891
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public changeEncryptionPassword(ILjava/lang/String;)I
    .registers 9

    .line 2509
    const-string v0, "StorageManagerService"

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v3, "no permission to access the crypt keeper"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2512
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_14

    .line 2514
    return v2

    .line 2517
    :cond_14
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1a

    .line 2518
    const-string p2, ""

    goto :goto_20

    .line 2519
    :cond_1a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 2527
    :goto_20
    nop

    .line 2528
    const-string v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2527
    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 2529
    nop

    .line 2531
    :try_start_2c
    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->getPassword()Ljava/lang/String;

    move-result-object v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_30} :catch_31

    .line 2534
    goto :goto_48

    .line 2532
    :catch_31
    move-exception v3

    .line 2533
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t get password"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "default_password"

    .line 2537
    :goto_48
    :try_start_48
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v4, p1, v3, p2}, Landroid/os/IVold;->fdeChangePassword(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4d} :catch_68

    .line 2539
    :try_start_4d
    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->sanitizePassword()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_51

    .line 2542
    goto :goto_66

    .line 2540
    :catch_51
    move-exception p1

    .line 2541
    :try_start_52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t sanitize password"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_66} :catch_68

    .line 2543
    :goto_66
    const/4 p1, 0x0

    return p1

    .line 2544
    :catch_68
    move-exception p1

    .line 2545
    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2546
    return v2

    .line 2520
    :cond_6d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "password cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearPassword()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2743
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "only keyguard can clear password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2747
    :try_start_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeClearPassword()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    .line 2748
    return-void

    .line 2749
    :catch_10
    move-exception v0

    .line 2750
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2751
    return-void
.end method

.method public clearUserKeyAuth(II[B[B)V
    .registers 6

    .line 2812
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2815
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IVold;->clearUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_13

    .line 2818
    goto :goto_19

    .line 2816
    :catch_13
    move-exception p1

    .line 2817
    const-string p2, "StorageManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2819
    :goto_19
    return-void
.end method

.method public commitChanges()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2699
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    .line 2703
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->commitChanges()V

    .line 2704
    return-void

    .line 2700
    :cond_e
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to commit checkpoint changes"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createUserKey(IIZ)V
    .registers 5

    .line 2757
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2760
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IVold;->createUserKey(IIZ)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 2763
    goto :goto_11

    .line 2761
    :catch_b
    move-exception p1

    .line 2762
    const-string p2, "StorageManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2764
    :goto_11
    return-void
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .registers 6

    .line 2448
    const-string v0, "StorageManagerService"

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v3, "no permission to access the crypt keeper"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2451
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 2460
    :try_start_12
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v1, p1}, Landroid/os/IVold;->fdeCheckPassword(Ljava/lang/String;)V

    .line 2461
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$StorageManagerService$wW-xFR_FbxcgCZR-2zxBZdtJhr8;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$wW-xFR_FbxcgCZR-2zxBZdtJhr8;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_23
    .catch Landroid/os/ServiceSpecificException; {:try_start_12 .. :try_end_23} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25

    .line 2468
    const/4 p1, 0x0

    return p1

    .line 2472
    :catch_25
    move-exception p1

    .line 2473
    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2474
    const/4 p1, -0x1

    return p1

    .line 2469
    :catch_2b
    move-exception p1

    .line 2470
    const-string v1, "fdeCheckPassword failed"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2471
    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    return p1

    .line 2452
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "password cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroyUserKey(I)V
    .registers 3

    .line 2768
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2771
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->destroyUserKey(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 2774
    goto :goto_11

    .line 2772
    :catch_b
    move-exception p1

    .line 2773
    const-string v0, "StorageManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2775
    :goto_11
    return-void
.end method

.method public destroyUserStorage(Ljava/lang/String;II)V
    .registers 5

    .line 2903
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2906
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IVold;->destroyUserStorage(Ljava/lang/String;II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 2909
    goto :goto_11

    .line 2907
    :catch_b
    move-exception p1

    .line 2908
    const-string p2, "StorageManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2910
    :goto_11
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 3837
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string p3, "StorageManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 3839
    :cond_b
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 p3, 0xa0

    const-string v0, "  "

    invoke-direct {p1, p2, v0, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3840
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 3841
    :try_start_17
    const-string p3, "Disks:"

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3842
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3843
    const/4 p3, 0x0

    move v0, p3

    :goto_21
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 3844
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 3845
    invoke-virtual {v1, p1}, Landroid/os/storage/DiskInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3843
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 3847
    :cond_37
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3849
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3850
    const-string v0, "Volumes:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3851
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3852
    move v0, p3

    :goto_46
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_68

    .line 3853
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 3854
    const-string/jumbo v2, "private"

    iget-object v3, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    goto :goto_65

    .line 3855
    :cond_62
    invoke-virtual {v1, p1}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3852
    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 3857
    :cond_68
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3859
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3860
    const-string v0, "Records:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3861
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3862
    move v0, p3

    :goto_77
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_8d

    .line 3863
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 3864
    invoke-virtual {v1, p1}, Landroid/os/storage/VolumeRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3862
    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    .line 3866
    :cond_8d
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3868
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Primary storage UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3871
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3872
    invoke-static {}, Landroid/os/storage/StorageManager;->getPrimaryStoragePathAndSize()Landroid/util/Pair;

    move-result-object v0

    .line 3873
    if-nez v0, :cond_b8

    .line 3874
    const-string v0, "Internal storage total size: N/A"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e9

    .line 3876
    :cond_b8
    const-string v1, "Internal storage ("

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3877
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3878
    const-string v1, ") total size: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3879
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 3880
    const-string v1, " ("

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3881
    sget-object v1, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 3882
    const-string v0, " MiB)"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3885
    :goto_e9
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local unlocked users: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "System unlocked users: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3889
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3890
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Isolated storage, local feature flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isolated_storage_local"

    .line 3892
    invoke-static {v0, v2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3891
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Isolated storage, remote feature flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isolated_storage_remote"

    .line 3894
    invoke-static {v0, v2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3893
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3895
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Isolated storage, resolved: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/storage/StorageManager;->hasIsolatedStorage()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3896
    monitor-exit p2
    :try_end_176
    .catchall {:try_start_17 .. :try_end_176} :catchall_226

    .line 3898
    iget-object p3, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter p3

    .line 3899
    :try_start_179
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3900
    const-string p2, "mObbMounts:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3901
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3902
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 3903
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 3904
    :goto_18e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d3

    .line 3905
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3907
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3908
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3909
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1bf
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1cf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 3910
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3911
    goto :goto_1bf

    .line 3912
    :cond_1cf
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3913
    goto :goto_18e

    .line 3914
    :cond_1d3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3916
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3917
    const-string p2, "mObbPathToStateMap:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3918
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3919
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 3920
    :goto_1eb
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20d

    .line 3921
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3922
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3923
    const-string v1, " -> "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3924
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3925
    goto :goto_1eb

    .line 3926
    :cond_20d
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3927
    monitor-exit p3
    :try_end_211
    .catchall {:try_start_179 .. :try_end_211} :catchall_223

    .line 3929
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3930
    const-string p2, "Last maintenance: "

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3931
    iget-wide p2, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    invoke-static {p2, p3}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3932
    return-void

    .line 3927
    :catchall_223
    move-exception p1

    :try_start_224
    monitor-exit p3
    :try_end_225
    .catchall {:try_start_224 .. :try_end_225} :catchall_223

    throw p1

    .line 3896
    :catchall_226
    move-exception p1

    :try_start_227
    monitor-exit p2
    :try_end_228
    .catchall {:try_start_227 .. :try_end_228} :catchall_226

    throw p1
.end method

.method public encryptStorage(ILjava/lang/String;)I
    .registers 6

    .line 2480
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    .line 2484
    const-string p2, ""

    goto :goto_16

    .line 2485
    :cond_10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 2494
    :goto_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IVold;->fdeEnable(ILjava/lang/String;I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_1e

    .line 2498
    nop

    .line 2500
    return v1

    .line 2495
    :catch_1e
    move-exception p1

    .line 2496
    const-string p2, "StorageManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2497
    const/4 p1, -0x1

    return p1

    .line 2486
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "password cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fixateNewestUserKeyAuth(I)V
    .registers 3

    .line 2826
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2829
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->fixateNewestUserKeyAuth(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 2832
    goto :goto_11

    .line 2830
    :catch_b
    move-exception p1

    .line 2831
    const-string v0, "StorageManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2833
    :goto_11
    return-void
.end method

.method public forgetAllVolumes()V
    .registers 7

    .line 1988
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1990
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1991
    const/4 v1, 0x0

    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 1992
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1993
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    .line 1994
    iget-object v4, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 1995
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1997
    :cond_34
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v3, v2}, Lcom/android/server/StorageManagerService$Callbacks;->access$4500(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    .line 1991
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1999
    :cond_3c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2001
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 2002
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 2005
    :cond_51
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2006
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2007
    monitor-exit v0

    .line 2008
    return-void

    .line 2007
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_9 .. :try_end_63} :catchall_61

    throw v1
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .registers 6

    .line 1964
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1966
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1968
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1969
    :try_start_b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 1970
    if-eqz v1, :cond_28

    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1971
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1973
    :cond_28
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v1, p1}, Lcom/android/server/StorageManagerService$Callbacks;->access$4500(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    .line 1977
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 1978
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1979
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1982
    :cond_46
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1983
    monitor-exit v0

    .line 1984
    return-void

    .line 1983
    :catchall_4b
    move-exception p1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_b .. :try_end_4d} :catchall_4b

    throw p1
.end method

.method public format(Ljava/lang/String;)V
    .registers 4

    .line 1846
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1848
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    .line 1850
    :try_start_9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const-string v1, "auto"

    invoke-interface {v0, p1, v1}, Landroid/os/IVold;->format(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_13

    .line 1853
    goto :goto_19

    .line 1851
    :catch_13
    move-exception p1

    .line 1852
    const-string v0, "StorageManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1854
    :goto_19
    return-void
.end method

.method public fstrim(ILandroid/os/IVoldTaskListener;)V
    .registers 5

    .line 2020
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2027
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->supportsBlockCheckpoint()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1a

    .line 2060
    :cond_12
    const-string p1, "StorageManagerService"

    const-string p2, "Skipping fstrim - block based checkpoint in progress"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 2028
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$8;

    invoke-direct {v1, p0, p2}, Lcom/android/server/StorageManagerService$8;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V

    invoke-interface {v0, p1, v1}, Landroid/os/IVold;->fstrim(ILandroid/os/IVoldTaskListener;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_24} :catch_26

    .line 2064
    :goto_24
    nop

    .line 2065
    return-void

    .line 2062
    :catch_26
    move-exception p1

    .line 2063
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J
    .registers 22

    .line 3245
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v3, v2, v4}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result v2

    .line 3247
    iget-object v3, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 3248
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    .line 3249
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3255
    :try_start_28
    invoke-virtual {v3, v1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 3257
    invoke-virtual {v6}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v7

    .line 3258
    invoke-virtual {v3, v6}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v9

    .line 3259
    invoke-virtual {v3, v6}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v11

    .line 3261
    invoke-virtual {v0, v1}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v13

    const-wide/16 v14, 0x0

    if-eqz v13, :cond_66

    .line 3262
    invoke-virtual {v0, v1}, Landroid/app/usage/StorageStatsManager;->getCacheBytes(Ljava/lang/String;)J

    move-result-wide v0

    .line 3263
    invoke-virtual {v3, v6, v2}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    move-result-wide v16

    .line 3264
    sub-long v0, v0, v16

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 3266
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5c

    .line 3267
    add-long/2addr v7, v0

    sub-long/2addr v7, v11

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_58} :catch_7e
    .catchall {:try_start_28 .. :try_end_58} :catchall_7c

    .line 3283
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3267
    return-wide v0

    .line 3269
    :cond_5c
    add-long/2addr v7, v0

    sub-long/2addr v7, v9

    :try_start_5e
    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_62} :catch_7e
    .catchall {:try_start_5e .. :try_end_62} :catchall_7c

    .line 3283
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3269
    return-wide v0

    .line 3274
    :cond_66
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_73

    .line 3275
    sub-long/2addr v7, v11

    :try_start_6b
    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6f} :catch_7e
    .catchall {:try_start_6b .. :try_end_6f} :catchall_7c

    .line 3283
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3275
    return-wide v0

    .line 3277
    :cond_73
    sub-long/2addr v7, v9

    :try_start_74
    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_78} :catch_7e
    .catchall {:try_start_74 .. :try_end_78} :catchall_7c

    .line 3283
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3277
    return-wide v0

    .line 3283
    :catchall_7c
    move-exception v0

    goto :goto_85

    .line 3280
    :catch_7e
    move-exception v0

    .line 3281
    :try_start_7f
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_85
    .catchall {:try_start_7f .. :try_end_85} :catchall_7c

    .line 3283
    :goto_85
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getCacheQuotaBytes(Ljava/lang/String;I)J
    .registers 7

    .line 3186
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p2, v0, :cond_f

    .line 3187
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STORAGE_INTERNAL"

    const-string v2, "StorageManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3189
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3190
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    .line 3192
    :try_start_1d
    invoke-virtual {v2, p1, p2}, Landroid/app/usage/StorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide p1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_25

    .line 3194
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3192
    return-wide p1

    .line 3194
    :catchall_25
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getCacheSizeBytes(Ljava/lang/String;I)J
    .registers 7

    .line 3200
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p2, v0, :cond_f

    .line 3201
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STORAGE_INTERNAL"

    const-string v2, "StorageManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3203
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3205
    :try_start_13
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    .line 3206
    invoke-virtual {v2, p1, p2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/lang/String;I)Landroid/app/usage/StorageStats;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide p1
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_25} :catch_2b
    .catchall {:try_start_13 .. :try_end_25} :catchall_29

    .line 3210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3205
    return-wide p1

    .line 3210
    :catchall_29
    move-exception p1

    goto :goto_32

    .line 3207
    :catch_2b
    move-exception p1

    .line 3208
    :try_start_2c
    new-instance p2, Landroid/os/ParcelableException;

    invoke-direct {p2, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_29

    .line 3210
    :goto_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getDisks()[Landroid/os/storage/DiskInfo;
    .registers 5

    .line 3153
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3154
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/DiskInfo;

    .line 3155
    const/4 v2, 0x0

    :goto_c
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 3156
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/DiskInfo;

    aput-object v3, v1, v2

    .line 3155
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3158
    :cond_21
    monitor-exit v0

    return-object v1

    .line 3159
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public getEncryptionState()I
    .registers 4

    .line 2435
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    :try_start_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeComplete()I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 2440
    :catch_11
    move-exception v0

    .line 2441
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2442
    const/4 v0, -0x1

    return v0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2628
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 2633
    return-object v1

    .line 2637
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->fdeGetField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_19

    return-object p1

    .line 2638
    :catch_19
    move-exception p1

    .line 2639
    const-string v0, "StorageManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2640
    return-object v1
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2367
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2369
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 2372
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 2373
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 2374
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_3e

    .line 2375
    if-nez v1, :cond_2f

    .line 2376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find OBB mounted at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StorageManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    const/4 p1, 0x0

    return-object p1

    .line 2380
    :cond_2f
    iget-object p1, v1, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2374
    :catchall_3e
    move-exception p1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public getPassword()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2730
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "only keyguard can retrieve password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2734
    :try_start_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeGetPassword()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return-object v0

    .line 2735
    :catch_11
    move-exception v0

    .line 2736
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2737
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPasswordType()I
    .registers 4

    .line 2586
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    :try_start_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeGetPasswordType()I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 2591
    :catch_11
    move-exception v0

    .line 2592
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2593
    const/4 v0, -0x1

    return v0
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .registers 3

    .line 2252
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2253
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2254
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    .registers 34

    .line 3060
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3062
    and-int/lit16 v3, v1, 0x100

    const/4 v5, 0x0

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    goto :goto_10

    :cond_f
    move v3, v5

    .line 3063
    :goto_10
    and-int/lit16 v6, v1, 0x200

    if-eqz v6, :cond_16

    const/4 v6, 0x1

    goto :goto_17

    :cond_16
    move v6, v5

    .line 3064
    :goto_17
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    move v1, v5

    .line 3069
    :goto_1e
    invoke-direct {v0, v5}, Lcom/android/server/StorageManagerService;->isSystemUnlocked(I)Z

    move-result v7

    .line 3073
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3075
    :try_start_26
    invoke-virtual {v0, v2}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v10

    .line 3076
    iget-object v11, v0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    move/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual {v11, v12, v13}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->hasExternalStorage(ILjava/lang/String;)Z

    move-result v11
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_102

    .line 3078
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3079
    nop

    .line 3081
    nop

    .line 3083
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3084
    iget-object v12, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3085
    move v9, v5

    move v13, v9

    :goto_43
    :try_start_43
    iget-object v14, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v9, v14, :cond_ad

    .line 3086
    iget-object v14, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/storage/VolumeInfo;

    .line 3087
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v15

    const/4 v4, 0x2

    if-eqz v15, :cond_60

    if-eq v15, v4, :cond_60

    const/4 v5, 0x5

    if-eq v15, v5, :cond_60

    .line 3093
    goto :goto_a9

    .line 3091
    :cond_60
    nop

    .line 3096
    nop

    .line 3097
    if-eqz v3, :cond_69

    .line 3098
    invoke-virtual {v14, v2}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v5

    goto :goto_7b

    .line 3100
    :cond_69
    invoke-virtual {v14, v2}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v5

    if-nez v5, :cond_7a

    if-eqz v1, :cond_78

    .line 3101
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_78

    goto :goto_7a

    :cond_78
    const/4 v5, 0x0

    goto :goto_7b

    :cond_7a
    :goto_7a
    const/4 v5, 0x1

    .line 3103
    :goto_7b
    if-nez v5, :cond_7e

    goto :goto_a9

    .line 3105
    :cond_7e
    nop

    .line 3106
    if-nez v7, :cond_83

    .line 3107
    const/4 v4, 0x1

    goto :goto_94

    .line 3108
    :cond_83
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    if-ne v5, v4, :cond_8d

    if-nez v10, :cond_8d

    .line 3109
    const/4 v4, 0x1

    goto :goto_94

    .line 3110
    :cond_8d
    if-nez v11, :cond_93

    if-nez v6, :cond_93

    .line 3111
    const/4 v4, 0x1

    goto :goto_94

    .line 3114
    :cond_93
    const/4 v4, 0x0

    :goto_94
    iget-object v5, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v5, v2, v4}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 3116
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 3117
    const/4 v5, 0x0

    invoke-virtual {v8, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3118
    const/4 v13, 0x1

    goto :goto_a9

    .line 3120
    :cond_a6
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3085
    :goto_a9
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    goto :goto_43

    .line 3123
    :cond_ad
    monitor-exit v12
    :try_end_ae
    .catchall {:try_start_43 .. :try_end_ae} :catchall_ff

    .line 3125
    if-nez v13, :cond_f2

    .line 3126
    const-string v1, "StorageManagerService"

    const-string v3, "No primary storage defined yet; hacking together a stub"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    const-string/jumbo v1, "ro.vold.primary_physical"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 3132
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v19

    .line 3133
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const v1, 0x104000e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 3135
    nop

    .line 3136
    nop

    .line 3139
    xor-int/lit8 v23, v22, 0x1

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 3140
    const/16 v28, 0x0

    .line 3143
    new-instance v1, Landroid/os/storage/StorageVolume;

    const/16 v21, 0x1

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const-string/jumbo v17, "stub_primary"

    const-string/jumbo v29, "removed"

    move-object/from16 v16, v1

    move-object/from16 v18, v19

    move-object/from16 v27, v0

    invoke-direct/range {v16 .. v29}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZJLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3148
    :cond_f2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/storage/StorageVolume;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/storage/StorageVolume;

    return-object v0

    .line 3123
    :catchall_ff
    move-exception v0

    :try_start_100
    monitor-exit v12
    :try_end_101
    .catchall {:try_start_100 .. :try_end_101} :catchall_ff

    throw v0

    .line 3078
    :catchall_102
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;
    .registers 5

    .line 3175
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3176
    :try_start_3
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/storage/VolumeRecord;

    .line 3177
    const/4 v1, 0x0

    :goto_c
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 3178
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    aput-object v2, v0, v1

    .line 3177
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 3180
    :cond_21
    monitor-exit p1

    return-object v0

    .line 3181
    :catchall_23
    move-exception v0

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public getVolumes(I)[Landroid/os/storage/VolumeInfo;
    .registers 5

    .line 3164
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3165
    :try_start_3
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/storage/VolumeInfo;

    .line 3166
    const/4 v1, 0x0

    :goto_c
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 3167
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    aput-object v2, v0, v1

    .line 3166
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 3169
    :cond_21
    monitor-exit p1

    return-object v0

    .line 3170
    :catchall_23
    move-exception v0

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public isConvertibleToFBE()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2650
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    :try_start_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->isConvertibleToFbe()Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 2655
    :catch_11
    move-exception v0

    .line 2656
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2657
    const/4 v0, 0x0

    return v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 4

    .line 2385
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2386
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 2387
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 2388
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public isUserKeyUnlocked(I)Z
    .registers 4

    .line 2879
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2880
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 2881
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public synthetic lambda$connectStoraged$1$StorageManagerService()V
    .registers 1

    .line 1592
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    .line 1593
    return-void
.end method

.method public synthetic lambda$connectVold$2$StorageManagerService()V
    .registers 1

    .line 1630
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectVold()V

    .line 1631
    return-void
.end method

.method public synthetic lambda$decryptStorage$4$StorageManagerService()V
    .registers 3

    .line 2463
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeRestart()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 2466
    goto :goto_c

    .line 2464
    :catch_6
    move-exception v0

    .line 2465
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2467
    :goto_c
    return-void
.end method

.method public synthetic lambda$handleSystemReady$0$StorageManagerService(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 801
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshIsolatedStorageSettings()V

    .line 802
    return-void
.end method

.method public synthetic lambda$setDebugFlags$3$StorageManagerService()V
    .registers 3

    .line 2242
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 2243
    return-void
.end method

.method public lastMaintenance()J
    .registers 3

    .line 1065
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide v0
.end method

.method public lockUserKey(I)V
    .registers 4

    .line 2863
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2866
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->lockUserKey(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_1b

    .line 2870
    nop

    .line 2872
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2873
    :try_start_e
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    .line 2874
    monitor-exit v0

    .line 2875
    return-void

    .line 2874
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw p1

    .line 2867
    :catch_1b
    move-exception p1

    .line 2868
    const-string v0, "StorageManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2869
    return-void
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 3009
    const-string v0, ": "

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3010
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3011
    new-instance v3, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v3, v2}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3012
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sys.user."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".ce_available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3015
    invoke-virtual {p0, v2}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v5

    const-string v6, "Failed to prepare "

    if-eqz v5, :cond_f6

    .line 3020
    if-nez v2, :cond_4d

    const/4 v2, 0x0

    .line 3021
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_4d

    .line 3022
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3026
    :cond_4d
    :goto_4d
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 3028
    invoke-virtual {v2, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3030
    nop

    .line 3032
    :try_start_5b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p2
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_64} :catch_d8

    .line 3035
    nop

    .line 3039
    invoke-virtual {v3, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 3040
    invoke-virtual {v3, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 3041
    invoke-virtual {v3, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_84

    goto :goto_9b

    .line 3055
    :cond_84
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mkdirs path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3042
    :cond_9b
    :goto_9b
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 3043
    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b6

    .line 3044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3048
    :cond_b6
    :try_start_b6
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p2, p1}, Landroid/os/IVold;->mkdirs(Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_bb} :catch_bc

    .line 3049
    return-void

    .line 3050
    :catch_bc
    move-exception p2

    .line 3051
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3033
    :catch_d8
    move-exception p1

    .line 3034
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3016
    :cond_f6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public monitor()V
    .registers 3

    .line 3938
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->monitor()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 3941
    goto :goto_c

    .line 3939
    :catch_6
    move-exception v0

    .line 3940
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3942
    :goto_c
    return-void
.end method

.method public mount(Ljava/lang/String;)V
    .registers 5

    .line 1811
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1813
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 1814
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1817
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->mount(Landroid/os/storage/VolumeInfo;)V

    .line 1818
    return-void

    .line 1815
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mounting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " restricted by policy"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;ILandroid/content/res/ObbInfo;)V
    .registers 18

    .line 2394
    const-string/jumbo v0, "rawPath cannot be null"

    move-object v3, p1

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2395
    const-string v0, "canonicalPath cannot be null"

    move-object v4, p2

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2396
    const-string/jumbo v0, "token cannot be null"

    move-object v6, p4

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2397
    const-string/jumbo v0, "obbIfno cannot be null"

    move-object/from16 v9, p6

    invoke-static {v9, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2399
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2400
    new-instance v10, Lcom/android/server/StorageManagerService$ObbState;

    const/4 v8, 0x0

    move-object v1, v10

    move-object v2, p0

    move v5, v0

    move/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;ILjava/lang/String;)V

    .line 2402
    new-instance v7, Lcom/android/server/StorageManagerService$MountObbAction;

    move-object v1, v7

    move-object v3, v10

    move-object v4, p3

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/StorageManagerService$MountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Ljava/lang/String;ILandroid/content/res/ObbInfo;)V

    .line 2403
    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v7}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2407
    return-void
.end method

.method public mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;
    .registers 8

    .line 2953
    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "mountProxyFileDescriptorBridge"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2957
    :goto_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2958
    const/4 v2, 0x0

    .line 2959
    :try_start_10
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez v3, :cond_28

    .line 2960
    new-instance v2, Lcom/android/server/storage/AppFuseBridge;

    invoke-direct {v2}, Lcom/android/server/storage/AppFuseBridge;-><init>()V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 2961
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    const-string v4, "AppFuseBridge"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_58

    .line 2962
    const/4 v2, 0x1

    .line 2965
    :cond_28
    :try_start_28
    iget v3, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I
    :try_end_2e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_28 .. :try_end_2e} :catch_52
    .catchall {:try_start_28 .. :try_end_2e} :catchall_58

    .line 2967
    :try_start_2e
    new-instance v4, Lcom/android/internal/os/AppFuseMount;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    new-instance v6, Lcom/android/server/StorageManagerService$AppFuseMountScope;

    invoke-direct {v6, p0, v0, v3}, Lcom/android/server/StorageManagerService$AppFuseMountScope;-><init>(Lcom/android/server/StorageManagerService;II)V

    .line 2968
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

    .line 2967
    return-object v4

    .line 2969
    :catch_40
    move-exception v3

    .line 2970
    const/4 v4, 0x0

    if-eqz v2, :cond_4d

    .line 2972
    :try_start_44
    const-string v0, "StorageManagerService"

    const-string v2, ""

    invoke-static {v0, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_44 .. :try_end_4b} :catch_52
    .catchall {:try_start_44 .. :try_end_4b} :catchall_58

    .line 2973
    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_58

    return-object v4

    .line 2976
    :cond_4d
    :try_start_4d
    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;
    :try_end_4f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4d .. :try_end_4f} :catch_52
    .catchall {:try_start_4d .. :try_end_4f} :catchall_58

    .line 2980
    nop

    .line 2981
    :try_start_50
    monitor-exit v1

    goto :goto_c

    .line 2978
    :catch_52
    move-exception v0

    .line 2979
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 2981
    :catchall_58
    move-exception v0

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_58

    throw v0
.end method

.method public needsCheckpoint()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2711
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2712
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->needsCheckpoint()Z

    move-result v0

    return v0
.end method

.method public onAwakeStateChanged(Z)V
    .registers 2

    .line 1037
    return-void
.end method

.method public onDaemonConnected()V
    .registers 3

    .line 1069
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 1070
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1071
    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 3

    .line 1043
    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    .line 1044
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iput-boolean p1, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 1046
    :try_start_17
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    invoke-interface {p1, v0}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_1f

    .line 1049
    goto :goto_25

    .line 1047
    :catch_1f
    move-exception p1

    .line 1048
    const-string v0, "StorageManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1050
    :goto_25
    return-void
.end method

.method public openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;
    .registers 7

    .line 2988
    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "mountProxyFileDescriptor"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    const/high16 v0, 0x30000000

    and-int/2addr p3, v0

    .line 2994
    const/4 v0, 0x0

    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_f
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_c .. :try_end_f} :catch_27
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_27

    .line 2995
    :try_start_f
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez v2, :cond_1c

    .line 2996
    const-string p1, "StorageManagerService"

    const-string p2, "FuseBridge has not been created"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    monitor-exit v1

    return-object v0

    .line 2999
    :cond_1c
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/storage/AppFuseBridge;->openFile(III)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 3000
    :catchall_24
    move-exception p1

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_24

    :try_start_26
    throw p1
    :try_end_27
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_26 .. :try_end_27} :catch_27
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_27} :catch_27

    .line 3001
    :catch_27
    move-exception p1

    .line 3002
    const-string p2, "StorageManagerService"

    const-string p3, "The mount point has already been invalid"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3003
    return-object v0
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .registers 6

    .line 1924
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1925
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 1927
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 1929
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x2

    invoke-interface {v1, p1, v2, p2}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 1930
    const-string/jumbo p1, "partitionMixed"

    const-wide/32 v1, 0x2bf20

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_1c

    .line 1933
    goto :goto_22

    .line 1931
    :catch_1c
    move-exception p1

    .line 1932
    const-string p2, "StorageManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1934
    :goto_22
    return-void
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .registers 6

    .line 1910
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1911
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 1913
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 1915
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-interface {v1, p1, v2, v3}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 1916
    const-string/jumbo p1, "partitionPrivate"

    const-wide/32 v1, 0x2bf20

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_1d

    .line 1919
    goto :goto_23

    .line 1917
    :catch_1d
    move-exception p1

    .line 1918
    const-string v0, "StorageManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1920
    :goto_23
    return-void
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .registers 6

    .line 1897
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1899
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 1901
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {v1, p1, v2, v3}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 1902
    const-string/jumbo p1, "partitionPublic"

    const-wide/32 v1, 0x2bf20

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_1a

    .line 1905
    goto :goto_20

    .line 1903
    :catch_1a
    move-exception p1

    .line 1904
    const-string v0, "StorageManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1906
    :goto_20
    return-void
.end method

.method public prepareUserStorage(Ljava/lang/String;III)V
    .registers 6

    .line 2892
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2895
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IVold;->prepareUserStorage(Ljava/lang/String;III)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 2898
    goto :goto_11

    .line 2896
    :catch_b
    move-exception p1

    .line 2897
    const-string p2, "StorageManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2899
    :goto_11
    return-void
.end method

.method public registerListener(Landroid/os/storage/IStorageEventListener;)V
    .registers 3

    .line 1793
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->register(Landroid/os/storage/IStorageEventListener;)V

    .line 1794
    return-void
.end method

.method runIdleMaint(Ljava/lang/Runnable;)V
    .registers 5

    .line 2068
    const-string v0, "StorageManagerService"

    const-string v1, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2075
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->supportsBlockCheckpoint()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_1a

    .line 2089
    :cond_14
    const-string p1, "Skipping idle maintenance - block based checkpoint in progress"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 2076
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v2, Lcom/android/server/StorageManagerService$9;

    invoke-direct {v2, p0, p1}, Lcom/android/server/StorageManagerService$9;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Landroid/os/IVold;->runIdleMaint(Landroid/os/IVoldTaskListener;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_25

    .line 2093
    :goto_24
    goto :goto_29

    .line 2091
    :catch_25
    move-exception p1

    .line 2092
    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2094
    :goto_29
    return-void
.end method

.method public runIdleMaintenance()V
    .registers 2

    .line 2098
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    .line 2099
    return-void
.end method

.method runIdleMaintenance(Ljava/lang/Runnable;)V
    .registers 4

    .line 1053
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1054
    return-void
.end method

.method public runMaintenance()V
    .registers 2

    .line 1059
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1060
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->runIdleMaintenance(Ljava/lang/Runnable;)V

    .line 1061
    return-void
.end method

.method public setDebugFlags(II)V
    .registers 13

    .line 2137
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2139
    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_55

    .line 2144
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 2148
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v0

    if-nez v0, :cond_45

    .line 2153
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2155
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_23

    move v0, v2

    goto :goto_24

    :cond_23
    move v0, v1

    .line 2156
    :goto_24
    :try_start_24
    const-string/jumbo v5, "persist.sys.emulate_fbe"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/PowerManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_24 .. :try_end_3c} :catchall_40

    .line 2161
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2162
    goto :goto_55

    .line 2161
    :catchall_40
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2149
    :cond_45
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Emulation requires disabling \'Secure start-up\' in Settings > Security"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2145
    :cond_4d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Emulation not supported on device with native FBE"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2165
    :cond_55
    :goto_55
    and-int/lit8 v0, p2, 0x3

    const-string v3, "force_off"

    const-string v4, ""

    const-string v5, "force_on"

    const/16 v6, 0xa

    if-eqz v0, :cond_8a

    .line 2168
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_67

    .line 2169
    move-object v0, v5

    goto :goto_6e

    .line 2170
    :cond_67
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_6d

    .line 2171
    move-object v0, v3

    goto :goto_6e

    .line 2173
    :cond_6d
    move-object v0, v4

    .line 2176
    :goto_6e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 2178
    :try_start_72
    const-string/jumbo v9, "persist.sys.adoptable"

    invoke-static {v9, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_81
    .catchall {:try_start_72 .. :try_end_81} :catchall_85

    .line 2183
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2184
    goto :goto_8a

    .line 2183
    :catchall_85
    move-exception p1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2187
    :cond_8a
    :goto_8a
    and-int/lit8 v0, p2, 0x18

    if-eqz v0, :cond_b6

    .line 2190
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_94

    .line 2191
    move-object v3, v5

    goto :goto_9a

    .line 2192
    :cond_94
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_99

    .line 2193
    goto :goto_9a

    .line 2195
    :cond_99
    move-object v3, v4

    .line 2198
    :goto_9a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2200
    :try_start_9e
    const-string/jumbo v0, "persist.sys.sdcardfs"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_ad
    .catchall {:try_start_9e .. :try_end_ad} :catchall_b1

    .line 2205
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2206
    goto :goto_b6

    .line 2205
    :catchall_b1
    move-exception p1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2209
    :cond_b6
    :goto_b6
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_e1

    .line 2210
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_c0

    move v0, v2

    goto :goto_c1

    :cond_c0
    move v0, v1

    .line 2212
    :goto_c1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2214
    :try_start_c5
    const-string/jumbo v5, "persist.sys.virtual_disk"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_d8
    .catchall {:try_start_c5 .. :try_end_d8} :catchall_dc

    .line 2219
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2220
    goto :goto_e1

    .line 2219
    :catchall_dc
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2223
    :cond_e1
    :goto_e1
    and-int/lit16 p2, p2, 0xc0

    if-eqz p2, :cond_117

    .line 2226
    and-int/lit8 p2, p1, 0x40

    if-eqz p2, :cond_eb

    .line 2227
    move v1, v2

    goto :goto_f2

    .line 2228
    :cond_eb
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_f1

    .line 2229
    const/4 v1, -0x1

    goto :goto_f2

    .line 2231
    :cond_f1
    nop

    .line 2234
    :goto_f2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 2236
    :try_start_f6
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "isolated_storage_local"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2238
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshIsolatedStorageSettings()V

    .line 2241
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$StorageManagerService$QRLVSwX20a_sSZQkOpiBHRVs3Cs;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$QRLVSwX20a_sSZQkOpiBHRVs3Cs;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_10e
    .catchall {:try_start_f6 .. :try_end_10e} :catchall_112

    .line 2245
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2246
    goto :goto_117

    .line 2245
    :catchall_112
    move-exception v0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2248
    :cond_117
    :goto_117
    return-void
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2604
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2609
    return-void

    .line 2613
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->fdeSetField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    .line 2614
    return-void

    .line 2615
    :catch_17
    move-exception p1

    .line 2616
    const-string p2, "StorageManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2617
    return-void
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .registers 7

    .line 2259
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2264
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2265
    :try_start_8
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fd

    .line 2269
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-nez v1, :cond_f5

    .line 2272
    iput-object p2, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 2273
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 2276
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p2

    .line 2277
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 2278
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v2

    if-eqz v2, :cond_63

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 2279
    invoke-virtual {p0, v2}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v2

    if-nez v2, :cond_63

    .line 2280
    const-string p1, "StorageManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failing move due to locked user "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    const/16 p1, -0xa

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2282
    monitor-exit v0

    return-void

    .line 2284
    :cond_63
    goto :goto_2a

    .line 2288
    :cond_64
    const-string/jumbo p2, "primary_physical"

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d7

    const-string/jumbo p2, "primary_physical"

    .line 2289
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_79

    goto :goto_d7

    .line 2297
    :cond_79
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/server/StorageManagerService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p2

    .line 2298
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 2300
    const/4 v2, -0x6

    if-nez p2, :cond_a3

    .line 2301
    const-string p1, "StorageManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failing move due to missing from volume "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2303
    monitor-exit v0

    return-void

    .line 2304
    :cond_a3
    if-nez v1, :cond_c0

    .line 2305
    const-string p2, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failing move due to missing to volume "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2307
    monitor-exit v0

    return-void

    .line 2310
    :cond_c0
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_8 .. :try_end_c1} :catchall_114

    .line 2313
    :try_start_c1
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object p2, p2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget-object v0, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    new-instance v1, Lcom/android/server/StorageManagerService$11;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$11;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-interface {p1, p2, v0, v1}, Landroid/os/IVold;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_cf} :catch_d0

    .line 2328
    goto :goto_d6

    .line 2326
    :catch_d0
    move-exception p1

    .line 2327
    const-string p2, "StorageManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2329
    :goto_d6
    return-void

    .line 2290
    :cond_d7
    :goto_d7
    :try_start_d7
    const-string p1, "StorageManagerService"

    const-string p2, "Skipping move to/from primary physical"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    const/16 p1, 0x52

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2292
    const/16 p1, -0x64

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2293
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2294
    monitor-exit v0

    return-void

    .line 2270
    :cond_f5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Move already in progress"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2266
    :cond_fd
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Primary storage already at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2310
    :catchall_114
    move-exception p1

    monitor-exit v0
    :try_end_116
    .catchall {:try_start_d7 .. :try_end_116} :catchall_114

    throw p1
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1938
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1940
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1941
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1942
    :try_start_b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeRecord;

    .line 1943
    iput-object p2, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1944
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {p2, p1}, Lcom/android/server/StorageManagerService$Callbacks;->access$4400(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 1945
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1946
    monitor-exit v0

    .line 1947
    return-void

    .line 1946
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public setVolumeUserFlags(Ljava/lang/String;II)V
    .registers 7

    .line 1951
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1953
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1954
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1955
    :try_start_b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeRecord;

    .line 1956
    iget v1, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    not-int v2, p3

    and-int/2addr v1, v2

    and-int/2addr p2, p3

    or-int/2addr p2, v1

    iput p2, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 1957
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {p2, p1}, Lcom/android/server/StorageManagerService$Callbacks;->access$4400(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 1958
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1959
    monitor-exit v0

    .line 1960
    return-void

    .line 1959
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_25

    throw p1
.end method

.method public shutdown(Landroid/os/storage/IStorageShutdownObserver;)V
    .registers 4

    .line 1803
    const-string v0, "android.permission.SHUTDOWN"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1805
    const-string v0, "StorageManagerService"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1807
    return-void
.end method

.method public startCheckpoint(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2686
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    .line 2690
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->startCheckpoint(I)V

    .line 2691
    return-void

    .line 2687
    :cond_e
    new-instance p1, Ljava/lang/SecurityException;

    const-string/jumbo v0, "no permission to start filesystem checkpoint"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public supportsCheckpoint()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2669
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_f

    .line 2673
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->supportsCheckpoint()Z

    move-result v0

    return v0

    .line 2670
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to check filesystem checkpoint support"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unlockUserKey(II[B[B)V
    .registers 7

    .line 2837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlockUserKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2840
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 2843
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_48

    .line 2844
    :cond_31
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Secret required to unlock secure user "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2848
    :cond_48
    :goto_48
    :try_start_48
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object p3

    .line 2849
    invoke-direct {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object p4

    .line 2848
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IVold;->unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_55} :catch_56

    .line 2853
    goto :goto_5d

    .line 2850
    :catch_56
    move-exception p1

    .line 2851
    const-string p2, "StorageManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2852
    return-void

    .line 2856
    :cond_5d
    :goto_5d
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2857
    :try_start_60
    iget-object p3, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    .line 2858
    monitor-exit p2

    .line 2859
    return-void

    .line 2858
    :catchall_6a
    move-exception p1

    monitor-exit p2
    :try_end_6c
    .catchall {:try_start_60 .. :try_end_6c} :catchall_6a

    throw p1
.end method

.method public unmount(Ljava/lang/String;)V
    .registers 3

    .line 1830
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1832
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    .line 1833
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->unmount(Landroid/os/storage/VolumeInfo;)V

    .line 1834
    return-void
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .registers 15

    .line 2411
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 2415
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 2416
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_4d

    .line 2418
    if-eqz v1, :cond_36

    .line 2420
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2421
    new-instance v0, Lcom/android/server/StorageManagerService$ObbState;

    iget-object v5, v1, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;ILjava/lang/String;)V

    .line 2423
    new-instance p1, Lcom/android/server/StorageManagerService$UnmountObbAction;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/server/StorageManagerService$UnmountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Z)V

    .line 2424
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2428
    goto :goto_4c

    .line 2429
    :cond_36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown OBB mount at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StorageManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    :goto_4c
    return-void

    .line 2416
    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public unregisterListener(Landroid/os/storage/IStorageEventListener;)V
    .registers 3

    .line 1798
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->unregister(Landroid/os/storage/IStorageEventListener;)V

    .line 1799
    return-void
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2556
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "no permission to access the crypt keeper"

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_30

    .line 2560
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CRYPT_KEEPER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2563
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 2572
    :try_start_18
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->fdeVerifyPassword(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1f

    .line 2573
    const/4 p1, 0x0

    return p1

    .line 2574
    :catch_1f
    move-exception p1

    .line 2575
    const-string v0, "StorageManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2576
    const/4 p1, -0x1

    return p1

    .line 2564
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "password cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2557
    :cond_30
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
