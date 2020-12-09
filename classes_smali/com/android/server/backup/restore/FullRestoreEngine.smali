.class public Lcom/android/server/backup/restore/FullRestoreEngine;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "FullRestoreEngine.java"


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private mAgentPackage:Ljava/lang/String;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field final mAllowApks:Z

.field private final mAllowObbs:Z

.field private mAppVersion:J

.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field final mBuffer:[B

.field private mBytes:J

.field private final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field final mEphemeralOpToken:I

.field final mIsAdbRestore:Z

.field private final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private final mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

.field private mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mOnlyPackage:Landroid/content/pm/PackageInfo;

.field private final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPipes:[Landroid/os/ParcelFileDescriptor;

.field private mPipesClosed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPipesLock"
        }
    .end annotation
.end field

.field private final mPipesLock:Ljava/lang/Object;

.field private mTargetApp:Landroid/content/pm/ApplicationInfo;

.field private final mUserId:I

.field private mWidgetData:[B


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZZIZ)V
    .registers 12

    .line 140
    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 77
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 107
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 110
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 114
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    .line 123
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 124
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    .line 127
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 141
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 142
    iput p8, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 143
    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 144
    iput-object p3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 145
    iput-object p4, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 146
    iput-object p5, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 147
    iput-boolean p6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 148
    iput-boolean p7, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowObbs:Z

    .line 149
    const p2, 0x8000

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 150
    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    .line 151
    nop

    .line 152
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p2

    .line 151
    const-string p3, "Timeout parameters cannot be null"

    invoke-static {p2, p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 154
    iput-boolean p9, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    .line 155
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 156
    return-void
.end method

.method static synthetic access$014(Lcom/android/server/backup/restore/FullRestoreEngine;J)J
    .registers 5

    .line 69
    iget-wide v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    return-wide v0
.end method

.method private static isCanonicalFilePath(Ljava/lang/String;)Z
    .registers 2

    .line 676
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    .line 683
    :cond_11
    const/4 p0, 0x1

    return p0

    .line 680
    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

.method private static isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z
    .registers 4

    .line 651
    iget-object v0, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v1, "c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 655
    return v1

    .line 658
    :cond_c
    iget-object v0, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v2, "r"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 663
    iget-object p0, p0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v0, "no_backup/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_23

    .line 667
    return v1

    .line 672
    :cond_23
    const/4 p0, 0x1

    return p0
.end method

.method private setUpPipes()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_3
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 587
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    .line 588
    monitor-exit v0

    .line 589
    return-void

    .line 588
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z
    .registers 5

    .line 693
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 694
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 693
    const-string/jumbo v2, "packages_to_clear_data_before_full_restore"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 697
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 698
    const/4 p1, 0x0

    return p1

    .line 701
    :cond_1b
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 702
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .registers 10

    .line 610
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_62

    .line 613
    if-eqz p2, :cond_51

    .line 614
    :try_start_6
    iget-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result p2

    .line 615
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 616
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v2

    .line 617
    new-instance v6, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v6, v0, p2}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/UserBackupManagerService;I)V

    .line 619
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v5, 0x1

    move v1, p2

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 621
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 625
    new-instance v0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v0, v1, p2, v2}, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;-><init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/UserBackupManagerService;)V

    .line 627
    new-instance p2, Ljava/lang/Thread;

    const-string/jumbo v1, "restore-sys-finished-runner"

    invoke-direct {p2, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 628
    goto :goto_4e

    .line 629
    :cond_43
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 630
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v1

    .line 629
    invoke-interface {v0, p2, v1}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    .line 633
    :goto_4e
    invoke-virtual {v6}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->await()V

    .line 636
    :cond_51
    iget-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_56} :catch_57

    .line 639
    goto :goto_5f

    .line 637
    :catch_57
    move-exception p1

    .line 638
    const-string p1, "BackupManagerService"

    const-string p2, "Lost app trying to shut down"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :goto_5f
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 642
    :cond_62
    return-void
.end method

.method private tearDownPipes()V
    .registers 5

    .line 595
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 596
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_28

    if-eqz v1, :cond_26

    .line 598
    :try_start_b
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 599
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 601
    iput-boolean v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1d} :catch_1e
    .catchall {:try_start_b .. :try_end_1d} :catchall_28

    .line 604
    goto :goto_26

    .line 602
    :catch_1e
    move-exception v1

    .line 603
    :try_start_1f
    const-string v2, "BackupManagerService"

    const-string v3, "Couldn\'t close agent pipes"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 606
    :cond_26
    :goto_26
    monitor-exit v0

    .line 607
    return-void

    .line 606
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_28

    throw v1
.end method


# virtual methods
.method public getAgent()Landroid/app/IBackupAgent;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    return-object v0
.end method

.method public getWidgetData()[B
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    return-object v0
.end method

.method handleTimeout()V
    .registers 2

    .line 645
    invoke-direct {p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 646
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 647
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 648
    return-void
.end method

.method public restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    .registers 42

    .line 168
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v0

    const-string v11, "BackupManagerService"

    const/4 v12, 0x0

    if-nez v0, :cond_17

    .line 169
    const-string v0, "Restore engine used after halting"

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v12

    .line 173
    :cond_17
    new-instance v9, Lcom/android/server/backup/restore/FullRestoreEngine$1;

    invoke-direct {v9, v1}, Lcom/android/server/backup/restore/FullRestoreEngine$1;-><init>(Lcom/android/server/backup/restore/FullRestoreEngine;)V

    .line 180
    new-instance v13, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v0, p7

    invoke-direct {v13, v2, v9, v0}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    .line 188
    const/4 v14, -0x3

    const/4 v15, 0x0

    const/4 v10, 0x1

    :try_start_26
    invoke-virtual {v13}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v8

    .line 189
    if-eqz v8, :cond_4c9

    .line 194
    iget-object v7, v8, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 195
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 198
    if-eqz v4, :cond_63

    .line 199
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected data for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but saw "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v1, v14}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 202
    invoke-virtual {v1, v12}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 203
    return v12

    .line 209
    :cond_63
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 210
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_72
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_89

    .line 217
    const-string v0, "Saw new package; finalizing old one"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 221
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-direct {v1, v0, v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 222
    iput-object v15, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 223
    iput-object v15, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    .line 227
    :cond_89
    iget-object v0, v8, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v5, "_manifest"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 228
    invoke-virtual {v13, v8}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 232
    iget-wide v2, v8, Lcom/android/server/backup/FileMetadata;->version:J

    iput-wide v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    .line 233
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/content/pm/PackageManagerInternal;

    .line 235
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 236
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 235
    move-object v2, v13

    move/from16 v4, p5

    move-object v5, v8

    move/from16 v16, v6

    move-object v6, v0

    move-object v14, v7

    move-object v7, v9

    move-object v9, v8

    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v2

    .line 238
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v4, v9, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v2, v9, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-wide v2, v9, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v2, v3}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 245
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0, v14}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 246
    move-object v15, v9

    move/from16 v30, v10

    goto/16 :goto_4cc

    :cond_e1
    move-object v14, v7

    iget-object v0, v8, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v5, "_meta"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 248
    invoke-virtual {v13, v8}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    .line 254
    invoke-virtual {v13}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 256
    invoke-virtual {v13}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    .line 258
    iget-wide v2, v8, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v2, v3}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    move-object v15, v8

    move/from16 v30, v10

    goto/16 :goto_4cc

    .line 262
    :cond_102
    nop

    .line 263
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/restore/RestorePolicy;

    .line 264
    sget-object v5, Lcom/android/server/backup/restore/FullRestoreEngine$2;->$SwitchMap$com$android$server$backup$restore$RestorePolicy:[I

    invoke-virtual {v0}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v0

    aget v0, v5, v0
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_113} :catch_4cf

    const/4 v5, 0x3

    if-eq v0, v10, :cond_197

    const/4 v6, 0x2

    const-string v7, "a"

    if-eq v0, v6, :cond_146

    if-eq v0, v5, :cond_130

    .line 317
    :try_start_11d
    const-string v0, "Invalid policy from manifest"

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    nop

    .line 319
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v8

    move/from16 v30, v10

    move v10, v12

    goto/16 :goto_19b

    .line 301
    :cond_130
    iget-object v0, v8, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 303
    const-string v0, "apk present but ACCEPT"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    move-object v15, v8

    move/from16 v30, v10

    move v10, v12

    goto :goto_19b

    .line 301
    :cond_142
    move-object v15, v8

    move/from16 v30, v10

    goto :goto_19b

    .line 272
    :cond_146
    iget-object v0, v8, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18a

    .line 274
    const-string v0, "APK file; installing"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 279
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    iget v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I
    :try_end_169
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_169} :catch_4cf

    .line 278
    move-object/from16 v2, p1

    move/from16 v16, v7

    move-object v7, v8

    move-object v15, v8

    move-object v8, v0

    move/from16 v30, v10

    move/from16 v10, v16

    :try_start_174
    invoke-static/range {v2 .. v10}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z

    move-result v0

    .line 284
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v0, :cond_17f

    .line 285
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_181

    .line 286
    :cond_17f
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 284
    :goto_181
    invoke-virtual {v2, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-wide v2, v15, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v2, v3}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 291
    return v30

    .line 295
    :cond_18a
    move-object v15, v8

    move/from16 v30, v10

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    nop

    .line 298
    move v10, v12

    goto :goto_19b

    .line 266
    :cond_197
    move-object v15, v8

    move/from16 v30, v10

    .line 267
    move v10, v12

    .line 324
    :goto_19b
    invoke-static {v15}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    iget-object v0, v15, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v0
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_1a7} :catch_4c7

    if-nez v0, :cond_1aa

    .line 325
    :cond_1a9
    move v10, v12

    .line 333
    :cond_1aa
    const-string v6, "k"

    if-eqz v10, :cond_22a

    :try_start_1ae
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_1b0
    .catch Ljava/io/IOException; {:try_start_1ae .. :try_end_1b0} :catch_4c7

    if-nez v0, :cond_22a

    .line 339
    :try_start_1b2
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 340
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 341
    invoke-virtual {v0, v14, v12, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 345
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e7

    .line 352
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z

    move-result v0

    .line 354
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v7, :cond_1d8

    if-eqz v0, :cond_1e2

    .line 356
    :cond_1d8
    const-string v0, "Clearing app data preparatory to full restore"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataBeforeRestore(Ljava/lang/String;)V

    .line 366
    :cond_1e2
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_1e7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setUpPipes()V

    .line 376
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 377
    iget-object v8, v15, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f8

    .line 378
    move v5, v12

    goto :goto_1f9

    .line 379
    :cond_1f8
    nop

    .line 376
    :goto_1f9
    invoke-virtual {v0, v7, v5}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 380
    iput-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_201
    .catch Ljava/io/IOException; {:try_start_1b2 .. :try_end_201} :catch_204
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b2 .. :try_end_201} :catch_202

    goto :goto_205

    .line 383
    :catch_202
    move-exception v0

    goto :goto_206

    .line 381
    :catch_204
    move-exception v0

    .line 385
    :goto_205
    nop

    .line 387
    :goto_206
    :try_start_206
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v0, :cond_22a

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create agent for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    nop

    .line 390
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 391
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v10, v12

    .line 397
    :cond_22a
    if-eqz v10, :cond_253

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_253

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring data for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but agent is for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    move v10, v12

    .line 407
    :cond_253
    if-eqz v10, :cond_493

    .line 408
    nop

    .line 409
    iget-wide v7, v15, Lcom/android/server/backup/FileMetadata;->size:J

    .line 410
    const-string v0, "com.android.sharedstoragebackup"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 411
    if-eqz v0, :cond_269

    .line 412
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getSharedBackupAgentTimeoutMillis()J

    move-result-wide v16

    move-wide/from16 v20, v16

    goto :goto_271

    .line 413
    :cond_269
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v16
    :try_end_26f
    .catch Ljava/io/IOException; {:try_start_206 .. :try_end_26f} :catch_4c7

    move-wide/from16 v20, v16

    :goto_271
    nop

    .line 415
    :try_start_272
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    const/16 v23, 0x1

    move-object/from16 v18, v0

    move/from16 v19, p6

    move-object/from16 v22, v5

    invoke-virtual/range {v18 .. v23}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 420
    const-string/jumbo v0, "obb"

    iget-object v5, v15, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_28a
    .catch Ljava/io/IOException; {:try_start_272 .. :try_end_28a} :catch_3be
    .catch Landroid/os/RemoteException; {:try_start_272 .. :try_end_28a} :catch_3b0

    const-string v5, " : "

    if-eqz v0, :cond_2db

    .line 422
    :try_start_28e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restoring OBB file for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v18, v5, v12

    iget-wide v5, v15, Lcom/android/server/backup/FileMetadata;->size:J

    iget v9, v15, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v12, v15, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;
    :try_end_2b6
    .catch Ljava/io/IOException; {:try_start_28e .. :try_end_2b6} :catch_3be
    .catch Landroid/os/RemoteException; {:try_start_28e .. :try_end_2b6} :catch_3b0

    move-wide/from16 v31, v7

    :try_start_2b8
    iget-wide v7, v15, Lcom/android/server/backup/FileMetadata;->mode:J

    iget-wide v2, v15, Lcom/android/server/backup/FileMetadata;->mtime:J

    move/from16 p5, v10

    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 428
    invoke-virtual {v10}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v28

    .line 425
    move-object/from16 v16, v0

    move-object/from16 v17, v14

    move-wide/from16 v19, v5

    move/from16 v21, v9

    move-object/from16 v22, v12

    move-wide/from16 v23, v7

    move-wide/from16 v25, v2

    move/from16 v27, p6

    invoke-virtual/range {v16 .. v28}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V

    move-object/from16 v33, v13

    goto/16 :goto_39b

    .line 429
    :cond_2db
    move-wide/from16 v31, v7

    move/from16 p5, v10

    iget-object v0, v15, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_333

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restoring key-value file for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-wide v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    iput-wide v2, v15, Lcom/android/server/backup/FileMetadata;->version:J

    .line 438
    new-instance v0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 441
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v18

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v20, v3, v5

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v19, v15

    move-object/from16 v21, v3

    move/from16 v22, p6

    invoke-direct/range {v16 .. v22}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    .line 443
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v3, "restore-key-value-runner"

    invoke-direct {v2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 444
    move-object/from16 v33, v13

    goto :goto_39b

    .line 452
    :cond_333
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36c

    .line 453
    const-string/jumbo v0, "system process agent - spinning a thread"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v0, Lcom/android/server/backup/restore/RestoreFileRunnable;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v20, v5, v6

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v15

    move/from16 v21, p6

    invoke-direct/range {v16 .. v21}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 456
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v3, "restore-sys-runner"

    invoke-direct {v2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 457
    move-object/from16 v33, v13

    goto :goto_39b

    .line 458
    :cond_36c
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v17, v2, v3

    iget-wide v2, v15, Lcom/android/server/backup/FileMetadata;->size:J

    iget v5, v15, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v6, v15, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v7, v15, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-wide v8, v15, Lcom/android/server/backup/FileMetadata;->mode:J
    :try_end_37d
    .catch Ljava/io/IOException; {:try_start_2b8 .. :try_end_37d} :catch_3ae
    .catch Landroid/os/RemoteException; {:try_start_2b8 .. :try_end_37d} :catch_3ac

    move-object v10, v13

    :try_start_37e
    iget-wide v12, v15, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_380
    .catch Ljava/io/IOException; {:try_start_37e .. :try_end_380} :catch_3a8
    .catch Landroid/os/RemoteException; {:try_start_37e .. :try_end_380} :catch_3a4

    move-object/from16 v33, v10

    :try_start_382
    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 460
    invoke-virtual {v10}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v28

    .line 458
    move-object/from16 v16, v0

    move-wide/from16 v18, v2

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-wide/from16 v23, v8

    move-wide/from16 v25, v12

    move/from16 v27, p6

    invoke-interface/range {v16 .. v28}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_39b
    .catch Ljava/io/IOException; {:try_start_382 .. :try_end_39b} :catch_3a2
    .catch Landroid/os/RemoteException; {:try_start_382 .. :try_end_39b} :catch_3a0

    .line 474
    :goto_39b
    move/from16 v10, p5

    move/from16 v0, v30

    goto :goto_3cc

    .line 468
    :catch_3a0
    move-exception v0

    goto :goto_3b5

    .line 463
    :catch_3a2
    move-exception v0

    goto :goto_3c3

    .line 468
    :catch_3a4
    move-exception v0

    move-object/from16 v33, v10

    goto :goto_3b5

    .line 463
    :catch_3a8
    move-exception v0

    move-object/from16 v33, v10

    goto :goto_3c3

    .line 468
    :catch_3ac
    move-exception v0

    goto :goto_3b3

    .line 463
    :catch_3ae
    move-exception v0

    goto :goto_3c1

    .line 468
    :catch_3b0
    move-exception v0

    move-wide/from16 v31, v7

    :goto_3b3
    move-object/from16 v33, v13

    .line 471
    :goto_3b5
    :try_start_3b5
    const-string v0, "Agent crashed during full restore"

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    nop

    .line 473
    const/4 v0, 0x0

    const/4 v10, 0x0

    goto :goto_3cc

    .line 463
    :catch_3be
    move-exception v0

    move-wide/from16 v31, v7

    :goto_3c1
    move-object/from16 v33, v13

    .line 465
    :goto_3c3
    const-string v0, "Couldn\'t establish restore"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    nop

    .line 467
    nop

    .line 474
    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 477
    :goto_3cc
    if-eqz v10, :cond_445

    .line 481
    nop

    .line 482
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v30

    .line 483
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move/from16 v12, v30

    move-wide/from16 v5, v31

    .line 484
    :goto_3e0
    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_42f

    .line 485
    move-object/from16 v3, p3

    array-length v0, v3

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-lez v0, :cond_3f0

    .line 486
    array-length v0, v3

    goto :goto_3f1

    :cond_3f0
    long-to-int v0, v5

    .line 487
    :goto_3f1
    move-object/from16 v7, p1

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 488
    if-ltz v0, :cond_403

    .line 489
    iget-wide v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    move-object/from16 v16, v14

    int-to-long v13, v0

    add-long/2addr v8, v13

    iput-wide v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J
    :try_end_402
    .catch Ljava/io/IOException; {:try_start_3b5 .. :try_end_402} :catch_4c7

    goto :goto_405

    .line 488
    :cond_403
    move-object/from16 v16, v14

    .line 491
    :goto_405
    if-gtz v0, :cond_408

    .line 492
    goto :goto_435

    .line 494
    :cond_408
    int-to-long v8, v0

    sub-long/2addr v5, v8

    .line 498
    if-eqz v12, :cond_42c

    .line 500
    const/4 v8, 0x0

    :try_start_40d
    invoke-virtual {v2, v3, v8, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_410
    .catch Ljava/io/IOException; {:try_start_40d .. :try_end_410} :catch_411

    .line 505
    goto :goto_42c

    .line 501
    :catch_411
    move-exception v0

    move-object v8, v0

    .line 502
    :try_start_413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to write to restore pipe: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v12, 0x0

    .line 507
    :cond_42c
    :goto_42c
    move-object/from16 v14, v16

    goto :goto_3e0

    .line 484
    :cond_42f
    move-object/from16 v7, p1

    move-object/from16 v3, p3

    move-object/from16 v16, v14

    .line 511
    :goto_435
    iget-wide v5, v15, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v2, v33

    invoke-virtual {v2, v5, v6}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 515
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move/from16 v2, p6

    invoke-virtual {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v0

    goto :goto_44b

    .line 477
    :cond_445
    move-object/from16 v7, p1

    move-object/from16 v3, p3

    move-object/from16 v16, v14

    .line 520
    :goto_44b
    if-nez v0, :cond_491

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agent failure restoring "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; ending restore"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 525
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 526
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 527
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    if-eqz v4, :cond_497

    .line 532
    const/4 v0, -0x2

    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 533
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 534
    return v2

    .line 520
    :cond_491
    const/4 v5, 0x0

    goto :goto_497

    .line 407
    :cond_493
    move-object v7, v2

    move/from16 p5, v10

    const/4 v5, 0x0

    .line 542
    :cond_497
    :goto_497
    if-nez v10, :cond_4cc

    .line 546
    iget-wide v8, v15, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v12, 0x1ff

    add-long/2addr v8, v12

    const-wide/16 v12, -0x200

    and-long/2addr v8, v12

    .line 547
    :goto_4a1
    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-lez v0, :cond_4cc

    .line 548
    array-length v0, v3

    int-to-long v12, v0

    cmp-long v0, v8, v12

    if-lez v0, :cond_4af

    .line 549
    array-length v0, v3

    goto :goto_4b0

    :cond_4af
    long-to-int v0, v8

    .line 550
    :goto_4b0
    const/4 v2, 0x0

    invoke-virtual {v7, v3, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    int-to-long v12, v0

    .line 551
    const-wide/16 v16, 0x0

    cmp-long v0, v12, v16

    if-ltz v0, :cond_4c1

    .line 552
    iget-wide v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    add-long/2addr v5, v12

    iput-wide v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J
    :try_end_4c1
    .catch Ljava/io/IOException; {:try_start_413 .. :try_end_4c1} :catch_4c7

    .line 554
    :cond_4c1
    if-gtz v0, :cond_4c4

    .line 555
    goto :goto_4cc

    .line 557
    :cond_4c4
    sub-long/2addr v8, v12

    .line 558
    const/4 v5, 0x0

    goto :goto_4a1

    .line 562
    :catch_4c7
    move-exception v0

    goto :goto_4d2

    .line 189
    :cond_4c9
    move-object v15, v8

    move/from16 v30, v10

    .line 568
    :cond_4cc
    :goto_4cc
    move-object/from16 v29, v15

    goto :goto_4f0

    .line 562
    :catch_4cf
    move-exception v0

    move/from16 v30, v10

    .line 564
    :goto_4d2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "io exception on restore socket read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 567
    const/16 v29, 0x0

    .line 571
    :goto_4f0
    if-nez v29, :cond_503

    .line 575
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 576
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 577
    if-eqz p2, :cond_504

    .line 578
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-direct {v1, v0, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    goto :goto_504

    .line 571
    :cond_503
    const/4 v5, 0x0

    .line 581
    :cond_504
    :goto_504
    if-eqz v29, :cond_507

    goto :goto_509

    :cond_507
    move/from16 v30, v5

    :goto_509
    return v30
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .registers 3

    .line 706
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_13

    .line 709
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 713
    goto :goto_13

    .line 710
    :catch_8
    move-exception p1

    .line 711
    const-string p1, "BackupManagerService"

    const-string v0, "full restore observer went away: restorePackage"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 715
    :cond_13
    :goto_13
    return-void
.end method
