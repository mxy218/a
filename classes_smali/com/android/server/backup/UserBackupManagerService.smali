.class public Lcom/android/server/backup/UserBackupManagerService;
.super Ljava/lang/Object;
.source "UserBackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    }
.end annotation


# static fields
.field public static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "ANDROID BACKUP\n"

.field public static final BACKUP_FILE_VERSION:I = 0x5

.field private static final BACKUP_FINISHED_ACTION:Ljava/lang/String; = "android.intent.action.BACKUP_FINISHED"

.field private static final BACKUP_FINISHED_PACKAGE_EXTRA:Ljava/lang/String; = "packageName"

.field public static final BACKUP_MANIFEST_FILENAME:Ljava/lang/String; = "_manifest"

.field public static final BACKUP_MANIFEST_VERSION:I = 0x1

.field public static final BACKUP_METADATA_FILENAME:Ljava/lang/String; = "_meta"

.field public static final BACKUP_METADATA_VERSION:I = 0x1

.field public static final BACKUP_WIDGET_METADATA_TOKEN:I = 0x1ffed01

.field private static final BIND_TIMEOUT_INTERVAL:J = 0x2710L

.field private static final BUSY_BACKOFF_FUZZ:I = 0x6ddd00

.field private static final BUSY_BACKOFF_MIN_MILLIS:J = 0x36ee80L

.field private static final CLEAR_DATA_TIMEOUT_INTERVAL:J = 0x7530L

.field private static final CURRENT_ANCESTRAL_RECORD_VERSION:I = 0x1

.field private static final INITIALIZATION_DELAY_MILLIS:J = 0xbb8L

.field private static final INIT_SENTINEL_FILE_NAME:Ljava/lang/String; = "_need_init_"

.field public static final KEY_WIDGET_STATE:Ljava/lang/String; = "￭￭widget"

.field private static final OP_ACKNOWLEDGED:I = 0x1

.field public static final OP_PENDING:I = 0x0

.field private static final OP_TIMEOUT:I = -0x1

.field public static final OP_TYPE_BACKUP:I = 0x2

.field public static final OP_TYPE_BACKUP_WAIT:I = 0x0

.field public static final OP_TYPE_RESTORE_WAIT:I = 0x1

.field public static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field public static final RUN_BACKUP_ACTION:Ljava/lang/String; = "android.app.backup.intent.RUN"

.field public static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field private static final SCHEDULE_FILE_VERSION:I = 0x1

.field private static final SERIAL_ID_FILE:Ljava/lang/String; = "serial_id"

.field public static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.providers.settings"

.field public static final SHARED_BACKUP_AGENT_PACKAGE:Ljava/lang/String; = "com.android.sharedstoragebackup"

.field private static final TIMEOUT_FULL_CONFIRMATION:J = 0xea60L

.field private static final TRANSPORT_RETRY_INTERVAL:J = 0x36ee80L


# instance fields
.field private mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/params/AdbParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mAgentConnectLock:Ljava/lang/Object;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAncestralPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAncestralSerialNumberFile:Ljava/io/File;

.field private mAncestralToken:J

.field private mAutoRestore:Z

.field private final mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

.field private final mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field private final mBackupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

.field private volatile mBackupRunning:Z

.field private final mBaseStateDir:Ljava/io/File;

.field private final mClearDataLock:Ljava/lang/Object;

.field private volatile mClearingData:Z

.field private mConnectedAgent:Landroid/app/IBackupAgent;

.field private volatile mConnecting:Z

.field private final mConstants:Lcom/android/server/backup/BackupManagerConstants;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentOpLock:Ljava/lang/Object;

.field private final mCurrentOperations:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCurrentOpLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/internal/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentToken:J

.field private final mDataDir:Ljava/io/File;

.field private mEnabled:Z

.field private mFullBackupQueue:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQueueLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/fullbackup/FullBackupEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mFullBackupScheduleFile:Ljava/io/File;

.field private mFullBackupScheduleWriter:Ljava/lang/Runnable;

.field private mIsRestoreInProgress:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingRestores"
        }
    .end annotation
.end field

.field private mJournal:Lcom/android/server/backup/DataChangedJournal;

.field private final mJournalDir:Ljava/io/File;

.field private volatile mLastBackupPass:J

.field private final mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field private mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

.field private final mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/keyvalue/BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingInits:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRestores:Ljava/util/Queue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingRestores"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

.field private final mQueueLock:Ljava/lang/Object;

.field private final mRegisterTransportsRequestedTime:J

.field private final mRng:Ljava/security/SecureRandom;

.field private final mRunBackupIntent:Landroid/app/PendingIntent;

.field private final mRunBackupReceiver:Landroid/content/BroadcastReceiver;

.field private final mRunInitIntent:Landroid/app/PendingIntent;

.field private final mRunInitReceiver:Landroid/content/BroadcastReceiver;

.field private mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQueueLock"
        }
    .end annotation
.end field

.field private mSetupComplete:Z

.field private final mSetupObserver:Landroid/database/ContentObserver;

.field private final mStorageManager:Landroid/os/storage/IStorageManager;

.field private mTokenFile:Ljava/io/File;

.field private final mTokenGenerator:Ljava/util/Random;

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;

.field private final mUserId:I

.field private final mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 911
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

.method private constructor <init>(ILandroid/content/Context;Lcom/android/server/backup/Trampoline;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)V
    .registers 21

    .line 515
    move-object v0, p0

    move v1, p1

    move-object v8, p2

    move-object/from16 v9, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 326
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 329
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 332
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 338
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 346
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 351
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 352
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 366
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    .line 392
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    .line 394
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    .line 395
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 396
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 410
    const/4 v10, 0x0

    iput-object v10, v0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 411
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 412
    iput-wide v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 1043
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/backup/UserBackupManagerService$1;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    .line 1217
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/backup/UserBackupManagerService$2;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    .line 516
    iput v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 517
    const-string v2, "context cannot be null"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 518
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 519
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 520
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 521
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 523
    const-string v2, "alarm"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 524
    const-string/jumbo v2, "power"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 525
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 527
    const-string/jumbo v2, "trampoline cannot be null"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/backup/Trampoline;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/backup/Trampoline;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 530
    new-instance v2, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 531
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/backup/BackupAgentTimeoutParameters;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 532
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->start()V

    .line 534
    const-string/jumbo v2, "userBackupThread cannot be null"

    invoke-static {v9, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    new-instance v2, Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {v2, p0, v9}, Lcom/android/server/backup/internal/BackupHandler;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/HandlerThread;)V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 538
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 539
    invoke-static {p2, p1}, Lcom/android/server/backup/UserBackupManagerService;->getSetupCompleteSettingForUser(Landroid/content/Context;I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 540
    const/4 v11, 0x1

    const-string v3, "backup_auto_restore"

    invoke-static {v2, v3, v11, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v12, 0x0

    if-eqz v3, :cond_10f

    move v3, v11

    goto :goto_110

    :cond_10f
    move v3, v12

    :goto_110
    iput-boolean v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    .line 543
    new-instance v3, Lcom/android/server/backup/internal/SetupObserver;

    iget-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/backup/internal/SetupObserver;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/Handler;)V

    iput-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mSetupObserver:Landroid/database/ContentObserver;

    .line 544
    nop

    .line 545
    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mSetupObserver:Landroid/database/ContentObserver;

    iget v5, v0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 544
    invoke-virtual {v2, v3, v12, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 550
    const-string v2, "baseStateDir cannot be null"

    move-object/from16 v3, p5

    invoke-static {v3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 553
    if-nez v1, :cond_15d

    .line 554
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 555
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_15d

    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELinux restorecon failed on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_15d
    const-string v2, "dataDir cannot be null"

    move-object/from16 v3, p6

    invoke-static {v3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    .line 563
    new-instance v2, Lcom/android/server/backup/BackupPasswordManager;

    iget-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v5, v0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/backup/BackupPasswordManager;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/security/SecureRandom;)V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    .line 566
    new-instance v2, Lcom/android/server/backup/internal/RunBackupReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/backup/internal/RunBackupReceiver;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    .line 567
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 568
    const-string v2, "android.app.backup.intent.RUN"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 569
    iget-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    .line 571
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v7, 0x0

    .line 569
    const-string v6, "android.permission.BACKUP"

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 576
    new-instance v2, Lcom/android/server/backup/internal/RunInitializeReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/backup/internal/RunInitializeReceiver;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 577
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 578
    const-string v2, "android.app.backup.intent.INIT"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 579
    iget-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 581
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 579
    const-string v6, "android.permission.BACKUP"

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 586
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.backup.intent.RUN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    const/high16 v3, 0x40000000  # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 588
    nop

    .line 594
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 589
    invoke-static {p2, v12, v2, v12, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    .line 596
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.app.backup.intent.INIT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 598
    nop

    .line 604
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 599
    invoke-static {p2, v12, v2, v12, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 607
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v4, "pending"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    .line 608
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 609
    iput-object v10, v0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 611
    new-instance v2, Lcom/android/server/backup/BackupManagerConstants;

    iget-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/backup/BackupManagerConstants;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 615
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerConstants;->start()V

    .line 620
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v2

    .line 621
    :try_start_207
    invoke-direct {p0, v10}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    .line 622
    monitor-exit v2
    :try_end_20b
    .catchall {:try_start_207 .. :try_end_20b} :catchall_27c

    .line 624
    const-string/jumbo v2, "transportManager cannot be null"

    move-object/from16 v3, p7

    invoke-static {v3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/TransportManager;

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 625
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    new-instance v3, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$9cuIH_XloqtNByp_6hXeGaVars8;

    invoke-direct {v3, p0}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$9cuIH_XloqtNByp_6hXeGaVars8;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/TransportManager;->setOnTransportRegisteredListener(Lcom/android/server/backup/transport/OnTransportRegisteredListener;)V

    .line 626
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mRegisterTransportsRequestedTime:J

    .line 627
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/backup/-$$Lambda$pM_c5tVAGDtxjxLF_ONtACWWq6Q;

    invoke-direct {v4, v3}, Lcom/android/server/backup/-$$Lambda$pM_c5tVAGDtxjxLF_ONtACWWq6Q;-><init>(Lcom/android/server/backup/TransportManager;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/backup/internal/BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 632
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v3, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$_gNqJq9Ygtc0ZVwYhCSDKCUKrKY;

    invoke-direct {v3, p0}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$_gNqJq9Ygtc0ZVwYhCSDKCUKrKY;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/backup/internal/BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 635
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    iget-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*backup*-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual/range {p4 .. p4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 636
    invoke-virtual {v3, v11, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 641
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string v3, "fb-schedule"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    .line 642
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->initPackageTracking()V

    .line 643
    return-void

    .line 622
    :catchall_27c
    move-exception v0

    :try_start_27d
    monitor-exit v2
    :try_end_27e
    .catchall {:try_start_27d .. :try_end_27e} :catchall_27c

    throw v0
.end method

.method static synthetic access$100(Lcom/android/server/backup/UserBackupManagerService;)Ljava/lang/Object;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;)V
    .registers 2

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 1

    .line 168
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->writeFullBackupScheduleAsync()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 3

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/backup/UserBackupManagerService;)Ljava/util/ArrayList;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/backup/UserBackupManagerService;)Ljava/io/File;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/backup/UserBackupManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V
    .registers 3

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;)V
    .registers 2

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/backup/UserBackupManagerService;)I
    .registers 1

    .line 168
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/backup/UserBackupManagerService;)Landroid/content/pm/PackageManager;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method private addPackageParticipantsLocked([Ljava/lang/String;)V
    .registers 6

    .line 1340
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 1341
    if-eqz p1, :cond_12

    .line 1343
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-object v3, p1, v2

    .line 1344
    invoke-direct {p0, v3, v0}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1343
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1348
    :cond_12
    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1350
    :cond_16
    return-void
.end method

.method private addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 1358
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 1359
    if-eqz p1, :cond_1a

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1360
    :cond_1a
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1361
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 1362
    if-nez v2, :cond_32

    .line 1363
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1364
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1366
    :cond_32
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1371
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v2, 0x10

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1372
    invoke-virtual {v1, v2, v0}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1373
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1375
    :cond_46
    goto :goto_4

    .line 1376
    :cond_47
    return-void
.end method

.method private allAgentPackages()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1420
    nop

    .line 1421
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 1422
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1423
    add-int/lit8 v1, v1, -0x1

    :goto_11
    if-ltz v1, :cond_53

    .line 1424
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1426
    :try_start_19
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1427
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_48

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v4, :cond_48

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x4000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2f

    goto :goto_48

    .line 1435
    :cond_2f
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x400

    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1437
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 1438
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    goto :goto_4b

    .line 1430
    :cond_48
    :goto_48
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_4b} :catch_4c

    .line 1442
    :goto_4b
    goto :goto_50

    .line 1440
    :catch_4c
    move-exception v2

    .line 1441
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1423
    :goto_50
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 1444
    :cond_53
    return-object v0
.end method

.method private clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V
    .registers 10

    .line 1578
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1582
    const/4 v1, 0x1

    if-eqz p2, :cond_1f

    iget p2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1d

    if-lt p2, v3, :cond_1f

    .line 1584
    iget p2, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v0, 0x4000000

    and-int/2addr p2, v0

    if-eqz p2, :cond_1d

    move p2, v1

    goto :goto_28

    :cond_1d
    move p2, v2

    goto :goto_28

    .line 1587
    :cond_1f
    iget p2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_21} :catch_9d

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_27

    move p2, v1

    goto :goto_28

    :cond_27
    move p2, v2

    .line 1591
    :goto_28
    if-nez p2, :cond_2b

    .line 1596
    return-void

    .line 1601
    :cond_2b
    nop

    .line 1603
    new-instance p2, Lcom/android/server/backup/internal/ClearDataObserver;

    invoke-direct {p2, p0}, Lcom/android/server/backup/internal/ClearDataObserver;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 1605
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1606
    :try_start_34
    iput-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z
    :try_end_36
    .catchall {:try_start_34 .. :try_end_36} :catchall_9a

    .line 1608
    :try_start_36
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-interface {v1, p1, p3, p2, v3}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_3e
    .catchall {:try_start_36 .. :try_end_3d} :catchall_9a

    .line 1612
    goto :goto_3f

    .line 1610
    :catch_3e
    move-exception p2

    .line 1615
    :goto_3f
    :try_start_3f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v3, 0x7530

    add-long/2addr p2, v3

    .line 1616
    :goto_46
    iget-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    if-eqz v1, :cond_79

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_9a

    cmp-long v1, v3, p2

    if-gez v1, :cond_79

    .line 1618
    :try_start_52
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_59} :catch_5a
    .catchall {:try_start_52 .. :try_end_59} :catchall_9a

    .line 1624
    :goto_59
    goto :goto_46

    .line 1619
    :catch_5a
    move-exception v1

    .line 1621
    :try_start_5b
    iput-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    .line 1622
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interrupted while waiting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " data to be cleared"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59

    .line 1627
    :cond_79
    iget-boolean p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    if-eqz p2, :cond_98

    .line 1628
    const-string p2, "BackupManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing app data for "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " timed out"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :cond_98
    monitor-exit v0

    .line 1631
    return-void

    .line 1630
    :catchall_9a
    move-exception p1

    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_5b .. :try_end_9c} :catchall_9a

    throw p1

    .line 1598
    :catch_9d
    move-exception p2

    .line 1599
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Tried to clear data for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but not found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackupManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    return-void
.end method

.method public static createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/Trampoline;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 485
    new-instance v8, Lcom/android/server/backup/UserBackupManagerService;

    move-object v0, v8

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/UserBackupManagerService;-><init>(ILandroid/content/Context;Lcom/android/server/backup/Trampoline;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)V

    return-object v8
.end method

.method static createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/Trampoline;Ljava/util/Set;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Lcom/android/server/backup/Trampoline;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Lcom/android/server/backup/UserBackupManagerService;"
        }
    .end annotation

    .line 431
    nop

    .line 433
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 432
    const-string v1, "backup_transport"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 435
    const/4 v0, 0x0

    .line 439
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting with transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v9, Lcom/android/server/backup/TransportManager;

    invoke-direct {v9, p0, p1, p3, v0}, Lcom/android/server/backup/TransportManager;-><init>(ILandroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V

    .line 444
    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v7

    .line 445
    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFiles;->getDataDir(I)Ljava/io/File;

    move-result-object v8

    .line 447
    new-instance v6, Landroid/os/HandlerThread;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "backup-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0xa

    invoke-direct {v6, p3, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 449
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 451
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Started thread "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for user "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    move v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Lcom/android/server/backup/UserBackupManagerService;->createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/Trampoline;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    return-object p0
.end method

.method private dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2323
    if-nez p2, :cond_25

    .line 2324
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dataChanged but no participant pkg=\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' uid="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2325
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2324
    const-string p2, "BackupManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    return-void

    .line 2329
    :cond_25
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2331
    :try_start_28
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 2334
    new-instance p2, Lcom/android/server/backup/keyvalue/BackupRequest;

    invoke-direct {p2, p1}, Lcom/android/server/backup/keyvalue/BackupRequest;-><init>(Ljava/lang/String;)V

    .line 2335
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3e

    .line 2341
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V

    .line 2344
    :cond_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_28 .. :try_end_3f} :catchall_49

    .line 2347
    iget p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {p1, p2, v0}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    .line 2348
    return-void

    .line 2344
    :catchall_49
    move-exception p1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p1
.end method

.method private dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2354
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2355
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2354
    const-string v3, "android.permission.BACKUP"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    .line 2356
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2357
    :try_start_16
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    monitor-exit v0

    return-object p1

    .line 2358
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_24

    throw p1

    .line 2362
    :cond_27
    const-string v0, "@pm@"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 2363
    const-string p1, "@pm@"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1

    .line 2365
    :cond_3a
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter p1

    .line 2366
    :try_start_3d
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/backup/utils/SparseArrayUtils;->union(Landroid/util/SparseArray;)Ljava/util/HashSet;

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 2367
    :catchall_45
    move-exception v0

    monitor-exit p1
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_45

    throw v0
.end method

.method private dequeueFullBackupLocked(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQueueLock"
        }
    .end annotation

    .line 2028
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2029
    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 2030
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 2031
    iget-object v1, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2032
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2029
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2035
    :cond_22
    return-void
.end method

.method private dumpAgents(Ljava/io/PrintWriter;)V
    .registers 5

    .line 3558
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 3559
    const-string v1, "Defined backup agents:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3560
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 3561
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3562
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3563
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 3564
    const-string v2, "      "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3565
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3566
    goto :goto_d

    .line 3567
    :cond_35
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 14

    .line 3570
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3571
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup Manager is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_14

    const-string v2, "enabled"

    goto :goto_16

    :cond_14
    const-string v2, "disabled"

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3572
    iget-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v2, :cond_26

    const-string/jumbo v2, "not "

    goto :goto_28

    :cond_26
    const-string v2, ""

    :goto_28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setup complete / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3573
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_3d

    const-string/jumbo v2, "not "

    goto :goto_3f

    :cond_3d
    const-string v2, ""

    :goto_3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pending init"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3571
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto-restore is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    if-eqz v2, :cond_60

    const-string v2, "enabled"

    goto :goto_62

    :cond_60
    const-string v2, "disabled"

    :goto_62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3575
    iget-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    if-eqz v1, :cond_75

    const-string v1, "Backup currently running"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3576
    :cond_75
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    move-result v1

    if-eqz v1, :cond_7e

    const-string v1, "Backup in progress"

    goto :goto_80

    :cond_7e
    const-string v1, "No backups running"

    :goto_80
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last backup pass started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mLastBackupPass:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (now = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3577
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  next scheduled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v2}, Lcom/android/server/backup/KeyValueBackupJob;->nextScheduled(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3581
    const-string v1, "Transport whitelist:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3582
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1}, Lcom/android/server/backup/TransportManager;->getTransportWhitelist()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ec

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3583
    const-string v3, "    "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3584
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3585
    goto :goto_d3

    .line 3587
    :cond_ec
    const-string v1, "Available transports:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3588
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v1

    .line 3589
    const/4 v2, 0x0

    if-eqz v1, :cond_1b9

    .line 3590
    array-length v3, v1

    move v4, v2

    :goto_fa
    if-ge v4, v3, :cond_1b9

    aget-object v5, v1, v4

    .line 3591
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v7}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_112

    const-string v7, "  * "

    goto :goto_114

    .line 3592
    :cond_112
    const-string v7, "    "

    :goto_114
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3591
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_121
    .catchall {:try_start_3 .. :try_end_121} :catchall_383

    .line 3594
    :try_start_121
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3595
    invoke-virtual {v8, v5}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3596
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "       destination: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3597
    invoke-virtual {v8, v5}, Lcom/android/server/backup/TransportManager;->getTransportCurrentDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3596
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3598
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "       intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3599
    invoke-virtual {v8, v5}, Lcom/android/server/backup/TransportManager;->getTransportConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3598
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3600
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_168
    if-ge v7, v6, :cond_198

    aget-object v8, v5, v7

    .line 3601
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "       "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3602
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " state bytes"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3601
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_195} :catch_199
    .catchall {:try_start_121 .. :try_end_195} :catchall_383

    .line 3600
    add-int/lit8 v7, v7, 0x1

    goto :goto_168

    .line 3607
    :cond_198
    goto :goto_1b5

    .line 3604
    :catch_199
    move-exception v5

    .line 3605
    :try_start_19a
    const-string v6, "BackupManagerService"

    const-string v7, "Error in transport"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3606
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "        Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3590
    :goto_1b5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_fa

    .line 3611
    :cond_1b9
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1, p1}, Lcom/android/server/backup/TransportManager;->dumpTransportClients(Ljava/io/PrintWriter;)V

    .line 3613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending init: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3614
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1de
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1ff

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3616
    goto :goto_1de

    .line 3618
    :cond_1ff
    const-string v1, "Ancestral: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3619
    iget-wide v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3620
    const-string v1, "Current:   "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3621
    iget-wide v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3623
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3624
    const-string v3, "Participants:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3625
    nop

    :goto_227
    if-ge v2, v1, :cond_267

    .line 3626
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3627
    const-string v4, "  uid: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3628
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3629
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 3630
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_243
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_264

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3631
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3632
    goto :goto_243

    .line 3625
    :cond_264
    add-int/lit8 v2, v2, 0x1

    goto :goto_227

    .line 3635
    :cond_267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ancestral packages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3636
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v2, :cond_279

    const-string/jumbo v2, "none"

    goto :goto_283

    :cond_279
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3635
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3637
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-eqz v1, :cond_2b8

    .line 3638
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_297
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3639
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3640
    goto :goto_297

    .line 3643
    :cond_2b8
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v1}, Lcom/android/server/backup/ProcessedPackagesJournal;->getPackagesCopy()Ljava/util/Set;

    move-result-object v1

    .line 3644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ever backed up: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3645
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2da
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2fb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3647
    goto :goto_2da

    .line 3649
    :cond_2fb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pending key/value backup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3650
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_340

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/keyvalue/BackupRequest;

    .line 3651
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3652
    goto :goto_31f

    .line 3654
    :cond_340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full backup queue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3655
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_360
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_381

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 3656
    const-string v3, "    "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3657
    iget-wide v3, v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 3658
    const-string v3, " : "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3659
    iget-object v2, v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3660
    goto :goto_360

    .line 3661
    :cond_381
    monitor-exit v0

    .line 3662
    return-void

    .line 3661
    :catchall_383
    move-exception p1

    monitor-exit v0
    :try_end_385
    .catchall {:try_start_19a .. :try_end_385} :catchall_383

    throw p1
.end method

.method private fullBackupAllowable(Ljava/lang/String;)Z
    .registers 9

    .line 2071
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BackupManagerService"

    if-nez v0, :cond_11

    .line 2072
    const-string p1, "Transport not registered; full data backup not performed"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    return v1

    .line 2079
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2080
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2081
    new-instance p1, Ljava/io/File;

    const-string v3, "@pm@"

    invoke-direct {p1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2082
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gtz p1, :cond_35

    .line 2084
    const-string p1, "Full backup requested but dataset not yet initialized"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_34} :catch_38

    .line 2086
    return v1

    .line 2091
    :cond_35
    nop

    .line 2093
    const/4 p1, 0x1

    return p1

    .line 2088
    :catch_38
    move-exception p1

    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get transport name: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    return v1
.end method

.method private getAncestralSerialNumberFile()Ljava/io/RandomAccessFile;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2446
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    if-nez v0, :cond_1b

    .line 2447
    new-instance v0, Ljava/io/File;

    .line 2448
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "serial_id"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    .line 2450
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/backup/utils/FileUtils;->createNewFile(Ljava/io/File;)Ljava/io/File;

    .line 2452
    :cond_1b
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    const-string/jumbo v2, "rwd"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getMessageIdForOperationType(I)I
    .registers 4

    .line 1810
    if-eqz p1, :cond_20

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1d

    .line 1816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMessageIdForOperationType called on invalid operation type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BackupManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    const/4 p1, -0x1

    return p1

    .line 1814
    :cond_1d
    const/16 p1, 0x12

    return p1

    .line 1812
    :cond_20
    const/16 p1, 0x11

    return p1
.end method

.method public static getSetupCompleteSettingForUser(Landroid/content/Context;I)Z
    .registers 4

    .line 500
    nop

    .line 501
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 500
    const/4 v0, 0x0

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private initPackageTracking()V
    .registers 15

    .line 894
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string v2, "ancestral"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenFile:Ljava/io/File;

    .line 895
    :try_start_b
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_1c} :catch_60
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_57

    const/4 v1, 0x0

    .line 897
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 898
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4c

    .line 899
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 900
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 902
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 903
    if-ltz v2, :cond_4c

    .line 904
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 905
    const/4 v3, 0x0

    :goto_3e
    if-ge v3, v2, :cond_4c

    .line 906
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 907
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_1d .. :try_end_49} :catchall_50

    .line 905
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 911
    :cond_4c
    :try_start_4c
    invoke-static {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_4f} :catch_60
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_57

    goto :goto_68

    .line 895
    :catchall_50
    move-exception v1

    :try_start_51
    throw v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    .line 911
    :catchall_52
    move-exception v2

    :try_start_53
    invoke-static {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_57} :catch_60
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_57} :catch_57

    .line 914
    :catch_57
    move-exception v0

    .line 915
    const-string v1, "BackupManagerService"

    const-string v2, "Unable to read token file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69

    .line 911
    :catch_60
    move-exception v0

    .line 913
    const-string v0, "BackupManagerService"

    const-string v1, "No ancestral data"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :goto_68
    nop

    .line 918
    :goto_69
    new-instance v0, Lcom/android/server/backup/ProcessedPackagesJournal;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/android/server/backup/ProcessedPackagesJournal;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    .line 919
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v0}, Lcom/android/server/backup/ProcessedPackagesJournal;->init()V

    .line 921
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 923
    :try_start_7a
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->readFullBackupSchedule()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 924
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_7a .. :try_end_81} :catchall_c9

    .line 927
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 928
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 929
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 930
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 931
    const-string/jumbo v0, "package"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 932
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 934
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 932
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 940
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 941
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 942
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 943
    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 945
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 943
    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 949
    return-void

    .line 924
    :catchall_c9
    move-exception v1

    :try_start_ca
    monitor-exit v0
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    throw v1
.end method

.method public static synthetic lambda$9cuIH_XloqtNByp_6hXeGaVars8(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$_gNqJq9Ygtc0ZVwYhCSDKCUKrKY(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->parseLeftoverJournals()V

    return-void
.end method

.method private onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mRegisterTransportsRequestedTime:J

    sub-long/2addr v0, v2

    .line 1193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " registered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms after first request (delay = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0xbb8

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1200
    new-instance p2, Ljava/io/File;

    const-string v1, "_need_init_"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_6a

    .line 1202
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1203
    :try_start_50
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1206
    const-wide/32 v0, 0xea60

    .line 1207
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x0

    .line 1208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v0

    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 1207
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1209
    monitor-exit p2

    goto :goto_6a

    :catchall_67
    move-exception p1

    monitor-exit p2
    :try_end_69
    .catchall {:try_start_50 .. :try_end_69} :catchall_67

    throw p1

    .line 1211
    :cond_6a
    :goto_6a
    return-void
.end method

.method private parseLeftoverJournals()V
    .registers 6

    .line 1086
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/backup/DataChangedJournal;->listJournals(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1087
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/DataChangedJournal;

    .line 1088
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/DataChangedJournal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 1090
    :try_start_1e
    new-instance v2, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$W51Aw9Pu9AOsFVYQgIZy31INmwI;

    invoke-direct {v2, p0}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$W51Aw9Pu9AOsFVYQgIZy31INmwI;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/backup/DataChangedJournal;->forEach(Ljava/util/function/Consumer;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_26} :catch_27

    .line 1097
    goto :goto_3e

    .line 1095
    :catch_27
    move-exception v2

    .line 1096
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BackupManagerService"

    invoke-static {v3, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1099
    :cond_3e
    :goto_3e
    goto :goto_a

    .line 1100
    :cond_3f
    return-void
.end method

.method private readFullBackupSchedule()Ljava/util/ArrayList;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/fullbackup/FullBackupEntry;",
            ">;"
        }
    .end annotation

    .line 952
    move-object/from16 v1, p0

    const-string v2, "Package "

    const-string v3, "BackupManagerService"

    .line 953
    nop

    .line 954
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 955
    invoke-static {v0, v4}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v4

    .line 957
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_179

    .line 958
    :try_start_19
    new-instance v10, Ljava/io/FileInputStream;

    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_169

    .line 959
    :try_start_20
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-direct {v11, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_15b

    .line 958
    nop

    .line 960
    :try_start_26
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_14c

    .line 958
    nop

    .line 961
    :try_start_2c
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_13d

    .line 962
    if-eq v0, v8, :cond_68

    .line 963
    :try_start_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown backup schedule version "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_32 .. :try_end_46} :catchall_62

    .line 964
    nop

    .line 1017
    :try_start_47
    invoke-static {v9, v12}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_5c

    :try_start_4a
    invoke-static {v9, v11}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_56

    :try_start_4d
    invoke-static {v9, v10}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_51

    .line 964
    return-object v9

    .line 1017
    :catch_51
    move-exception v0

    move-object v2, v9

    const/4 v7, 0x0

    goto/16 :goto_16d

    .line 958
    :catchall_56
    move-exception v0

    move-object v5, v0

    move-object v2, v9

    const/4 v7, 0x0

    goto/16 :goto_160

    :catchall_5c
    move-exception v0

    move-object v5, v0

    move-object v2, v9

    const/4 v7, 0x0

    goto/16 :goto_151

    :catchall_62
    move-exception v0

    move-object v5, v0

    move-object v2, v9

    const/4 v7, 0x0

    goto/16 :goto_142

    .line 967
    :cond_68
    :try_start_68
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 968
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 974
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15, v13}, Ljava/util/HashSet;-><init>(I)V
    :try_end_76
    .catchall {:try_start_68 .. :try_end_76} :catchall_13d

    .line 976
    const/4 v8, 0x0

    :goto_77
    if-ge v8, v13, :cond_eb

    .line 977
    :try_start_79
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    .line 978
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    .line 979
    invoke-virtual {v15, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_e5

    .line 981
    :try_start_84
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I
    :try_end_88
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_84 .. :try_end_88} :catch_c4
    .catchall {:try_start_84 .. :try_end_88} :catchall_e5

    move/from16 v17, v13

    const/4 v13, 0x0

    :try_start_8b
    invoke-virtual {v0, v9, v13, v7}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 982
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_a8

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 983
    invoke-static {v0, v7}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 985
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    invoke-direct {v0, v9, v5, v6}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_bf

    .line 988
    :cond_a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " no longer eligible for full backup"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8b .. :try_end_bf} :catch_c2
    .catchall {:try_start_8b .. :try_end_bf} :catchall_c0

    .line 997
    :goto_bf
    goto :goto_df

    .line 958
    :catchall_c0
    move-exception v0

    goto :goto_e7

    .line 992
    :catch_c2
    move-exception v0

    goto :goto_c8

    :catch_c4
    move-exception v0

    move/from16 v17, v13

    const/4 v13, 0x0

    .line 994
    :goto_c8
    :try_start_c8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not installed; dropping from full backup"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catchall {:try_start_c8 .. :try_end_df} :catchall_c0

    .line 976
    :goto_df
    add-int/lit8 v8, v8, 0x1

    move/from16 v13, v17

    const/4 v9, 0x0

    goto :goto_77

    .line 958
    :catchall_e5
    move-exception v0

    const/4 v13, 0x0

    :goto_e7
    move-object v5, v0

    move v7, v13

    :goto_e9
    const/4 v2, 0x0

    goto :goto_142

    .line 1002
    :cond_eb
    const/4 v13, 0x0

    :try_start_ec
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_f0
    .catchall {:try_start_ec .. :try_end_f0} :catchall_13a

    move v7, v13

    :goto_f1
    :try_start_f1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_f5
    .catchall {:try_start_f1 .. :try_end_f5} :catchall_136

    if-eqz v2, :cond_126

    :try_start_f7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1003
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_122

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 1004
    invoke-static {v5, v6}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v5

    if-eqz v5, :cond_122

    .line 1006
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_122

    .line 1010
    new-instance v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-direct {v5, v2, v8, v9}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_121
    .catchall {:try_start_f7 .. :try_end_121} :catchall_123

    .line 1011
    const/4 v7, 0x1

    .line 1014
    :cond_122
    goto :goto_f1

    .line 958
    :catchall_123
    move-exception v0

    move-object v5, v0

    goto :goto_e9

    .line 1016
    :cond_126
    :try_start_126
    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_129
    .catchall {:try_start_126 .. :try_end_129} :catchall_136

    .line 1017
    const/4 v2, 0x0

    :try_start_12a
    invoke-static {v2, v12}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_12d
    .catchall {:try_start_12a .. :try_end_12d} :catchall_149

    :try_start_12d
    invoke-static {v2, v11}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_130
    .catchall {:try_start_12d .. :try_end_130} :catchall_158

    :try_start_130
    invoke-static {v2, v10}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_133} :catch_167

    .line 1021
    move v8, v7

    move-object v2, v14

    goto :goto_17c

    .line 958
    :catchall_136
    move-exception v0

    const/4 v2, 0x0

    move-object v5, v0

    goto :goto_142

    :catchall_13a
    move-exception v0

    const/4 v2, 0x0

    goto :goto_140

    :catchall_13d
    move-exception v0

    move-object v2, v9

    const/4 v13, 0x0

    :goto_140
    move-object v5, v0

    move v7, v13

    :goto_142
    :try_start_142
    throw v5
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_143

    .line 1017
    :catchall_143
    move-exception v0

    move-object v6, v0

    :try_start_145
    invoke-static {v5, v12}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_149
    .catchall {:try_start_145 .. :try_end_149} :catchall_149

    .line 958
    :catchall_149
    move-exception v0

    move-object v5, v0

    goto :goto_151

    :catchall_14c
    move-exception v0

    move-object v2, v9

    const/4 v13, 0x0

    move-object v5, v0

    move v7, v13

    :goto_151
    :try_start_151
    throw v5
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_152

    .line 1017
    :catchall_152
    move-exception v0

    move-object v6, v0

    :try_start_154
    invoke-static {v5, v11}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_158
    .catchall {:try_start_154 .. :try_end_158} :catchall_158

    .line 958
    :catchall_158
    move-exception v0

    move-object v5, v0

    goto :goto_160

    :catchall_15b
    move-exception v0

    move-object v2, v9

    const/4 v13, 0x0

    move-object v5, v0

    move v7, v13

    :goto_160
    :try_start_160
    throw v5
    :try_end_161
    .catchall {:try_start_160 .. :try_end_161} :catchall_161

    .line 1017
    :catchall_161
    move-exception v0

    move-object v6, v0

    :try_start_163
    invoke-static {v5, v10}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_167} :catch_167

    :catch_167
    move-exception v0

    goto :goto_16d

    :catch_169
    move-exception v0

    move-object v2, v9

    const/4 v13, 0x0

    move v7, v13

    .line 1018
    :goto_16d
    const-string v5, "Unable to read backup schedule"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1019
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1020
    move v8, v7

    goto :goto_17c

    .line 957
    :cond_179
    move-object v2, v9

    const/4 v13, 0x0

    move v8, v13

    .line 1024
    :goto_17c
    if-nez v2, :cond_1bb

    .line 1027
    nop

    .line 1028
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1029
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 1030
    invoke-static {v3}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_1b5

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v4

    if-eqz v4, :cond_1b5

    .line 1032
    new-instance v4, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v3, v5, v6}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b7

    .line 1030
    :cond_1b5
    const-wide/16 v5, 0x0

    .line 1034
    :goto_1b7
    goto :goto_18c

    .line 1029
    :cond_1b8
    const/16 v16, 0x1

    goto :goto_1bd

    .line 1024
    :cond_1bb
    move/from16 v16, v8

    .line 1037
    :goto_1bd
    if-eqz v16, :cond_1c2

    .line 1038
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->writeFullBackupScheduleAsync()V

    .line 1040
    :cond_1c2
    return-object v2
.end method

.method private removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1404
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1412
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1413
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    :cond_e
    return-void
.end method

.method private removePackageParticipantsLocked([Ljava/lang/String;I)V
    .registers 8

    .line 1380
    if-nez p1, :cond_b

    .line 1381
    const-string p1, "BackupManagerService"

    const-string/jumbo p2, "removePackageParticipants with null list"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    return-void

    .line 1389
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_32

    aget-object v2, p1, v1

    .line 1391
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 1392
    if-eqz v3, :cond_2f

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1393
    invoke-direct {p0, v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 1394
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1396
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1389
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1400
    :cond_32
    return-void
.end method

.method private startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V
    .registers 6

    .line 2770
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2772
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/32 v0, 0xea60

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2773
    return-void
.end method

.method private startConfirmationUi(ILjava/lang/String;)Z
    .registers 5

    .line 2753
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2754
    const-string p2, "com.android.backupconfirm"

    const-string v1, "com.android.backupconfirm.BackupRestoreConfirmation"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2756
    const-string p2, "conftoken"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2757
    const/high16 p1, 0x20000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2758
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1d} :catch_20

    .line 2761
    nop

    .line 2762
    const/4 p1, 0x1

    return p1

    .line 2759
    :catch_20
    move-exception p1

    .line 2760
    const/4 p1, 0x0

    return p1
.end method

.method private updateStateForTransport(Ljava/lang/String;)V
    .registers 10

    .line 3138
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "backup_transport"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3142
    nop

    .line 3143
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3144
    const-string v1, "BMS.updateStateForTransport()"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    .line 3145
    const-wide/16 v2, 0x0

    const-string v4, "Transport "

    const-string v5, "BackupManagerService"

    if-eqz v0, :cond_49

    .line 3147
    :try_start_1e
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v6

    .line 3148
    invoke-interface {v6}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_29

    .line 3154
    goto :goto_43

    .line 3149
    :catch_29
    move-exception v6

    .line 3152
    iput-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 3153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not available: current token = 0"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    :goto_43
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    goto :goto_62

    .line 3157
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not registered: current token = 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    iput-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 3162
    :goto_62
    return-void
.end method

.method private waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .registers 4

    .line 2776
    iget-object v0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 2777
    :goto_3
    :try_start_3
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    if-nez v1, :cond_13

    .line 2779
    :try_start_b
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    goto :goto_12

    .line 2780
    :catch_11
    move-exception v1

    :goto_12
    goto :goto_3

    .line 2782
    :cond_13
    :try_start_13
    monitor-exit v0

    .line 2783
    return-void

    .line 2782
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw p1
.end method

.method private writeFullBackupScheduleAsync()V
    .registers 3

    .line 1081
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1082
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1083
    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .registers 5

    .line 2373
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/backup/DataChangedJournal;->newJournal(Ljava/io/File;)Lcom/android/server/backup/DataChangedJournal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 2374
    :cond_c
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/DataChangedJournal;->addPackage(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    .line 2378
    goto :goto_31

    .line 2375
    :catch_12
    move-exception v0

    .line 2376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to backup journal"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BackupManagerService"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2377
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 2379
    :goto_31
    return-void
.end method


# virtual methods
.method public acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 12

    .line 2800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeAdbBackupOrRestore : token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " allow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "acknowledgeAdbBackupOrRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2813
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_80

    .line 2814
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/params/AdbParams;

    .line 2815
    if-eqz v3, :cond_70

    .line 2816
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v3}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2817
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2819
    if-eqz p2, :cond_65

    .line 2820
    instance-of p1, v3, Lcom/android/server/backup/params/AdbBackupParams;

    if-eqz p1, :cond_4c

    .line 2821
    const/4 p1, 0x2

    goto :goto_4e

    .line 2822
    :cond_4c
    const/16 p1, 0xa

    .line 2824
    :goto_4e
    iput-object p5, v3, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 2825
    iput-object p3, v3, Lcom/android/server/backup/params/AdbParams;->curPassword:Ljava/lang/String;

    .line 2827
    iput-object p4, v3, Lcom/android/server/backup/params/AdbParams;->encryptPassword:Ljava/lang/String;

    .line 2830
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 2831
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {p2, p1, v3}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2832
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {p2, p1}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2833
    goto :goto_77

    .line 2834
    :cond_65
    const-string p1, "BackupManagerService"

    const-string p2, "User rejected full backup/restore operation"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    invoke-virtual {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    goto :goto_77

    .line 2839
    :cond_70
    const-string p1, "BackupManagerService"

    const-string p2, "Attempted to ack full backup/restore with invalid token"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    :goto_77
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_2e .. :try_end_78} :catchall_7d

    .line 2843
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2844
    nop

    .line 2845
    return-void

    .line 2841
    :catchall_7d
    move-exception p1

    :try_start_7e
    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw p1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_80

    .line 2843
    :catchall_80
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .registers 26

    .line 2559
    move-object v0, p0

    move/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v11, p10

    iget-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "adbBackup"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2561
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2563
    if-nez v1, :cond_1a6

    .line 2568
    if-nez v7, :cond_28

    .line 2569
    if-nez v5, :cond_28

    .line 2573
    if-eqz v11, :cond_20

    array-length v1, v11

    if-eqz v1, :cond_20

    goto :goto_28

    .line 2574
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Backup requested but neither shared nor any apps named"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2580
    :cond_28
    :goto_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2582
    :try_start_2c
    iget-boolean v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v1, :cond_62

    .line 2583
    const-string v0, "BackupManagerService"

    const-string v1, "Backup not supported before setup"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_179

    .line 2623
    :try_start_37
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 2626
    goto :goto_57

    .line 2624
    :catch_3b
    move-exception v0

    move-object v1, v0

    .line 2625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO error closing output for adb backup: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    :goto_57
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2628
    const-string v0, "BackupManagerService"

    const-string v1, "Adb backup processing complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    return-void

    .line 2588
    :cond_62
    :try_start_62
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting backup: apks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " obb="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " shared="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " all="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " system="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " includekeyvalue="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p9

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " pkgs="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    const-string v1, "BackupManagerService"

    const-string v2, "Beginning adb backup..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    new-instance v14, Lcom/android/server/backup/params/AdbBackupParams;

    move-object v1, v14

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/android/server/backup/params/AdbBackupParams;-><init>(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    .line 2597
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v1

    .line 2598
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_d8
    .catchall {:try_start_62 .. :try_end_d8} :catchall_179

    .line 2599
    :try_start_d8
    iget-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2600
    monitor-exit v2
    :try_end_de
    .catchall {:try_start_d8 .. :try_end_de} :catchall_176

    .line 2603
    :try_start_de
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting backup confirmation UI, token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    const-string v2, "fullback"

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_133

    .line 2605
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to launch backup confirmation UI"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_108
    .catchall {:try_start_de .. :try_end_108} :catchall_179

    .line 2623
    :try_start_108
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_10b} :catch_10c

    .line 2626
    goto :goto_128

    .line 2624
    :catch_10c
    move-exception v0

    move-object v1, v0

    .line 2625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO error closing output for adb backup: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    :goto_128
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2628
    const-string v0, "BackupManagerService"

    const-string v1, "Adb backup processing complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    return-void

    .line 2611
    :cond_133
    :try_start_133
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 2616
    invoke-direct {p0, v1, v14}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V

    .line 2619
    const-string v1, "BackupManagerService"

    const-string v2, "Waiting for backup completion..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    invoke-direct {p0, v14}, Lcom/android/server/backup/UserBackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    :try_end_14a
    .catchall {:try_start_133 .. :try_end_14a} :catchall_179

    .line 2623
    :try_start_14a
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_14d} :catch_14e

    .line 2626
    goto :goto_16a

    .line 2624
    :catch_14e
    move-exception v0

    move-object v1, v0

    .line 2625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO error closing output for adb backup: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    :goto_16a
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2628
    const-string v0, "BackupManagerService"

    const-string v1, "Adb backup processing complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    nop

    .line 2630
    return-void

    .line 2600
    :catchall_176
    move-exception v0

    :try_start_177
    monitor-exit v2
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_176

    :try_start_178
    throw v0
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_179

    .line 2622
    :catchall_179
    move-exception v0

    move-object v1, v0

    .line 2623
    :try_start_17b
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_17e} :catch_17f

    .line 2626
    goto :goto_19b

    .line 2624
    :catch_17f
    move-exception v0

    move-object v2, v0

    .line 2625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO error closing output for adb backup: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BackupManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    :goto_19b
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2628
    const-string v0, "BackupManagerService"

    const-string v2, "Adb backup processing complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    .line 2564
    :cond_1a6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Backup supported only for the device owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public adbRestore(Landroid/os/ParcelFileDescriptor;)V
    .registers 10

    .line 2697
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "adbRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2701
    if-nez v0, :cond_115

    .line 2705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2708
    :try_start_13
    iget-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v2, :cond_44

    .line 2709
    const-string v2, "BackupManagerService"

    const-string v3, "Full restore not permitted before setup"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_ee

    .line 2742
    :try_start_1e
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    .line 2745
    goto :goto_39

    .line 2743
    :catch_22
    move-exception p1

    .line 2744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trying to close fd after adb restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BackupManagerService"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    :goto_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2747
    const-string p1, "BackupManagerService"

    const-string v0, "adb restore processing complete."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    return-void

    .line 2713
    :cond_44
    :try_start_44
    const-string v2, "BackupManagerService"

    const-string v3, "Beginning restore..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    new-instance v2, Lcom/android/server/backup/params/AdbRestoreParams;

    invoke-direct {v2, p1}, Lcom/android/server/backup/params/AdbRestoreParams;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2716
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v3

    .line 2717
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_57
    .catchall {:try_start_44 .. :try_end_57} :catchall_ee

    .line 2718
    :try_start_57
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2719
    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_eb

    .line 2722
    :try_start_5d
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting restore confirmation UI, token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    const-string v4, "fullrest"

    invoke-direct {p0, v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ad

    .line 2724
    const-string v2, "BackupManagerService"

    const-string v4, "Unable to launch restore confirmation"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V
    :try_end_87
    .catchall {:try_start_5d .. :try_end_87} :catchall_ee

    .line 2742
    :try_start_87
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    .line 2745
    goto :goto_a2

    .line 2743
    :catch_8b
    move-exception p1

    .line 2744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trying to close fd after adb restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BackupManagerService"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    :goto_a2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2747
    const-string p1, "BackupManagerService"

    const-string v0, "adb restore processing complete."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    return-void

    .line 2730
    :cond_ad
    :try_start_ad
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v7}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 2735
    invoke-direct {p0, v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V

    .line 2738
    const-string v3, "BackupManagerService"

    const-string v4, "Waiting for restore completion..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    invoke-direct {p0, v2}, Lcom/android/server/backup/UserBackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    :try_end_c4
    .catchall {:try_start_ad .. :try_end_c4} :catchall_ee

    .line 2742
    :try_start_c4
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c8

    .line 2745
    goto :goto_df

    .line 2743
    :catch_c8
    move-exception p1

    .line 2744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trying to close fd after adb restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BackupManagerService"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    :goto_df
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2747
    const-string p1, "BackupManagerService"

    const-string v0, "adb restore processing complete."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    nop

    .line 2749
    return-void

    .line 2719
    :catchall_eb
    move-exception v2

    :try_start_ec
    monitor-exit v4
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    :try_start_ed
    throw v2
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ee

    .line 2741
    :catchall_ee
    move-exception v2

    .line 2742
    :try_start_ef
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f2} :catch_f3

    .line 2745
    goto :goto_10a

    .line 2743
    :catch_f3
    move-exception p1

    .line 2744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error trying to close fd after adb restore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "BackupManagerService"

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    :goto_10a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2747
    const-string p1, "BackupManagerService"

    const-string v0, "adb restore processing complete."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v2

    .line 2702
    :cond_115
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Restore supported only for the device owner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 7

    .line 3251
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3252
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_33

    .line 3253
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "agentConnected pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " agent="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 3255
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    goto :goto_52

    .line 3257
    :cond_33
    const-string p1, "BackupManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-system process uid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " claiming agent connected"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    :goto_52
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 3261
    monitor-exit v0

    .line 3262
    return-void

    .line 3261
    :catchall_59
    move-exception p1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw p1
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .registers 5

    .line 3271
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3272
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_12

    .line 3273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 3274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    goto :goto_31

    .line 3276
    :cond_12
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system process uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " claiming agent disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    :goto_31
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3280
    monitor-exit p1

    .line 3281
    return-void

    .line 3280
    :catchall_38
    move-exception v0

    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public backupNow()V
    .registers 6

    .line 2520
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "backupNow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2522
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2524
    :try_start_d
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x5

    .line 2525
    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v2

    .line 2526
    iget-boolean v2, v2, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v2, :cond_29

    .line 2527
    const-string v2, "BackupManagerService"

    const-string v3, "Not running backup while in battery save mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v2, v3, v4}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    goto :goto_4c

    .line 2531
    :cond_29
    const-string v2, "BackupManagerService"

    const-string v3, "Scheduling immediate backup pass"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_53

    .line 2535
    :try_start_33
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_38
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_33 .. :try_end_38} :catch_3b
    .catchall {:try_start_33 .. :try_end_38} :catchall_39

    .line 2539
    goto :goto_44

    .line 2543
    :catchall_39
    move-exception v3

    goto :goto_51

    .line 2536
    :catch_3b
    move-exception v3

    .line 2538
    :try_start_3c
    const-string v3, "BackupManagerService"

    const-string/jumbo v4, "run-backup intent cancelled!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    :goto_44
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(ILandroid/content/Context;)V

    .line 2543
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_3c .. :try_end_4c} :catchall_39

    .line 2546
    :goto_4c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2547
    nop

    .line 2548
    return-void

    .line 2543
    :goto_51
    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_39

    :try_start_52
    throw v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 2546
    :catchall_53
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public backupPasswordMatches(Ljava/lang/String;)Z
    .registers 3

    .line 1121
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupPasswordManager;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .registers 22

    .line 2107
    move-object/from16 v11, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2110
    iget-object v3, v11, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    monitor-enter v3

    .line 2111
    :try_start_9
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupIntervalMilliseconds()J

    move-result-wide v4

    .line 2112
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupIntervalMilliseconds()J

    move-result-wide v6

    .line 2113
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_1ad

    .line 2114
    const/4 v0, 0x0

    .line 2115
    nop

    .line 2117
    iget-boolean v3, v11, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    const/4 v8, 0x0

    if-eqz v3, :cond_1ab

    iget-boolean v3, v11, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v3, :cond_23

    goto/16 :goto_1ab

    .line 2130
    :cond_23
    iget-object v3, v11, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v9, 0x4

    .line 2131
    invoke-virtual {v3, v9}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v3

    .line 2132
    iget-boolean v3, v3, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v3, :cond_3f

    .line 2133
    const-string v0, "BackupManagerService"

    const-string v1, "Deferring scheduled full backups in battery saver mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    iget v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v1, v11, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v0, v1, v6, v7, v2}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 2135
    return v8

    .line 2139
    :cond_3f
    const-string v3, "BackupManagerService"

    const-string v9, "Beginning scheduled full backup operation"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    iget-object v12, v11, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2144
    :try_start_49
    iget-object v3, v11, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v3, :cond_56

    .line 2145
    const-string v0, "BackupManagerService"

    const-string v1, "Backup triggered but one already/still running!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    monitor-exit v12

    return v8

    .line 2152
    :cond_56
    move-object v3, v0

    move-wide v9, v4

    const/4 v0, 0x1

    .line 2158
    :goto_59
    iget-object v14, v11, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_6c

    .line 2161
    const-string v0, "BackupManagerService"

    const-string v1, "Backup queue empty; doing nothing"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    nop

    .line 2164
    move v0, v8

    goto/16 :goto_146

    .line 2167
    :cond_6c
    nop

    .line 2169
    iget-object v14, v11, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v14}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v14

    .line 2170
    invoke-direct {v11, v14}, Lcom/android/server/backup/UserBackupManagerService;->fullBackupAllowable(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7c

    .line 2174
    nop

    .line 2178
    move-wide v9, v6

    move v0, v8

    .line 2181
    :cond_7c
    if-eqz v0, :cond_141

    .line 2182
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 2183
    iget-wide v14, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J
    :try_end_89
    .catchall {:try_start_49 .. :try_end_89} :catchall_1a8

    sub-long v14, v1, v14

    .line 2184
    cmp-long v0, v14, v4

    if-ltz v0, :cond_91

    const/4 v0, 0x1

    goto :goto_92

    :cond_91
    move v0, v8

    .line 2185
    :goto_92
    if-nez v0, :cond_98

    .line 2191
    sub-long v9, v4, v14

    .line 2192
    goto/16 :goto_146

    .line 2196
    :cond_98
    :try_start_98
    iget-object v14, v11, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v15, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    iget v13, v11, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v14, v15, v8, v13}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 2198
    invoke-static {v13}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v14
    :try_end_a6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_98 .. :try_end_a6} :catch_130
    .catchall {:try_start_98 .. :try_end_a6} :catchall_1a8

    if-nez v14, :cond_b8

    .line 2206
    :try_start_a8
    iget-object v13, v11, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_ad
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a8 .. :try_end_ad} :catch_b3
    .catchall {:try_start_a8 .. :try_end_ad} :catchall_1a8

    .line 2207
    nop

    .line 2208
    move-wide/from16 v18, v1

    const/4 v8, 0x1

    goto/16 :goto_144

    .line 2231
    :catch_b3
    move-exception v0

    move-wide/from16 v18, v1

    goto/16 :goto_134

    .line 2211
    :cond_b8
    :try_start_b8
    iget-object v14, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_bc
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b8 .. :try_end_bc} :catch_130
    .catchall {:try_start_b8 .. :try_end_bc} :catchall_1a8

    .line 2212
    and-int/lit16 v14, v14, 0x2000

    if-nez v14, :cond_ce

    :try_start_c0
    iget-object v14, v11, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2213
    invoke-virtual {v14, v13}, Landroid/app/ActivityManagerInternal;->isAppForeground(I)Z

    move-result v13
    :try_end_ca
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c0 .. :try_end_ca} :catch_b3
    .catchall {:try_start_c0 .. :try_end_ca} :catchall_1a8

    if-eqz v13, :cond_ce

    const/4 v13, 0x1

    goto :goto_cf

    :cond_ce
    move v13, v8

    .line 2216
    :goto_cf
    if-eqz v13, :cond_128

    .line 2217
    :try_start_d1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0x36ee80

    add-long v14, v14, v16

    iget-object v8, v11, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    move/from16 v17, v0

    const v0, 0x6ddd00

    .line 2219
    invoke-virtual {v8, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0
    :try_end_e5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d1 .. :try_end_e5} :catch_123
    .catchall {:try_start_d1 .. :try_end_e5} :catchall_1a8

    move-wide/from16 v18, v1

    int-to-long v0, v0

    add-long/2addr v14, v0

    .line 2221
    :try_start_e9
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2222
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Full backup time but "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is busy; deferring to "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 2224
    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2222
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    sub-long/2addr v14, v4

    invoke-virtual {v11, v0, v14, v15}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_120
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e9 .. :try_end_120} :catch_121
    .catchall {:try_start_e9 .. :try_end_120} :catchall_1a8

    goto :goto_12c

    .line 2231
    :catch_121
    move-exception v0

    goto :goto_126

    :catch_123
    move-exception v0

    move-wide/from16 v18, v1

    :goto_126
    move v8, v13

    goto :goto_134

    .line 2216
    :cond_128
    move/from16 v17, v0

    move-wide/from16 v18, v1

    .line 2237
    :goto_12c
    move v8, v13

    move/from16 v0, v17

    goto :goto_144

    .line 2231
    :catch_130
    move-exception v0

    move-wide/from16 v18, v1

    const/4 v8, 0x0

    .line 2236
    :goto_134
    :try_start_134
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_13f

    const/4 v0, 0x1

    goto :goto_144

    :cond_13f
    const/4 v0, 0x0

    goto :goto_144

    .line 2181
    :cond_141
    move-wide/from16 v18, v1

    const/4 v8, 0x0

    .line 2239
    :goto_144
    if-nez v8, :cond_1a2

    .line 2241
    :goto_146
    if-nez v0, :cond_16b

    .line 2243
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nothing pending full backup; rescheduling +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    nop

    .line 2246
    iget v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v1, v11, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v0, v1, v9, v10, v2}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 2247
    monitor-exit v12

    const/4 v1, 0x0

    return v1

    .line 2251
    :cond_16b
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2252
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2253
    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2254
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "BMS.beginFullBackup()"

    move-object/from16 v1, p0

    move-object v3, v0

    move-object/from16 v5, p1

    invoke-static/range {v1 .. v10}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->newWithCurrentTransport(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 2266
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 2267
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, v11, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2268
    monitor-exit v12

    .line 2270
    const/4 v1, 0x1

    return v1

    .line 2239
    :cond_1a2
    const/4 v1, 0x1

    move-wide/from16 v1, v18

    const/4 v8, 0x0

    goto/16 :goto_59

    .line 2268
    :catchall_1a8
    move-exception v0

    monitor-exit v12
    :try_end_1aa
    .catchall {:try_start_134 .. :try_end_1aa} :catchall_1a8

    throw v0

    .line 2125
    :cond_1ab
    :goto_1ab
    const/4 v1, 0x0

    return v1

    .line 2113
    :catchall_1ad
    move-exception v0

    :try_start_1ae
    monitor-exit v3
    :try_end_1af
    .catchall {:try_start_1ae .. :try_end_1af} :catchall_1ad

    throw v0
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 7

    .line 3374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beginRestoreSession: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    nop

    .line 3379
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_74

    .line 3380
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {p2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object p2

    .line 3382
    if-eqz p1, :cond_74

    .line 3383
    nop

    .line 3385
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v2, p1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_34} :catch_41

    .line 3389
    nop

    .line 3391
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-ne v2, v3, :cond_74

    .line 3395
    move v1, v0

    goto :goto_74

    .line 3386
    :catch_41
    move-exception p2

    .line 3387
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Asked to restore nonexistent pkg "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BackupManagerService"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3400
    :cond_74
    :goto_74
    if-eqz v1, :cond_80

    .line 3401
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "beginRestoreSession"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88

    .line 3404
    :cond_80
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "restoring self on current transport; no permission needed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    :goto_88
    monitor-enter p0

    .line 3408
    :try_start_89
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_97

    .line 3409
    const-string p1, "BackupManagerService"

    const-string p2, "Restore session requested but one already active"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    monitor-exit p0

    return-object v1

    .line 3412
    :cond_97
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    if-eqz v0, :cond_a4

    .line 3413
    const-string p1, "BackupManagerService"

    const-string p2, "Restore session requested but currently running backups"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    monitor-exit p0

    return-object v1

    .line 3416
    :cond_a4
    new-instance v0, Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/backup/restore/ActiveRestoreSession;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 3417
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 p2, 0x8

    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 3418
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v0

    .line 3417
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3419
    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_89 .. :try_end_b9} :catchall_bc

    .line 3420
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-object p1

    .line 3419
    :catchall_bc
    move-exception p1

    :try_start_bd
    monitor-exit p0
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw p1
.end method

.method public bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
    .registers 10

    .line 1499
    nop

    .line 1500
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1501
    const/4 v1, 0x1

    :try_start_5
    iput-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    .line 1502
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_ab

    .line 1504
    :try_start_a
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-interface {v2, v3, p2, v4}, Landroid/app/IActivityManager;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result p2

    if-eqz p2, :cond_9e

    .line 1505
    const-string p2, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "awaiting agent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    .line 1510
    :goto_33
    iget-boolean p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    if-eqz p2, :cond_68

    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez p2, :cond_68

    .line 1511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3f} :catch_9f
    .catchall {:try_start_a .. :try_end_3f} :catchall_ab

    cmp-long p2, v4, v2

    if-gez p2, :cond_68

    .line 1513
    :try_start_43
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1388

    invoke-virtual {p2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_4a} :catch_4b
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4a} :catch_9f
    .catchall {:try_start_43 .. :try_end_4a} :catchall_ab

    .line 1519
    :goto_4a
    goto :goto_33

    .line 1514
    :catch_4b
    move-exception p2

    .line 1516
    :try_start_4c
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interrupted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    .line 1518
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    goto :goto_4a

    .line 1523
    :cond_68
    iget-boolean p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    if-eqz p2, :cond_84

    .line 1524
    const-string p2, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout waiting for agent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 1527
    :cond_84
    const-string p1, "BackupManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got agent "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_9e} :catch_9f
    .catchall {:try_start_4c .. :try_end_9e} :catchall_ab

    .line 1532
    :cond_9e
    goto :goto_a0

    .line 1530
    :catch_9f
    move-exception p1

    .line 1533
    :goto_a0
    :try_start_a0
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_ab

    .line 1534
    if-nez v1, :cond_aa

    .line 1535
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/app/ActivityManagerInternal;->clearPendingBackup(I)V

    .line 1537
    :cond_aa
    return-object v1

    .line 1533
    :catchall_ab
    move-exception p1

    :try_start_ac
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw p1
.end method

.method public cancelBackups()V
    .registers 9

    .line 1760
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "cancelBackups"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1766
    :try_start_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1767
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_75

    .line 1768
    const/4 v4, 0x0

    :goto_16
    :try_start_16
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3b

    .line 1769
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/internal/Operation;

    .line 1770
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 1771
    iget v5, v5, Lcom/android/server/backup/internal/Operation;->type:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_38

    .line 1772
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1768
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1775
    :cond_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_16 .. :try_end_3c} :catchall_72

    .line 1776
    :try_start_3c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1777
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(IZ)V

    .line 1778
    goto :goto_40

    .line 1781
    :cond_55
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v4, 0x36ee80

    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 1782
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v4, 0x6ddd00

    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V
    :try_end_6d
    .catchall {:try_start_3c .. :try_end_6d} :catchall_75

    .line 1784
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1785
    nop

    .line 1786
    return-void

    .line 1775
    :catchall_72
    move-exception v2

    :try_start_73
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    :try_start_74
    throw v2
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    .line 1784
    :catchall_75
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V
    .registers 4

    .line 1554
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V

    .line 1555
    return-void
.end method

.method public clearApplicationDataBeforeRestore(Ljava/lang/String;)V
    .registers 4

    .line 1562
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V

    .line 1563
    return-void
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 2463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearBackupData() of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x8000000

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_28} :catch_a6

    .line 2471
    nop

    .line 2476
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2477
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2476
    const-string v4, "android.permission.BACKUP"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_49

    .line 2478
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    goto :goto_4f

    .line 2483
    :cond_49
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v1}, Lcom/android/server/backup/ProcessedPackagesJournal;->getPackagesCopy()Ljava/util/Set;

    move-result-object v1

    .line 2486
    :goto_4f
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 2489
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 2490
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2491
    :try_start_5f
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v4, "BMS.clearBackupData()"

    .line 2493
    invoke-virtual {v3, p1, v4}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v3

    .line 2494
    if-nez v3, :cond_7e

    .line 2496
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v3, Lcom/android/server/backup/params/ClearRetryParams;

    invoke-direct {v3, p1, p2}, Lcom/android/server/backup/params/ClearRetryParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2498
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {p2, p1, v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2499
    monitor-exit v1

    return-void

    .line 2501
    :cond_7e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 2502
    new-instance v2, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$TD-nE027xyQbZ7zQ3L8rJfQM2V4;

    invoke-direct {v2, p0, v3}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$TD-nE027xyQbZ7zQ3L8rJfQM2V4;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;)V

    .line 2505
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 2506
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/4 v5, 0x4

    new-instance v6, Lcom/android/server/backup/params/ClearParams;

    invoke-direct {v6, v3, v0, v2}, Lcom/android/server/backup/params/ClearParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    invoke-virtual {v4, v5, v6}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2509
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2510
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2511
    monitor-exit v1

    goto :goto_a5

    :catchall_a2
    move-exception p1

    monitor-exit v1
    :try_end_a4
    .catchall {:try_start_5f .. :try_end_a4} :catchall_a2

    throw p1

    .line 2513
    :cond_a5
    :goto_a5
    return-void

    .line 2468
    :catch_a6
    move-exception p1

    .line 2469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No such package \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' - not clearing backup data"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackupManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    return-void
.end method

.method public clearPendingInits()V
    .registers 2

    .line 844
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 845
    return-void
.end method

.method public clearRestoreSession(Lcom/android/server/backup/restore/ActiveRestoreSession;)V
    .registers 3

    .line 3425
    monitor-enter p0

    .line 3426
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    if-eq p1, v0, :cond_d

    .line 3427
    const-string p1, "BackupManagerService"

    const-string v0, "ending non-current restore session"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 3429
    :cond_d
    const-string p1, "BackupManagerService"

    const-string v0, "Clearing restore session and halting timeout"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 3431
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 3433
    :goto_1e
    monitor-exit p0

    .line 3434
    return-void

    .line 3433
    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public dataChanged(Ljava/lang/String;)V
    .registers 5

    .line 2385
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 2386
    if-nez v0, :cond_29

    .line 2387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dataChanged but no participant pkg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' uid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2388
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2387
    const-string v0, "BackupManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    return-void

    .line 2392
    :cond_29
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/backup/UserBackupManagerService$4;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v1, v2}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 2397
    return-void
.end method

.method public dataChangedImpl(Ljava/lang/String;)V
    .registers 3

    .line 2315
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 2316
    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 2317
    return-void
.end method

.method public deviceIsEncrypted()Z
    .registers 5

    .line 1986
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getEncryptionState()I

    move-result v1

    if-eq v1, v0, :cond_12

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 1988
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_14

    if-eq v1, v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 1986
    :goto_13
    return v0

    .line 1990
    :catch_14
    move-exception v1

    .line 1993
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to communicate with storagemanager service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 3528
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3530
    if-eqz p3, :cond_6a

    .line 3531
    :try_start_6
    array-length p1, p3

    const/4 v2, 0x0

    :goto_8
    if-ge v2, p1, :cond_6a

    aget-object v3, p3, v2

    .line 3532
    const-string v4, "-h"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 3533
    const-string p1, "\'dumpsys backup\' optional arguments:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3534
    const-string p1, "  -h       : this help text"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3535
    const-string p1, "  a[gents] : dump information about defined backup agents"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3536
    const-string p1, "  users    : dump the list of users for which backup service is running"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_72

    .line 3553
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3538
    return-void

    .line 3539
    :cond_2c
    :try_start_2c
    const-string v4, "agents"

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 3540
    invoke-direct {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->dumpAgents(Ljava/io/PrintWriter;)V
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_72

    .line 3553
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3541
    return-void

    .line 3542
    :cond_3b
    :try_start_3b
    const-string/jumbo v4, "transportclients"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 3543
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {p1, p2}, Lcom/android/server/backup/TransportManager;->dumpTransportClients(Ljava/io/PrintWriter;)V
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_72

    .line 3553
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3544
    return-void

    .line 3545
    :cond_51
    :try_start_51
    const-string/jumbo v4, "transportstats"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 3546
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {p1, p2}, Lcom/android/server/backup/TransportManager;->dumpTransportStats(Ljava/io/PrintWriter;)V
    :try_end_63
    .catchall {:try_start_51 .. :try_end_63} :catchall_72

    .line 3553
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3547
    return-void

    .line 3531
    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3551
    :cond_6a
    :try_start_6a
    invoke-direct {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_72

    .line 3553
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3554
    nop

    .line 3555
    return-void

    .line 3553
    :catchall_72
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public endFullBackup()V
    .registers 4

    .line 2280
    new-instance v0, Lcom/android/server/backup/UserBackupManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/backup/UserBackupManagerService$3;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 2297
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "end-full-backup"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2298
    return-void
.end method

.method public enqueueFullBackup(Ljava/lang/String;J)V
    .registers 8

    .line 2041
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    .line 2042
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2046
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    .line 2052
    nop

    .line 2053
    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-lez p1, :cond_35

    .line 2054
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1a
    if-ltz p1, :cond_36

    .line 2055
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 2056
    iget-wide v2, v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    cmp-long v2, v2, p2

    if-gtz v2, :cond_32

    .line 2057
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    add-int/lit8 p3, p1, 0x1

    invoke-virtual {p2, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2058
    goto :goto_36

    .line 2054
    :cond_32
    add-int/lit8 p1, p1, -0x1

    goto :goto_1a

    .line 2053
    :cond_35
    const/4 p1, -0x1

    .line 2062
    :cond_36
    :goto_36
    if-gez p1, :cond_3e

    .line 2064
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2066
    :cond_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_43

    .line 2067
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->writeFullBackupScheduleAsync()V

    .line 2068
    return-void

    .line 2066
    :catchall_43
    move-exception p1

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p1
.end method

.method public filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;
    .registers 12

    .line 3501
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "filterAppsEligibleForBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3504
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3506
    :try_start_d
    const-string v2, "BMS.filterAppsEligibleForBackup"

    .line 3507
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3508
    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v3

    .line 3509
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 3510
    array-length v5, p1

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v5, :cond_30

    aget-object v7, p1, v6

    .line 3511
    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 3512
    invoke-static {v3, v7, v8, v9}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Landroid/content/pm/PackageManager;I)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 3514
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3510
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 3517
    :cond_30
    if-eqz v3, :cond_37

    .line 3518
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {p1, v3, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 3520
    :cond_37
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v4, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;
    :try_end_43
    .catchall {:try_start_d .. :try_end_43} :catchall_47

    .line 3522
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3520
    return-object p1

    .line 3522
    :catchall_47
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .registers 16

    .line 2634
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "fullTransportBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2639
    if-nez v0, :cond_75

    .line 2643
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v0

    .line 2644
    invoke-direct {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->fullBackupAllowable(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "BackupManagerService"

    if-nez v0, :cond_23

    .line 2645
    const-string p1, "Full backup not currently possible -- key/value backup not yet run?"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 2648
    :cond_23
    const-string v0, "fullTransportBackup()"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2653
    :try_start_2c
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2654
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "BMS.fullTransportBackup()"

    move-object v4, p0

    move-object v6, p1

    move-object v9, v0

    invoke-static/range {v4 .. v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->newWithCurrentTransport(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v4

    .line 2666
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 2667
    new-instance v5, Ljava/lang/Thread;

    const-string v6, "full-transport-master"

    invoke-direct {v5, v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_50
    .catchall {:try_start_2c .. :try_end_50} :catchall_70

    .line 2670
    :goto_50
    :try_start_50
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_53} :catch_6e
    .catchall {:try_start_50 .. :try_end_53} :catchall_70

    .line 2671
    nop

    .line 2678
    :try_start_54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2679
    array-length v0, p1

    const/4 v6, 0x0

    :goto_5a
    if-ge v6, v0, :cond_64

    aget-object v7, p1, v6

    .line 2680
    invoke-virtual {p0, v7, v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_70

    .line 2679
    add-int/lit8 v6, v6, 0x1

    goto :goto_5a

    .line 2683
    :cond_64
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2684
    nop

    .line 2688
    :goto_68
    const-string p1, "Done with full transport backup."

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    return-void

    .line 2672
    :catch_6e
    move-exception v4

    .line 2675
    goto :goto_50

    .line 2683
    :catchall_70
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2640
    :cond_75
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Restore supported only for the device owner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateRandomIntegerToken()I
    .registers 3

    .line 861
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 862
    if-gez v0, :cond_9

    neg-int v0, v0

    .line 863
    :cond_9
    and-int/lit16 v0, v0, -0x100

    .line 864
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 865
    return v0
.end method

.method public getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;
    .registers 2

    .line 781
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-object v0
.end method

.method public getActivityManager()Landroid/app/IActivityManager;
    .registers 2

    .line 686
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method public getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/params/AdbParams;",
            ">;"
        }
    .end annotation

    .line 793
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .registers 2

    .line 670
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object v0
.end method

.method public getAlarmManager()Landroid/app/AlarmManager;
    .registers 2

    .line 690
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method public getAncestralSerialNumber()J
    .registers 5

    .line 2437
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->getAncestralSerialNumberFile()Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_16

    const/4 v1, 0x0

    .line 2438
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v2
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 2439
    :try_start_9
    invoke-static {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_16

    .line 2438
    return-wide v2

    .line 2437
    :catchall_d
    move-exception v1

    :try_start_e
    throw v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_f

    .line 2439
    :catchall_f
    move-exception v2

    if-eqz v0, :cond_15

    :try_start_12
    invoke-static {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_15
    throw v2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_16

    :catch_16
    move-exception v0

    .line 2440
    const-string v1, "BackupManagerService"

    const-string v2, "Unable to write to work profile serial number file:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2441
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .registers 9

    .line 1638
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getAvailableRestoreToken"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 1642
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1643
    :try_start_e
    iget-wide v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/ProcessedPackagesJournal;->hasBeenProcessed(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 1647
    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 1649
    :cond_20
    monitor-exit v2

    .line 1651
    return-wide v0

    .line 1649
    :catchall_22
    move-exception p1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_22

    throw p1
.end method

.method public getBackupHandler()Landroid/os/Handler;
    .registers 2

    .line 733
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-object v0
.end method

.method public getBackupManagerBinder()Landroid/app/backup/IBackupManager;
    .registers 2

    .line 3666
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method public getBaseStateDir()Ljava/io/File;
    .registers 2

    .line 797
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    return-object v0
.end method

.method public getClearDataLock()Ljava/lang/Object;
    .registers 2

    .line 761
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 3170
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getConfigurationIntent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3173
    :try_start_9
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_f
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_9 .. :try_end_f} :catch_10

    .line 3177
    return-object p1

    .line 3178
    :catch_10
    move-exception p1

    .line 3179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get configuration intent from transport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BackupManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    const/4 p1, 0x0

    return-object p1
.end method

.method public getConstants()Lcom/android/server/backup/BackupManagerConstants;
    .registers 2

    .line 666
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 674
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentOpLock()Ljava/lang/Object;
    .registers 2

    .line 789
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentOperations()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/internal/Operation;",
            ">;"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getCurrentToken()J
    .registers 3

    .line 831
    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    return-wide v0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 4

    .line 2942
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getCurrentTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2944
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v0

    .line 2946
    return-object v0
.end method

.method public getCurrentTransportComponent()Landroid/content/ComponentName;
    .registers 4

    .line 2955
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getCurrentTransportComponent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2957
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2959
    :try_start_d
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportComponent()Landroid/content/ComponentName;

    move-result-object v2
    :try_end_13
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_d .. :try_end_13} :catch_1c
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 2963
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2959
    return-object v2

    .line 2963
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2960
    :catch_1c
    move-exception v2

    .line 2961
    const/4 v2, 0x0

    .line 2963
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2961
    return-object v2
.end method

.method public getDataDir()Ljava/io/File;
    .registers 2

    .line 801
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 3211
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getDataManagementIntent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3215
    :try_start_9
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_f
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_9 .. :try_end_f} :catch_10

    .line 3219
    return-object p1

    .line 3220
    :catch_10
    move-exception p1

    .line 3221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get management intent from transport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BackupManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5

    .line 3231
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getDataManagementLabel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    :try_start_9
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_f
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_9 .. :try_end_f} :catch_10

    .line 3239
    return-object p1

    .line 3240
    :catch_10
    move-exception p1

    .line 3241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get management label from transport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BackupManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 3194
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getDestinationString"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3198
    :try_start_9
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportCurrentDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_9 .. :try_end_f} :catch_10

    .line 3202
    return-object p1

    .line 3203
    :catch_10
    move-exception p1

    .line 3204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get destination string from transport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BackupManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3205
    const/4 p1, 0x0

    return-object p1
.end method

.method public getJournal()Lcom/android/server/backup/DataChangedJournal;
    .registers 2

    .line 811
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .line 678
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public getPackageManagerBinder()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 682
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method getPackageTrackingReceiver()Landroid/content/BroadcastReceiver;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public getPendingBackups()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/keyvalue/BackupRequest;",
            ">;"
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPendingInits()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 839
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPendingRestores()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;",
            ">;"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    return-object v0
.end method

.method public getQueueLock()Ljava/lang/Object;
    .registers 2

    .line 745
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getRng()Ljava/security/SecureRandom;
    .registers 2

    .line 819
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getRunInitIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 737
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getRunningFullBackupTask()Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .registers 2

    .line 848
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    return-object v0
.end method

.method public getTransportManager()Lcom/android/server/backup/TransportManager;
    .registers 2

    .line 699
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .line 662
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    return v0
.end method

.method public getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    .registers 2

    .line 719
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    return-object v0
.end method

.method public handleCancel(IZ)V
    .registers 10

    .line 1901
    nop

    .line 1902
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1903
    :try_start_4
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/internal/Operation;

    .line 1910
    const/4 v2, -0x1

    if-eqz v1, :cond_12

    iget v3, v1, Lcom/android/server/backup/internal/Operation;->state:I

    goto :goto_13

    :cond_12
    move v3, v2

    .line 1911
    :goto_13
    const/4 v4, 0x1

    if-ne v3, v4, :cond_24

    .line 1914
    const-string v1, "BackupManagerService"

    const-string v2, "Operation already got an ack.Should have been removed from mCurrentOperations."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    const/4 v1, 0x0

    .line 1918
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_55

    .line 1919
    :cond_24
    if-nez v3, :cond_55

    .line 1920
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cancel: token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    iput v2, v1, Lcom/android/server/backup/internal/Operation;->state:I

    .line 1928
    iget p1, v1, Lcom/android/server/backup/internal/Operation;->type:I

    if-eqz p1, :cond_4a

    iget p1, v1, Lcom/android/server/backup/internal/Operation;->type:I

    if-ne p1, v4, :cond_55

    .line 1929
    :cond_4a
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget v2, v1, Lcom/android/server/backup/internal/Operation;->type:I

    invoke-direct {p0, v2}, Lcom/android/server/backup/UserBackupManagerService;->getMessageIdForOperationType(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 1932
    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1933
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_4 .. :try_end_5b} :catchall_67

    .line 1936
    if-eqz v1, :cond_66

    iget-object p1, v1, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    if-eqz p1, :cond_66

    .line 1940
    iget-object p1, v1, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    invoke-interface {p1, p2}, Lcom/android/server/backup/BackupRestoreTask;->handleCancel(Z)V

    .line 1942
    :cond_66
    return-void

    .line 1933
    :catchall_67
    move-exception p1

    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw p1
.end method

.method public hasBackupPassword()Z
    .registers 2

    .line 1116
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupPasswordManager;->hasBackupPassword()Z

    move-result v0

    return v0
.end method

.method initializeBackupEnableState()V
    .registers 2

    .line 646
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->readBackupEnableState(I)Z

    move-result v0

    .line 647
    invoke-virtual {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->setBackupEnabled(Z)V

    .line 648
    return-void
.end method

.method public initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .registers 8

    .line 2401
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "initializeTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeTransport(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2407
    :try_start_27
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 2408
    new-instance v2, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$pLslHGi1wuuGrjS32QbMlDjlGbM;

    invoke-direct {v2, p0}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$pLslHGi1wuuGrjS32QbMlDjlGbM;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 2409
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v4, Lcom/android/server/backup/internal/PerformInitializeTask;

    invoke-direct {v4, p0, p1, p2, v2}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_3b
    .catchall {:try_start_27 .. :try_end_3b} :catchall_40

    .line 2412
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2413
    nop

    .line 2414
    return-void

    .line 2412
    :catchall_40
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .registers 8

    .line 3479
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "isAppEligibleForBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3484
    :try_start_d
    const-string v2, "BMS.isAppEligibleForBackup"

    .line 3485
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3486
    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v3

    .line 3487
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 3488
    invoke-static {v3, p1, v4, v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Landroid/content/pm/PackageManager;I)Z

    move-result p1

    .line 3490
    if-eqz v3, :cond_24

    .line 3491
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_29

    .line 3493
    :cond_24
    nop

    .line 3495
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3493
    return p1

    .line 3495
    :catchall_29
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public isBackupEnabled()Z
    .registers 4

    .line 2935
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "isBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2937
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    return v0
.end method

.method public isBackupOperationInProgress()Z
    .registers 7

    .line 1946
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1947
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 1948
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/internal/Operation;

    .line 1949
    iget v4, v3, Lcom/android/server/backup/internal/Operation;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_21

    iget v3, v3, Lcom/android/server/backup/internal/Operation;->state:I

    if-nez v3, :cond_21

    .line 1950
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1947
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1953
    :cond_24
    monitor-exit v0

    .line 1954
    return v1

    .line 1953
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public isBackupRunning()Z
    .registers 2

    .line 749
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 703
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    return v0
.end method

.method public isRestoreInProgress()Z
    .registers 2

    .line 769
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mIsRestoreInProgress:Z

    return v0
.end method

.method public isSetupComplete()Z
    .registers 2

    .line 711
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    return v0
.end method

.method public synthetic lambda$clearBackupData$3$UserBackupManagerService(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .registers 4

    .line 2504
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$initializeTransports$2$UserBackupManagerService(Ljava/lang/String;)V
    .registers 2

    .line 2408
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    return-void
.end method

.method public synthetic lambda$parseLeftoverJournals$0$UserBackupManagerService(Ljava/lang/String;)V
    .registers 4

    .line 1091
    const-string v0, "BackupManagerService"

    const-string v1, "Found stale backup journal, scheduling"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1094
    return-void
.end method

.method public synthetic lambda$requestBackup$1$UserBackupManagerService(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .registers 4

    .line 1714
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$restoreAtInstall$6$UserBackupManagerService(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .registers 4

    .line 3330
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 3331
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 3332
    return-void
.end method

.method public synthetic lambda$selectBackupTransportAsync$5$UserBackupManagerService(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 7

    .line 3107
    nop

    .line 3108
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3109
    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->registerAndSelectTransport(Landroid/content/ComponentName;)I

    move-result v0

    .line 3110
    const-string v1, "BackupManagerService"

    const/4 v2, 0x0

    if-nez v0, :cond_1d

    .line 3112
    :try_start_c
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3113
    invoke-virtual {v3, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 3114
    invoke-direct {p0, v2}, Lcom/android/server/backup/UserBackupManagerService;->updateStateForTransport(Ljava/lang/String;)V
    :try_end_15
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_c .. :try_end_15} :catch_16

    .line 3118
    goto :goto_1d

    .line 3115
    :catch_16
    move-exception p1

    .line 3116
    const-string p1, "Transport got unregistered"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    const/4 v0, -0x1

    .line 3122
    :cond_1d
    :goto_1d
    if-eqz v2, :cond_23

    .line 3123
    :try_start_1f
    invoke-interface {p2, v2}, Landroid/app/backup/ISelectBackupTransportCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_26

    .line 3125
    :cond_23
    invoke-interface {p2, v0}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    .line 3129
    :goto_26
    goto :goto_2d

    .line 3127
    :catch_27
    move-exception p1

    .line 3128
    const-string p1, "ISelectBackupTransportCallback listener not available"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    :goto_2d
    return-void
.end method

.method public synthetic lambda$setBackupEnabled$4$UserBackupManagerService(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 5

    .line 2885
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 2887
    invoke-virtual {v0, p3}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_6} :catch_e

    .line 2892
    nop

    .line 2893
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2894
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2895
    return-void

    .line 2888
    :catch_e
    move-exception p1

    .line 2890
    const-string p2, "BackupManagerService"

    const-string p3, "Unexpected unregistered transport"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2891
    return-void
.end method

.method public listAllTransportComponents()[Landroid/content/ComponentName;
    .registers 4

    .line 2977
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "listAllTransportComponents"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2979
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponents()[Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 4

    .line 2969
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "listAllTransports"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2972
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logBackupComplete(Ljava/lang/String;)V
    .registers 8

    .line 1452
    const-string v0, "@pm@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1454
    :cond_9
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getBackupFinishedNotificationReceivers()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_3c

    aget-object v3, v0, v2

    .line 1455
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1456
    const-string v5, "android.intent.action.BACKUP_FINISHED"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1457
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1458
    const v3, 0x10000020

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1460
    const-string/jumbo v3, "packageName"

    invoke-virtual {v4, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1461
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1454
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1464
    :cond_3c
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/ProcessedPackagesJournal;->addPackage(Ljava/lang/String;)V

    .line 1465
    return-void
.end method

.method public makeMetadataAgent()Landroid/app/backup/BackupAgent;
    .registers 4

    .line 873
    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;I)V

    .line 874
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->attach(Landroid/content/Context;)V

    .line 875
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->onCreate(Landroid/os/UserHandle;)V

    .line 876
    return-object v0
.end method

.method public makeMetadataAgent(Ljava/util/List;)Lcom/android/server/backup/PackageManagerBackupAgent;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Lcom/android/server/backup/PackageManagerBackupAgent;"
        }
    .end annotation

    .line 883
    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;I)V

    .line 885
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->attach(Landroid/content/Context;)V

    .line 886
    iget p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->onCreate(Landroid/os/UserHandle;)V

    .line 887
    return-object v0
.end method

.method public opComplete(IJ)V
    .registers 9

    .line 3444
    nop

    .line 3445
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3446
    :try_start_4
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/internal/Operation;

    .line 3447
    const/4 v2, 0x0

    if-eqz v1, :cond_47

    .line 3448
    iget v3, v1, Lcom/android/server/backup/internal/Operation;->state:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1b

    .line 3451
    nop

    .line 3452
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_48

    .line 3453
    :cond_1b
    iget v3, v1, Lcom/android/server/backup/internal/Operation;->state:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_41

    .line 3455
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received duplicate ack for token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3456
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3455
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    nop

    .line 3459
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_48

    .line 3460
    :cond_41
    iget p1, v1, Lcom/android/server/backup/internal/Operation;->state:I

    if-nez p1, :cond_47

    .line 3463
    iput v4, v1, Lcom/android/server/backup/internal/Operation;->state:I

    .line 3466
    :cond_47
    move-object v2, v1

    :goto_48
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 3467
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4 .. :try_end_4e} :catchall_6c

    .line 3470
    if-eqz v2, :cond_6b

    iget-object p1, v2, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    if-eqz p1, :cond_6b

    .line 3471
    iget-object p1, v2, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 3472
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 p3, 0x15

    invoke-virtual {p2, p3, p1}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3473
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {p2, p1}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3475
    :cond_6b
    return-void

    .line 3467
    :catchall_6c
    move-exception p1

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw p1
.end method

.method public prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V
    .registers 10

    .line 1791
    if-eqz p5, :cond_29

    const/4 v0, 0x1

    if-eq p5, v0, :cond_29

    .line 1792
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "prepareOperationTimeout() doesn\'t support operation "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of type "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1792
    const-string p2, "BackupManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    return-void

    .line 1801
    :cond_29
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1802
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/backup/internal/Operation;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p4, p5}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1803
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {p0, p5}, Lcom/android/server/backup/UserBackupManagerService;->getMessageIdForOperationType(I)I

    move-result p5

    invoke-virtual {v1, p5, p1, v3, p4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1805
    iget-object p4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1806
    monitor-exit v0

    .line 1807
    return-void

    .line 1806
    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_2c .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public putOperation(ILcom/android/server/backup/internal/Operation;)V
    .registers 5

    .line 1831
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1832
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1833
    monitor-exit v0

    .line 1834
    return-void

    .line 1833
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public randomBytes(I)[B
    .registers 3

    .line 1104
    div-int/lit8 p1, p1, 0x8

    new-array p1, p1, [B

    .line 1105
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1106
    return-object p1
.end method

.method public recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1130
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1135
    :try_start_3
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v1, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1136
    new-instance p3, Ljava/io/File;

    const-string v2, "_need_init_"

    invoke-direct {p3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1138
    if-eqz p1, :cond_23

    .line 1142
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_2d

    .line 1144
    :try_start_18
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_20} :catch_21
    .catchall {:try_start_18 .. :try_end_20} :catchall_2d

    goto :goto_22

    .line 1145
    :catch_21
    move-exception p1

    .line 1147
    :goto_22
    goto :goto_2b

    .line 1150
    :cond_23
    :try_start_23
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 1151
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1153
    :goto_2b
    monitor-exit v0

    .line 1154
    return-void

    .line 1153
    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public removeOperation(I)V
    .registers 6

    .line 1844
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1845
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    .line 1846
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate remove for operation. token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1846
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    :cond_25
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1850
    monitor-exit v0

    .line 1851
    return-void

    .line 1850
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;I)I
    .registers 5

    .line 1660
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/backup/UserBackupManagerService;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result p1

    return p1
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .registers 22

    .line 1669
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string/jumbo v4, "requestBackup"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    const-string v0, "BackupManagerService"

    const/16 v3, -0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_120

    array-length v6, v2

    if-lt v6, v5, :cond_120

    .line 1680
    iget-boolean v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    const/16 v10, -0x7d1

    if-eqz v6, :cond_ef

    iget-boolean v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v6, :cond_29

    goto/16 :goto_ef

    .line 1700
    :cond_29
    :try_start_29
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 1702
    invoke-virtual {v6}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v6

    .line 1701
    invoke-virtual {v0, v6}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1703
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v11, "BMS.requestBackup()"

    .line 1704
    invoke-virtual {v0, v11}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClientOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v3
    :try_end_3d
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_29 .. :try_end_3d} :catch_e4

    .line 1711
    nop

    .line 1713
    new-instance v11, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$sAYsrY5C5zAl7EgKgwo188kx6JE;

    invoke-direct {v11, v1, v3}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$sAYsrY5C5zAl7EgKgwo188kx6JE;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;)V

    .line 1716
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1717
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1718
    array-length v4, v2

    const/4 v15, 0x0

    :goto_4f
    if-ge v15, v4, :cond_93

    aget-object v5, v2, v15

    .line 1719
    const-string v0, "@pm@"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1720
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1721
    goto :goto_8f

    .line 1724
    :cond_5f
    :try_start_5f
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v14, 0x8000000

    iget v9, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v0, v5, v14, v9}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1726
    iget-object v9, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v9, v14}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v9

    if-nez v9, :cond_77

    .line 1727
    invoke-static {v7, v5, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1729
    goto :goto_8f

    .line 1731
    :cond_77
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v9

    if-eqz v9, :cond_83

    .line 1732
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_88

    .line 1734
    :cond_83
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_88
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5f .. :try_end_88} :catch_89

    .line 1739
    :goto_88
    goto :goto_8f

    .line 1736
    :catch_89
    move-exception v0

    .line 1737
    const/16 v0, -0x7d2

    invoke-static {v7, v5, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1718
    :goto_8f
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x1

    goto :goto_4f

    .line 1741
    :cond_93
    const/16 v0, 0xb0c

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    .line 1742
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v2

    .line 1741
    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1749
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c0

    const/16 v16, 0x1

    goto :goto_c2

    :cond_c0
    const/16 v16, 0x0

    .line 1751
    :goto_c2
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1752
    new-instance v14, Lcom/android/server/backup/params/BackupParams;

    const/4 v10, 0x1

    move-object v2, v14

    move-object v4, v6

    move-object v5, v13

    move-object v6, v12

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object v9, v11

    move/from16 v11, v16

    invoke-direct/range {v2 .. v11}, Lcom/android/server/backup/params/BackupParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZZ)V

    iput-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1754
    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1755
    const/4 v1, 0x0

    return v1

    .line 1705
    :catch_e4
    move-exception v0

    .line 1706
    invoke-static {v7, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1707
    const/16 v0, 0x32

    const/4 v1, 0x1

    invoke-static {v8, v0, v4, v1, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    .line 1710
    return v3

    .line 1681
    :cond_ef
    :goto_ef
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup requested but enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " setupComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    invoke-static {v7, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1689
    iget-boolean v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-eqz v0, :cond_119

    .line 1690
    const/16 v0, 0xd

    goto :goto_11b

    .line 1691
    :cond_119
    const/16 v0, 0xe

    .line 1692
    :goto_11b
    const/4 v1, 0x3

    invoke-static {v8, v0, v4, v1, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    .line 1694
    return v10

    .line 1672
    :cond_120
    const-string v1, "No packages named for backup request"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    invoke-static {v7, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1674
    const/16 v0, 0x31

    const/4 v1, 0x1

    invoke-static {v8, v0, v4, v1, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    .line 1677
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No packages are provided for backup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetBackupState(Ljava/io/File;)V
    .registers 9

    .line 1161
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1162
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v1}, Lcom/android/server/backup/ProcessedPackagesJournal;->reset()V

    .line 1164
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 1165
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->writeRestoreTokens()V

    .line 1168
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_2c

    aget-object v4, p1, v3

    .line 1170
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_need_init_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 1171
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1168
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1174
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_5f

    .line 1177
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter p1

    .line 1178
    :try_start_30
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1179
    nop

    :goto_37
    if-ge v2, v0, :cond_5a

    .line 1180
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 1181
    if-eqz v1, :cond_57

    .line 1182
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1183
    invoke-virtual {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1184
    goto :goto_47

    .line 1179
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 1187
    :cond_5a
    monitor-exit p1

    .line 1188
    return-void

    .line 1187
    :catchall_5c
    move-exception v0

    monitor-exit p1
    :try_end_5e
    .catchall {:try_start_30 .. :try_end_5e} :catchall_5c

    throw v0

    .line 1174
    :catchall_5f
    move-exception p1

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .registers 19

    .line 3288
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v2, "BackupManagerService"

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_2a

    .line 3289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-system process uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " attemping install-time restore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    return-void

    .line 3294
    :cond_2a
    nop

    .line 3296
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v6

    .line 3298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreAtInstall pkg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " token="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3299
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " restoreSet="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3300
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3298
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    const-wide/16 v3, 0x0

    cmp-long v0, v6, v3

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v0, :cond_68

    .line 3304
    move v0, v12

    goto :goto_69

    .line 3302
    :cond_68
    move v0, v11

    .line 3307
    :goto_69
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3308
    const-string v13, "BMS.restoreAtInstall()"

    invoke-virtual {v3, v13}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v14

    .line 3309
    if-nez v14, :cond_79

    .line 3310
    const-string v0, "No transport client"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    move v0, v12

    .line 3314
    :cond_79
    iget-boolean v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    if-nez v3, :cond_94

    .line 3316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-restorable state: auto="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    move v0, v12

    .line 3321
    :cond_94
    if-nez v0, :cond_d4

    .line 3327
    :try_start_96
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 3329
    new-instance v10, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$TB8LUl0TwUK9CmmdepXioEU4Qxg;

    invoke-direct {v10, v1, v14}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$TB8LUl0TwUK9CmmdepXioEU4Qxg;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;)V

    .line 3337
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 3338
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3339
    move-object v3, v14

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-static/range {v3 .. v10}, Lcom/android/server/backup/params/RestoreParams;->createForRestoreAtInstall(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLjava/lang/String;ILcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object v3

    iput-object v3, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3347
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v3, v15}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_b9} :catch_ba

    .line 3352
    goto :goto_d4

    .line 3348
    :catch_ba
    move-exception v0

    .line 3350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to contact transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    move v0, v12

    .line 3355
    :cond_d4
    :goto_d4
    if-eqz v0, :cond_eb

    .line 3358
    if-eqz v14, :cond_dd

    .line 3359
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, v14, v13}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 3364
    :cond_dd
    const-string v0, "Finishing install immediately"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    :try_start_e2
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move/from16 v1, p2

    invoke-interface {v0, v1, v11}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_e2 .. :try_end_e9} :catch_ea

    goto :goto_eb

    .line 3367
    :catch_ea
    move-exception v0

    .line 3369
    :cond_eb
    :goto_eb
    return-void
.end method

.method public restoreWidgetData(Ljava/lang/String;[B)V
    .registers 4

    .line 2306
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {p1, p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 2307
    return-void
.end method

.method public scheduleNextFullBackupJob(J)V
    .registers 9

    .line 2004
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2005
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_37

    .line 2009
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-wide v1, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    .line 2010
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 2011
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupIntervalMilliseconds()J

    move-result-wide v1

    .line 2012
    cmp-long v5, v3, v1

    if-gez v5, :cond_27

    sub-long/2addr v1, v3

    goto :goto_29

    :cond_27
    const-wide/16 v1, 0x0

    .line 2013
    :goto_29
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 2014
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v1, v2, p1, p2, v3}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 2015
    goto :goto_3e

    .line 2017
    :cond_37
    const-string p1, "BackupManagerService"

    const-string p2, "Full backup queue empty; not scheduling"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    :goto_3e
    monitor-exit v0

    .line 2021
    return-void

    .line 2020
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p1
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3077
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "selectBackupTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3080
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3082
    :try_start_e
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3083
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->updateStateForTransport(Ljava/lang/String;)V

    .line 3084
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectBackupTransport(transport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): previous transport = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_3b

    .line 3086
    nop

    .line 3088
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3086
    return-object v2

    .line 3088
    :catchall_3b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 9

    .line 3098
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "selectBackupTransportAsync"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3103
    :try_start_e
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 3104
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectBackupTransportAsync(transport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v3, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$076XriH8-AsUaXKFvRearB4ERls;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$076XriH8-AsUaXKFvRearB4ERls;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_38
    .catchall {:try_start_e .. :try_end_38} :catchall_3d

    .line 3132
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3133
    nop

    .line 3134
    return-void

    .line 3132
    :catchall_3d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setAncestralPackages(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 823
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 824
    return-void
.end method

.method public setAncestralSerialNumber(J)V
    .registers 6

    .line 2420
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setAncestralSerialNumber"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting ancestral work profile id to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    :try_start_20
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->getAncestralSerialNumberFile()Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_24} :catch_35

    const/4 v2, 0x0

    .line 2425
    :try_start_25
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2c

    .line 2426
    :try_start_28
    invoke-static {v2, v0}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_35

    .line 2428
    goto :goto_3b

    .line 2424
    :catchall_2c
    move-exception p1

    :try_start_2d
    throw p1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 2426
    :catchall_2e
    move-exception p2

    if-eqz v0, :cond_34

    :try_start_31
    invoke-static {p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_34
    throw p2
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_35} :catch_35

    :catch_35
    move-exception p1

    .line 2427
    const-string p2, "Unable to write to work profile serial mapping file:"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2429
    :goto_3b
    return-void
.end method

.method setAncestralSerialNumberFile(Ljava/io/File;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2457
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    .line 2458
    return-void
.end method

.method public setAncestralToken(J)V
    .registers 3

    .line 827
    iput-wide p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 828
    return-void
.end method

.method public setAutoRestore(Z)V
    .registers 8

    .line 2916
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setAutoRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto restore => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2923
    :try_start_24
    monitor-enter p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_42

    .line 2924
    :try_start_25
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_auto_restore"

    .line 2925
    if-eqz p1, :cond_31

    const/4 v4, 0x1

    goto :goto_32

    :cond_31
    const/4 v4, 0x0

    :goto_32
    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 2924
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2926
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    .line 2927
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_3f

    .line 2929
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2930
    nop

    .line 2931
    return-void

    .line 2927
    :catchall_3f
    move-exception p1

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    :try_start_41
    throw p1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    .line 2929
    :catchall_42
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setBackupEnabled(Z)V
    .registers 11

    .line 2849
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Backup enabled => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2856
    :try_start_24
    iget-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 2857
    monitor-enter p0
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_9f

    .line 2858
    :try_start_27
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v3, p1}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->writeBackupEnableState(IZ)V

    .line 2859
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 2860
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_9c

    .line 2862
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_9f

    .line 2863
    if-eqz p1, :cond_49

    if-nez v2, :cond_49

    :try_start_36
    iget-boolean v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-eqz v4, :cond_49

    .line 2865
    iget p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {p1, v2, v4}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    .line 2866
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_93

    .line 2867
    :cond_49
    if-nez p1, :cond_93

    .line 2871
    iget p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v4}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(ILandroid/content/Context;)V

    .line 2876
    if-eqz v2, :cond_93

    iget-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-eqz p1, :cond_93

    .line 2879
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2880
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2881
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    new-instance v5, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$C404OP5-rQYG326aUSsvijaNzdg;

    invoke-direct {v5, p0, p1, v2}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$C404OP5-rQYG326aUSsvijaNzdg;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lcom/android/server/backup/TransportManager;->forEachRegisteredTransport(Ljava/util/function/Consumer;)V

    .line 2898
    const/4 v4, 0x0

    move v5, v4

    :goto_6e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_88

    .line 2899
    nop

    .line 2901
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2902
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2899
    const/4 v8, 0x1

    invoke-virtual {p0, v8, v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2898
    add-int/lit8 v5, v5, 0x1

    goto :goto_6e

    .line 2904
    :cond_88
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v4, v5, v6, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2908
    :cond_93
    :goto_93
    monitor-exit v3
    :try_end_94
    .catchall {:try_start_36 .. :try_end_94} :catchall_99

    .line 2910
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2911
    nop

    .line 2912
    return-void

    .line 2908
    :catchall_99
    move-exception p1

    :try_start_9a
    monitor-exit v3
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    :try_start_9b
    throw p1
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9f

    .line 2860
    :catchall_9c
    move-exception p1

    :try_start_9d
    monitor-exit p0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    :try_start_9e
    throw p1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9f

    .line 2910
    :catchall_9f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1111
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupPasswordManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setBackupRunning(Z)V
    .registers 2

    .line 753
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    .line 754
    return-void
.end method

.method public setClearingData(Z)V
    .registers 2

    .line 765
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    .line 766
    return-void
.end method

.method public setCurrentToken(J)V
    .registers 3

    .line 835
    iput-wide p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 836
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 707
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 708
    return-void
.end method

.method public setJournal(Lcom/android/server/backup/DataChangedJournal;)V
    .registers 2

    .line 815
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 816
    return-void
.end method

.method public setLastBackupPass(J)V
    .registers 3

    .line 757
    iput-wide p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mLastBackupPass:J

    .line 758
    return-void
.end method

.method setPowerManager(Landroid/os/PowerManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 695
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 696
    return-void
.end method

.method public setRestoreInProgress(Z)V
    .registers 2

    .line 773
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mIsRestoreInProgress:Z

    .line 774
    return-void
.end method

.method public setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V
    .registers 2

    .line 853
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 854
    return-void
.end method

.method public setSetupComplete(Z)V
    .registers 2

    .line 715
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 716
    return-void
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 729
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->access$000(Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 730
    return-void
.end method

.method public signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .registers 5

    .line 2787
    iget-object v0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 2788
    :try_start_3
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2789
    iget-object p1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 2790
    monitor-exit v0

    .line 2791
    return-void

    .line 2790
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    .registers 4

    .line 1959
    if-nez p1, :cond_3

    .line 1961
    return-void

    .line 1966
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1971
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.backupconfirm"

    .line 1972
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1974
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_23} :catch_24

    .line 1980
    :cond_23
    goto :goto_2c

    .line 1978
    :catch_24
    move-exception p1

    .line 1979
    const-string p1, "BackupManagerService"

    const-string v0, "Lost app trying to shut down"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :goto_2c
    return-void
.end method

.method tearDownService()V
    .registers 3

    .line 652
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->stop()V

    .line 653
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->stop()V

    .line 654
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 655
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 656
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 657
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 658
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v0}, Lcom/android/server/backup/internal/BackupHandler;->stop()V

    .line 659
    return-void
.end method

.method public unbindAgent(Landroid/content/pm/ApplicationInfo;)V
    .registers 3

    .line 1543
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1546
    goto :goto_7

    .line 1544
    :catch_6
    move-exception p1

    .line 1547
    :goto_7
    return-void
.end method

.method updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 19
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3032
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string/jumbo v3, "updateTransportAttributes"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3035
    const-string/jumbo v1, "transportComponent can\'t be null"

    move-object v3, p2

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3036
    const-string/jumbo v1, "name can\'t be null"

    move-object v4, p3

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3037
    const-string v1, "currentDestinationString can\'t be null"

    move-object/from16 v6, p5

    invoke-static {v6, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3039
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p6, :cond_26

    move v5, v1

    goto :goto_27

    :cond_26
    move v5, v2

    :goto_27
    if-nez p7, :cond_2b

    move v7, v1

    goto :goto_2c

    :cond_2b
    move v7, v2

    :goto_2c
    if-ne v5, v7, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    const-string v5, "dataManagementLabel should be null iff dataManagementIntent is null"

    invoke-static {v1, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3044
    :try_start_35
    iget-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 3045
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3046
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v7, v0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v1, v5, v2, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v1
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_45} :catch_6d

    .line 3047
    move v2, p1

    if-ne v2, v1, :cond_65

    .line 3052
    nop

    .line 3054
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 3056
    :try_start_4d
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/backup/TransportManager;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_60

    .line 3064
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3065
    nop

    .line 3066
    return-void

    .line 3064
    :catchall_60
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3048
    :cond_65
    :try_start_65
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the transport can change its description"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_6d} :catch_6d

    .line 3050
    :catch_6d
    move-exception v0

    .line 3051
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Transport package not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 15

    .line 3013
    nop

    .line 3014
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3013
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/backup/UserBackupManagerService;->updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 3021
    return-void
.end method

.method public waitUntilOperationComplete(I)Z
    .registers 6

    .line 1859
    nop

    .line 1860
    nop

    .line 1861
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1863
    :goto_5
    :try_start_5
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/internal/Operation;

    .line 1864
    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 1866
    move v3, v2

    goto :goto_21

    .line 1868
    :cond_12
    iget v3, v1, Lcom/android/server/backup/internal/Operation;->state:I
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_38

    if-nez v3, :cond_1e

    .line 1870
    :try_start_16
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1c
    .catchall {:try_start_16 .. :try_end_1b} :catchall_38

    goto :goto_1d

    .line 1871
    :catch_1c
    move-exception v1

    .line 1872
    :goto_1d
    goto :goto_5

    .line 1880
    :cond_1e
    :try_start_1e
    iget v3, v1, Lcom/android/server/backup/internal/Operation;->state:I

    .line 1881
    nop

    .line 1885
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_38

    .line 1887
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 1888
    if-eqz v1, :cond_32

    .line 1889
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget v0, v1, Lcom/android/server/backup/internal/Operation;->type:I

    invoke-direct {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->getMessageIdForOperationType(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 1895
    :cond_32
    const/4 p1, 0x1

    if-ne v3, p1, :cond_36

    goto :goto_37

    :cond_36
    move p1, v2

    :goto_37
    return p1

    .line 1885
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public writeRestoreTokens()V
    .registers 6

    .line 1472
    const-string v0, "BackupManagerService"

    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenFile:Ljava/io/File;

    const-string/jumbo v3, "rwd"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_68

    const/4 v2, 0x0

    .line 1474
    const/4 v3, 0x1

    :try_start_e
    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1477
    iget-wide v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1478
    iget-wide v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1481
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v3, :cond_24

    .line 1482
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_5d

    .line 1484
    :cond_24
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ancestral packages:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1487
    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_e .. :try_end_5c} :catchall_61

    .line 1489
    goto :goto_4d

    .line 1491
    :cond_5d
    :goto_5d
    :try_start_5d
    invoke-static {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_68

    .line 1493
    goto :goto_6e

    .line 1472
    :catchall_61
    move-exception v2

    :try_start_62
    throw v2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    .line 1491
    :catchall_63
    move-exception v3

    :try_start_64
    invoke-static {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_68} :catch_68

    :catch_68
    move-exception v1

    .line 1492
    const-string v2, "Unable to write token file:"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1494
    :goto_6e
    return-void
.end method
