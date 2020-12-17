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
    .param p1, "backupManagerService"  # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "monitorTask"  # Lcom/android/server/backup/BackupRestoreTask;
    .param p3, "observer"  # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "monitor"  # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "onlyPackage"  # Landroid/content/pm/PackageInfo;
    .param p6, "allowApks"  # Z
    .param p7, "allowObbs"  # Z
    .param p8, "ephemeralOpToken"  # I
    .param p9, "isAdbRestore"  # Z

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
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    .line 151
    nop

    .line 152
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 151
    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 154
    iput-boolean p9, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    .line 155
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 156
    return-void
.end method

.method static synthetic access$014(Lcom/android/server/backup/restore/FullRestoreEngine;J)J
    .registers 5
    .param p0, "x0"  # Lcom/android/server/backup/restore/FullRestoreEngine;
    .param p1, "x1"  # J

    .line 69
    iget-wide v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    return-wide v0
.end method

.method private static isCanonicalFilePath(Ljava/lang/String;)Z
    .registers 2
    .param p0, "path"  # Ljava/lang/String;

    .line 676
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    .line 683
    :cond_11
    const/4 v0, 0x1

    return v0

    .line 680
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method private static isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z
    .registers 4
    .param p0, "info"  # Lcom/android/server/backup/FileMetadata;

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
    iget-object v0, p0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v2, "no_backup/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 667
    return v1

    .line 672
    :cond_23
    const/4 v0, 0x1

    return v0
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
    .param p1, "packageName"  # Ljava/lang/String;

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
    .local v0, "packageListString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 698
    const/4 v1, 0x0

    return v1

    .line 701
    :cond_1b
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 702
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .registers 10
    .param p1, "app"  # Landroid/content/pm/ApplicationInfo;
    .param p2, "doRestoreFinished"  # Z

    .line 610
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_61

    .line 613
    if-eqz p2, :cond_50

    .line 614
    :try_start_6
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    .line 615
    .local v0, "token":I
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 616
    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v3

    .line 617
    .local v3, "fullBackupAgentTimeoutMillis":J
    new-instance v5, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v5, v1, v0}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/UserBackupManagerService;I)V

    .line 619
    .local v5, "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x1

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 621
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 625
    new-instance v1, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;

    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v1, v2, v0, v6}, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;-><init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/UserBackupManagerService;)V

    .line 627
    .local v1, "runner":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v6, "restore-sys-finished-runner"

    invoke-direct {v2, v1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 628
    .end local v1  # "runner":Ljava/lang/Runnable;
    goto :goto_4d

    .line 629
    :cond_42
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 630
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v2

    .line 629
    invoke-interface {v1, v0, v2}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    .line 633
    :goto_4d
    invoke-virtual {v5}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->await()V

    .line 636
    .end local v0  # "token":I
    .end local v3  # "fullBackupAgentTimeoutMillis":J
    .end local v5  # "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    :cond_50
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_55} :catch_56

    .line 639
    goto :goto_5e

    .line 637
    :catch_56
    move-exception v0

    .line 638
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_5e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 642
    :cond_61
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
    .local v1, "e":Ljava/io/IOException;
    :try_start_1f
    const-string v2, "BackupManagerService"

    const-string v3, "Couldn\'t close agent pipes"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 606
    .end local v1  # "e":Ljava/io/IOException;
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
    .registers 50
    .param p1, "instream"  # Ljava/io/InputStream;
    .param p2, "mustKillAgent"  # Z
    .param p3, "buffer"  # [B
    .param p4, "onlyPackage"  # Landroid/content/pm/PackageInfo;
    .param p5, "allowApks"  # Z
    .param p6, "token"  # I
    .param p7, "monitor"  # Landroid/app/backup/IBackupManagerMonitor;

    .line 168
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v0

    const/4 v14, 0x0

    const-string v15, "BackupManagerService"

    if-nez v0, :cond_17

    .line 169
    const-string v0, "Restore engine used after halting"

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v14

    .line 173
    :cond_17
    new-instance v0, Lcom/android/server/backup/restore/FullRestoreEngine$1;

    invoke-direct {v0, v1}, Lcom/android/server/backup/restore/FullRestoreEngine$1;-><init>(Lcom/android/server/backup/restore/FullRestoreEngine;)V

    move-object v10, v0

    .line 180
    .local v10, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    new-instance v0, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v9, p7

    invoke-direct {v0, v11, v10, v9}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    move-object v8, v0

    .line 188
    .local v8, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    const/4 v6, -0x3

    :try_start_26
    invoke-virtual {v8}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v0

    move-object v4, v0

    .line 189
    .local v4, "info":Lcom/android/server/backup/FileMetadata;
    if-eqz v4, :cond_5ca

    .line 194
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object v3, v0

    .line 195
    .local v3, "pkg":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_36} :catch_5d4

    const/4 v2, 0x0

    if-nez v0, :cond_96

    .line 198
    if-eqz v13, :cond_66

    .line 199
    :try_start_3b
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected data for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but saw "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v1, v6}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 202
    invoke-virtual {v1, v14}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 203
    return v14

    .line 209
    :cond_66
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 210
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_75
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_96

    .line 217
    const-string v0, "Saw new package; finalizing old one"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 221
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-direct {v1, v0, v7}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 222
    iput-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 223
    iput-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_8c} :catch_8d

    goto :goto_96

    .line 562
    .end local v3  # "pkg":Ljava/lang/String;
    .end local v4  # "info":Lcom/android/server/backup/FileMetadata;
    :catch_8d
    move-exception v0

    move/from16 v4, p6

    move-object v7, v8

    move-object v2, v9

    move-object/from16 v31, v10

    goto/16 :goto_5dc

    .line 227
    .restart local v3  # "pkg":Ljava/lang/String;
    .restart local v4  # "info":Lcom/android/server/backup/FileMetadata;
    :cond_96
    :goto_96
    :try_start_96
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v7, "_manifest"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9e} :catch_5d4

    if-eqz v0, :cond_fe

    .line 228
    :try_start_a0
    invoke-virtual {v8, v4}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 232
    .local v0, "signatures":[Landroid/content/pm/Signature;
    iget-wide v5, v4, Lcom/android/server/backup/FileMetadata;->version:J

    iput-wide v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    .line 233
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    .line 235
    .local v7, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 236
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_b9} :catch_f5

    .line 235
    move-object v2, v8

    move-object v14, v3

    .end local v3  # "pkg":Ljava/lang/String;
    .local v14, "pkg":Ljava/lang/String;
    move-object v3, v5

    move-object v5, v4

    .end local v4  # "info":Lcom/android/server/backup/FileMetadata;
    .local v5, "info":Lcom/android/server/backup/FileMetadata;
    move/from16 v4, p5

    move-object/from16 v29, v5

    const/4 v13, 0x1

    .end local v5  # "info":Lcom/android/server/backup/FileMetadata;
    .local v29, "info":Lcom/android/server/backup/FileMetadata;
    move/from16 v16, v6

    move-object v6, v0

    move-object v13, v8

    .end local v8  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v13, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    move/from16 v8, v16

    :try_start_c8
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v2

    .line 238
    .local v2, "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v6, v29

    .end local v29  # "info":Lcom/android/server/backup/FileMetadata;
    .local v6, "info":Lcom/android/server/backup/FileMetadata;
    iget-object v4, v6, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v4, v6, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v3, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-wide v3, v6, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v3, v4}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 245
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v3, v14}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_ee} :catch_12d

    .line 246
    .end local v0  # "signatures":[Landroid/content/pm/Signature;
    .end local v2  # "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v7  # "pmi":Landroid/content/pm/PackageManagerInternal;
    move/from16 v4, p6

    move-object/from16 v31, v10

    move-object v7, v13

    goto/16 :goto_5d0

    .line 562
    .end local v6  # "info":Lcom/android/server/backup/FileMetadata;
    .end local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14  # "pkg":Ljava/lang/String;
    .restart local v8  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_f5
    move-exception v0

    move/from16 v4, p6

    move-object v7, v8

    move-object v2, v9

    move-object/from16 v31, v10

    .end local v8  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_5dc

    .line 246
    .end local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3  # "pkg":Ljava/lang/String;
    .restart local v4  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v8  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_fe
    move-object v14, v3

    move-object v6, v4

    move-object v13, v8

    .end local v3  # "pkg":Ljava/lang/String;
    .end local v4  # "info":Lcom/android/server/backup/FileMetadata;
    .end local v8  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v6  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14  # "pkg":Ljava/lang/String;
    :try_start_101
    iget-object v0, v6, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v3, "_meta"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_109} :catch_5c1

    if-eqz v0, :cond_136

    .line 248
    :try_start_10b
    invoke-virtual {v13, v6}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    .line 254
    invoke-virtual {v13}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 256
    invoke-virtual {v13}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_118} :catch_12d

    move-object v2, v0

    .line 258
    .end local p7  # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v2, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :try_start_119
    iget-wide v3, v6, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v3, v4}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V
    :try_end_11e
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_11e} :catch_125

    move/from16 v4, p6

    move-object/from16 v31, v10

    move-object v7, v13

    goto/16 :goto_5d2

    .line 562
    .end local v6  # "info":Lcom/android/server/backup/FileMetadata;
    .end local v14  # "pkg":Ljava/lang/String;
    :catch_125
    move-exception v0

    move/from16 v4, p6

    move-object/from16 v31, v10

    move-object v7, v13

    goto/16 :goto_5dc

    .end local v2  # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local p7  # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_12d
    move-exception v0

    move/from16 v4, p6

    move-object v2, v9

    move-object/from16 v31, v10

    move-object v7, v13

    goto/16 :goto_5dc

    .line 262
    .restart local v6  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14  # "pkg":Ljava/lang/String;
    :cond_136
    const/4 v0, 0x1

    .line 263
    .local v0, "okay":Z
    :try_start_137
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/restore/RestorePolicy;

    move-object/from16 v29, v3

    .line 264
    .local v29, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    sget-object v3, Lcom/android/server/backup/restore/FullRestoreEngine$2;->$SwitchMap$com$android$server$backup$restore$RestorePolicy:[I

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_149} :catch_5c1

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1df

    const/4 v5, 0x2

    const-string v7, "a"

    if-eq v3, v5, :cond_17e

    if-eq v3, v4, :cond_166

    .line 317
    :try_start_154
    const-string v3, "Invalid policy from manifest"

    invoke-static {v15, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v0, 0x0

    .line 319
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v3, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v6

    move-object/from16 v31, v10

    goto/16 :goto_1e4

    .line 301
    :cond_166
    iget-object v3, v6, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_179

    .line 303
    const-string v3, "apk present but ACCEPT"

    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_173} :catch_12d

    .line 309
    const/4 v0, 0x0

    move-object v3, v6

    move-object/from16 v31, v10

    goto/16 :goto_1e4

    .line 301
    :cond_179
    move-object v3, v6

    move-object/from16 v31, v10

    goto/16 :goto_1e4

    .line 272
    :cond_17e
    :try_start_17e
    iget-object v3, v6, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c9

    .line 274
    const-string v2, "APK file; installing"

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 278
    .local v8, "installerPackageName":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 279
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    iget v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I
    :try_end_1a2
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_1a2} :catch_1d5

    .line 278
    move/from16 v16, v2

    move-object/from16 v2, p1

    move-object/from16 v30, v6

    .end local v6  # "info":Lcom/android/server/backup/FileMetadata;
    .local v30, "info":Lcom/android/server/backup/FileMetadata;
    move-object v6, v7

    move-object/from16 v7, v30

    move-object v9, v10

    move-object/from16 v31, v10

    .end local v10  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v31, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    move/from16 v10, v16

    :try_start_1b0
    invoke-static/range {v2 .. v10}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z

    move-result v2

    .line 284
    .local v2, "isSuccessfullyInstalled":Z
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v2, :cond_1bb

    .line 285
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_1bd

    .line 286
    :cond_1bb
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 284
    :goto_1bd
    invoke-virtual {v3, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    move-object/from16 v3, v30

    .end local v30  # "info":Lcom/android/server/backup/FileMetadata;
    .local v3, "info":Lcom/android/server/backup/FileMetadata;
    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 291
    const/4 v4, 0x1

    return v4

    .line 295
    .end local v2  # "isSuccessfullyInstalled":Z
    .end local v3  # "info":Lcom/android/server/backup/FileMetadata;
    .end local v8  # "installerPackageName":Ljava/lang/String;
    .end local v31  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v6  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v10  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :cond_1c9
    move-object v3, v6

    move-object/from16 v31, v10

    .end local v6  # "info":Lcom/android/server/backup/FileMetadata;
    .end local v10  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v3  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v31  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v5, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d3
    .catch Ljava/io/IOException; {:try_start_1b0 .. :try_end_1d3} :catch_1f5

    .line 296
    const/4 v0, 0x0

    .line 298
    goto :goto_1e4

    .line 562
    .end local v0  # "okay":Z
    .end local v3  # "info":Lcom/android/server/backup/FileMetadata;
    .end local v14  # "pkg":Ljava/lang/String;
    .end local v29  # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v31  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v10  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :catch_1d5
    move-exception v0

    move-object/from16 v31, v10

    move/from16 v4, p6

    move-object/from16 v2, p7

    move-object v7, v13

    .end local v10  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v31  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    goto/16 :goto_5dc

    .line 266
    .end local v31  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v0  # "okay":Z
    .restart local v6  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v10  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v14  # "pkg":Ljava/lang/String;
    .restart local v29  # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_1df
    move-object v3, v6

    move-object/from16 v31, v10

    .end local v6  # "info":Lcom/android/server/backup/FileMetadata;
    .end local v10  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v3  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v31  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    const/4 v0, 0x0

    .line 267
    nop

    .line 324
    :goto_1e4
    :try_start_1e4
    invoke-static {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z

    move-result v5
    :try_end_1e8
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1e8} :catch_5ba

    if-eqz v5, :cond_1fd

    :try_start_1ea
    iget-object v5, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v5
    :try_end_1f0
    .catch Ljava/io/IOException; {:try_start_1ea .. :try_end_1f0} :catch_1f5

    if-nez v5, :cond_1f3

    goto :goto_1fd

    :cond_1f3
    move v5, v0

    goto :goto_1ff

    .line 562
    .end local v0  # "okay":Z
    .end local v3  # "info":Lcom/android/server/backup/FileMetadata;
    .end local v14  # "pkg":Ljava/lang/String;
    .end local v29  # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_1f5
    move-exception v0

    move/from16 v4, p6

    move-object/from16 v2, p7

    move-object v7, v13

    goto/16 :goto_5dc

    .line 325
    .restart local v0  # "okay":Z
    .restart local v3  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14  # "pkg":Ljava/lang/String;
    .restart local v29  # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_1fd
    :goto_1fd
    const/4 v0, 0x0

    move v5, v0

    .line 333
    .end local v0  # "okay":Z
    .local v5, "okay":Z
    :goto_1ff
    const-string/jumbo v6, "k"

    if-eqz v5, :cond_280

    :try_start_204
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_206
    .catch Ljava/io/IOException; {:try_start_204 .. :try_end_206} :catch_1f5

    if-nez v0, :cond_280

    .line 339
    :try_start_208
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 340
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 341
    const/4 v8, 0x0

    invoke-virtual {v0, v14, v8, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 345
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23e

    .line 352
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z

    move-result v0

    .line 354
    .local v0, "forceClear":Z
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v7, :cond_22f

    if-eqz v0, :cond_239

    .line 356
    :cond_22f
    const-string v7, "Clearing app data preparatory to full restore"

    invoke-static {v15, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7, v14}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataBeforeRestore(Ljava/lang/String;)V

    .line 366
    :cond_239
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 375
    .end local v0  # "forceClear":Z
    :cond_23e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setUpPipes()V

    .line 376
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 377
    iget-object v8, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24f

    .line 378
    const/4 v4, 0x0

    goto :goto_250

    .line 379
    :cond_24f
    nop

    .line 376
    :goto_250
    invoke-virtual {v0, v7, v4}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 380
    iput-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_258
    .catch Ljava/io/IOException; {:try_start_208 .. :try_end_258} :catch_25b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_208 .. :try_end_258} :catch_259

    goto :goto_25c

    .line 383
    :catch_259
    move-exception v0

    goto :goto_25d

    .line 381
    :catch_25b
    move-exception v0

    .line 385
    :goto_25c
    nop

    .line 387
    :goto_25d
    :try_start_25d
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v0, :cond_280

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create agent for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v5, 0x0

    .line 390
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 391
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_280
    if-eqz v5, :cond_2a9

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a9

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring data for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " but agent is for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a8
    .catch Ljava/io/IOException; {:try_start_25d .. :try_end_2a8} :catch_1f5

    .line 400
    const/4 v5, 0x0

    .line 407
    :cond_2a9
    if-eqz v5, :cond_56f

    .line 408
    const/4 v4, 0x1

    .line 409
    .local v4, "agentSuccess":Z
    :try_start_2ac
    iget-wide v9, v3, Lcom/android/server/backup/FileMetadata;->size:J

    .line 410
    .local v9, "toCopy":J
    const-string v0, "com.android.sharedstoragebackup"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2b4
    .catch Ljava/io/IOException; {:try_start_2ac .. :try_end_2b4} :catch_5ba

    move/from16 v30, v0

    .line 411
    .local v30, "isSharedStorage":Z
    if-eqz v30, :cond_2c1

    .line 412
    :try_start_2b8
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getSharedBackupAgentTimeoutMillis()J

    move-result-wide v16
    :try_end_2be
    .catch Ljava/io/IOException; {:try_start_2b8 .. :try_end_2be} :catch_1f5

    move-wide/from16 v34, v16

    goto :goto_2c9

    .line 413
    :cond_2c1
    :try_start_2c1
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v16
    :try_end_2c7
    .catch Ljava/io/IOException; {:try_start_2c1 .. :try_end_2c7} :catch_5ba

    move-wide/from16 v34, v16

    :goto_2c9
    nop

    .line 415
    .local v34, "timeout":J
    :try_start_2ca
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    const/16 v37, 0x1

    move-object/from16 v32, v0

    move/from16 v33, p6

    move-object/from16 v36, v2

    invoke-virtual/range {v32 .. v37}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 420
    const-string/jumbo v0, "obb"

    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2e2
    .catch Ljava/io/IOException; {:try_start_2ca .. :try_end_2e2} :catch_477
    .catch Landroid/os/RemoteException; {:try_start_2ca .. :try_end_2e2} :catch_45a

    const-string v2, " : "

    if-eqz v0, :cond_372

    .line 422
    :try_start_2e6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restoring OBB file for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v18, v2, v6

    iget-wide v7, v3, Lcom/android/server/backup/FileMetadata;->size:J

    iget v2, v3, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v6, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;
    :try_end_30f
    .catch Ljava/io/IOException; {:try_start_2e6 .. :try_end_30f} :catch_365
    .catch Landroid/os/RemoteException; {:try_start_2e6 .. :try_end_30f} :catch_358

    move/from16 v37, v4

    move/from16 v36, v5

    .end local v4  # "agentSuccess":Z
    .end local v5  # "okay":Z
    .local v36, "okay":Z
    .local v37, "agentSuccess":Z
    :try_start_313
    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->mode:J
    :try_end_315
    .catch Ljava/io/IOException; {:try_start_313 .. :try_end_315} :catch_34f
    .catch Landroid/os/RemoteException; {:try_start_313 .. :try_end_315} :catch_346

    move-wide/from16 v38, v9

    .end local v9  # "toCopy":J
    .local v38, "toCopy":J
    :try_start_317
    iget-wide v9, v3, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_319
    .catch Ljava/io/IOException; {:try_start_317 .. :try_end_319} :catch_33f
    .catch Landroid/os/RemoteException; {:try_start_317 .. :try_end_319} :catch_338

    move-object/from16 v40, v13

    .end local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v40, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_31b
    iget-object v13, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 428
    invoke-virtual {v13}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v28

    .line 425
    move-object/from16 v16, v0

    move-object/from16 v17, v14

    move-wide/from16 v19, v7

    move/from16 v21, v2

    move-object/from16 v22, v6

    move-wide/from16 v23, v4

    move-wide/from16 v25, v9

    move/from16 v27, p6

    invoke-virtual/range {v16 .. v28}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_334
    .catch Ljava/io/IOException; {:try_start_31b .. :try_end_334} :catch_3d4
    .catch Landroid/os/RemoteException; {:try_start_31b .. :try_end_334} :catch_3cf

    move-object/from16 v41, v14

    goto/16 :goto_441

    .line 468
    .end local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_338
    move-exception v0

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    .end local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_465

    .line 463
    .end local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_33f
    move-exception v0

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    .end local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_482

    .line 468
    .end local v38  # "toCopy":J
    .end local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v9  # "toCopy":J
    .restart local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_346
    move-exception v0

    move-wide/from16 v38, v9

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    .end local v9  # "toCopy":J
    .end local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v38  # "toCopy":J
    .restart local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_465

    .line 463
    .end local v38  # "toCopy":J
    .end local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v9  # "toCopy":J
    .restart local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_34f
    move-exception v0

    move-wide/from16 v38, v9

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    .end local v9  # "toCopy":J
    .end local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v38  # "toCopy":J
    .restart local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_482

    .line 468
    .end local v36  # "okay":Z
    .end local v37  # "agentSuccess":Z
    .end local v38  # "toCopy":J
    .end local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v4  # "agentSuccess":Z
    .restart local v5  # "okay":Z
    .restart local v9  # "toCopy":J
    .restart local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_358
    move-exception v0

    move/from16 v37, v4

    move/from16 v36, v5

    move-wide/from16 v38, v9

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    .end local v4  # "agentSuccess":Z
    .end local v5  # "okay":Z
    .end local v9  # "toCopy":J
    .end local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v36  # "okay":Z
    .restart local v37  # "agentSuccess":Z
    .restart local v38  # "toCopy":J
    .restart local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_465

    .line 463
    .end local v36  # "okay":Z
    .end local v37  # "agentSuccess":Z
    .end local v38  # "toCopy":J
    .end local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v4  # "agentSuccess":Z
    .restart local v5  # "okay":Z
    .restart local v9  # "toCopy":J
    .restart local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_365
    move-exception v0

    move/from16 v37, v4

    move/from16 v36, v5

    move-wide/from16 v38, v9

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    .end local v4  # "agentSuccess":Z
    .end local v5  # "okay":Z
    .end local v9  # "toCopy":J
    .end local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v36  # "okay":Z
    .restart local v37  # "agentSuccess":Z
    .restart local v38  # "toCopy":J
    .restart local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_482

    .line 429
    .end local v36  # "okay":Z
    .end local v37  # "agentSuccess":Z
    .end local v38  # "toCopy":J
    .end local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v4  # "agentSuccess":Z
    .restart local v5  # "okay":Z
    .restart local v9  # "toCopy":J
    .restart local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_372
    move/from16 v37, v4

    move/from16 v36, v5

    move-wide/from16 v38, v9

    move-object/from16 v40, v13

    .end local v4  # "agentSuccess":Z
    .end local v5  # "okay":Z
    .end local v9  # "toCopy":J
    .end local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v36  # "okay":Z
    .restart local v37  # "agentSuccess":Z
    .restart local v38  # "toCopy":J
    .restart local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_37a
    iget-object v0, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_380
    .catch Ljava/io/IOException; {:try_start_37a .. :try_end_380} :catch_456
    .catch Landroid/os/RemoteException; {:try_start_37a .. :try_end_380} :catch_452

    if-eqz v0, :cond_3d9

    .line 433
    :try_start_382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring key-value file for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-wide v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    iput-wide v4, v3, Lcom/android/server/backup/FileMetadata;->version:J

    .line 438
    new-instance v0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 441
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v18

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v20, v4, v5

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move/from16 v22, p6

    invoke-direct/range {v16 .. v22}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    .line 443
    .local v0, "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-key-value-runner"

    invoke-direct {v2, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_3cb
    .catch Ljava/io/IOException; {:try_start_382 .. :try_end_3cb} :catch_3d4
    .catch Landroid/os/RemoteException; {:try_start_382 .. :try_end_3cb} :catch_3cf

    .line 444
    .end local v0  # "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    move-object/from16 v41, v14

    goto/16 :goto_441

    .line 468
    :catch_3cf
    move-exception v0

    move-object/from16 v41, v14

    goto/16 :goto_465

    .line 463
    :catch_3d4
    move-exception v0

    move-object/from16 v41, v14

    goto/16 :goto_482

    .line 452
    :cond_3d9
    :try_start_3d9
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3e4
    .catch Ljava/io/IOException; {:try_start_3d9 .. :try_end_3e4} :catch_456
    .catch Landroid/os/RemoteException; {:try_start_3d9 .. :try_end_3e4} :catch_452

    if-eqz v0, :cond_412

    .line 453
    :try_start_3e6
    const-string/jumbo v0, "system process agent - spinning a thread"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v0, Lcom/android/server/backup/restore/RestoreFileRunnable;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v20, v5, v6

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move/from16 v21, p6

    invoke-direct/range {v16 .. v21}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 456
    .local v0, "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-sys-runner"

    invoke-direct {v2, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_40f
    .catch Ljava/io/IOException; {:try_start_3e6 .. :try_end_40f} :catch_3d4
    .catch Landroid/os/RemoteException; {:try_start_3e6 .. :try_end_40f} :catch_3cf

    .line 457
    .end local v0  # "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    move-object/from16 v41, v14

    goto :goto_441

    .line 458
    :cond_412
    :try_start_412
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v17, v2, v4

    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J

    iget v2, v3, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v6, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-wide v8, v3, Lcom/android/server/backup/FileMetadata;->mode:J
    :try_end_423
    .catch Ljava/io/IOException; {:try_start_412 .. :try_end_423} :catch_456
    .catch Landroid/os/RemoteException; {:try_start_412 .. :try_end_423} :catch_452

    move-object v10, v14

    .end local v14  # "pkg":Ljava/lang/String;
    .local v10, "pkg":Ljava/lang/String;
    :try_start_424
    iget-wide v13, v3, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_426
    .catch Ljava/io/IOException; {:try_start_424 .. :try_end_426} :catch_44e
    .catch Landroid/os/RemoteException; {:try_start_424 .. :try_end_426} :catch_44a

    move-object/from16 v41, v10

    .end local v10  # "pkg":Ljava/lang/String;
    .local v41, "pkg":Ljava/lang/String;
    :try_start_428
    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 460
    invoke-virtual {v10}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v28

    .line 458
    move-object/from16 v16, v0

    move-wide/from16 v18, v4

    move/from16 v20, v2

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-wide/from16 v23, v8

    move-wide/from16 v25, v13

    move/from16 v27, p6

    invoke-interface/range {v16 .. v28}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_441
    .catch Ljava/io/IOException; {:try_start_428 .. :try_end_441} :catch_448
    .catch Landroid/os/RemoteException; {:try_start_428 .. :try_end_441} :catch_446

    .line 474
    :goto_441
    move/from16 v5, v36

    move/from16 v4, v37

    goto :goto_48a

    .line 468
    :catch_446
    move-exception v0

    goto :goto_465

    .line 463
    :catch_448
    move-exception v0

    goto :goto_482

    .line 468
    .end local v41  # "pkg":Ljava/lang/String;
    .restart local v10  # "pkg":Ljava/lang/String;
    :catch_44a
    move-exception v0

    move-object/from16 v41, v10

    .end local v10  # "pkg":Ljava/lang/String;
    .restart local v41  # "pkg":Ljava/lang/String;
    goto :goto_465

    .line 463
    .end local v41  # "pkg":Ljava/lang/String;
    .restart local v10  # "pkg":Ljava/lang/String;
    :catch_44e
    move-exception v0

    move-object/from16 v41, v10

    .end local v10  # "pkg":Ljava/lang/String;
    .restart local v41  # "pkg":Ljava/lang/String;
    goto :goto_482

    .line 468
    .end local v41  # "pkg":Ljava/lang/String;
    .restart local v14  # "pkg":Ljava/lang/String;
    :catch_452
    move-exception v0

    move-object/from16 v41, v14

    .end local v14  # "pkg":Ljava/lang/String;
    .restart local v41  # "pkg":Ljava/lang/String;
    goto :goto_465

    .line 463
    .end local v41  # "pkg":Ljava/lang/String;
    .restart local v14  # "pkg":Ljava/lang/String;
    :catch_456
    move-exception v0

    move-object/from16 v41, v14

    .end local v14  # "pkg":Ljava/lang/String;
    .restart local v41  # "pkg":Ljava/lang/String;
    goto :goto_482

    .line 468
    .end local v36  # "okay":Z
    .end local v37  # "agentSuccess":Z
    .end local v38  # "toCopy":J
    .end local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v41  # "pkg":Ljava/lang/String;
    .restart local v4  # "agentSuccess":Z
    .restart local v5  # "okay":Z
    .restart local v9  # "toCopy":J
    .restart local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14  # "pkg":Ljava/lang/String;
    :catch_45a
    move-exception v0

    move/from16 v37, v4

    move/from16 v36, v5

    move-wide/from16 v38, v9

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    .line 471
    .end local v4  # "agentSuccess":Z
    .end local v5  # "okay":Z
    .end local v9  # "toCopy":J
    .end local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14  # "pkg":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v36  # "okay":Z
    .restart local v37  # "agentSuccess":Z
    .restart local v38  # "toCopy":J
    .restart local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v41  # "pkg":Ljava/lang/String;
    :goto_465
    :try_start_465
    const-string v2, "Agent crashed during full restore"

    invoke-static {v15, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46a
    .catch Ljava/io/IOException; {:try_start_465 .. :try_end_46a} :catch_46e

    .line 472
    const/4 v4, 0x0

    .line 473
    .end local v37  # "agentSuccess":Z
    .restart local v4  # "agentSuccess":Z
    const/4 v2, 0x0

    move v5, v2

    .end local v36  # "okay":Z
    .local v2, "okay":Z
    goto :goto_48a

    .line 562
    .end local v0  # "e":Landroid/os/RemoteException;
    .end local v2  # "okay":Z
    .end local v3  # "info":Lcom/android/server/backup/FileMetadata;
    .end local v4  # "agentSuccess":Z
    .end local v29  # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v30  # "isSharedStorage":Z
    .end local v34  # "timeout":J
    .end local v38  # "toCopy":J
    .end local v41  # "pkg":Ljava/lang/String;
    :catch_46e
    move-exception v0

    move/from16 v4, p6

    move-object/from16 v2, p7

    move-object/from16 v7, v40

    goto/16 :goto_5dc

    .line 463
    .end local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v4  # "agentSuccess":Z
    .restart local v5  # "okay":Z
    .restart local v9  # "toCopy":J
    .restart local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14  # "pkg":Ljava/lang/String;
    .restart local v29  # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v30  # "isSharedStorage":Z
    .restart local v34  # "timeout":J
    :catch_477
    move-exception v0

    move/from16 v37, v4

    move/from16 v36, v5

    move-wide/from16 v38, v9

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    .line 465
    .end local v4  # "agentSuccess":Z
    .end local v5  # "okay":Z
    .end local v9  # "toCopy":J
    .end local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14  # "pkg":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v36  # "okay":Z
    .restart local v37  # "agentSuccess":Z
    .restart local v38  # "toCopy":J
    .restart local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v41  # "pkg":Ljava/lang/String;
    :goto_482
    :try_start_482
    const-string v2, "Couldn\'t establish restore"

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v4, 0x0

    .line 467
    .end local v37  # "agentSuccess":Z
    .restart local v4  # "agentSuccess":Z
    const/4 v0, 0x0

    .line 474
    .end local v36  # "okay":Z
    .local v0, "okay":Z
    move v5, v0

    .line 477
    .end local v0  # "okay":Z
    .restart local v5  # "okay":Z
    :goto_48a
    if-eqz v5, :cond_50f

    .line 481
    const/4 v0, 0x1

    .line 482
    .local v0, "pipeOkay":Z
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    .line 483
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_49b
    .catch Ljava/io/IOException; {:try_start_482 .. :try_end_49b} :catch_566

    move v6, v0

    move-wide/from16 v9, v38

    .line 484
    .end local v0  # "pipeOkay":Z
    .end local v38  # "toCopy":J
    .local v2, "pipe":Ljava/io/FileOutputStream;
    .local v6, "pipeOkay":Z
    .restart local v9  # "toCopy":J
    :goto_49e
    const-wide/16 v13, 0x0

    cmp-long v0, v9, v13

    if-lez v0, :cond_4f6

    .line 485
    :try_start_4a4
    array-length v0, v12

    int-to-long v13, v0

    cmp-long v0, v9, v13

    if-lez v0, :cond_4ac

    .line 486
    array-length v0, v12

    goto :goto_4ad

    :cond_4ac
    long-to-int v0, v9

    :goto_4ad
    move v8, v0

    .line 487
    .local v8, "toRead":I
    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v13, v0

    .line 488
    .local v13, "nRead":I
    if-ltz v13, :cond_4c2

    .line 489
    move v14, v8

    .end local v8  # "toRead":I
    .local v14, "toRead":I
    iget-wide v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    move/from16 v18, v4

    move/from16 v16, v5

    .end local v4  # "agentSuccess":Z
    .end local v5  # "okay":Z
    .local v16, "okay":Z
    .local v18, "agentSuccess":Z
    int-to-long v4, v13

    add-long/2addr v7, v4

    iput-wide v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J
    :try_end_4c1
    .catch Ljava/io/IOException; {:try_start_4a4 .. :try_end_4c1} :catch_46e

    goto :goto_4c7

    .line 488
    .end local v14  # "toRead":I
    .end local v16  # "okay":Z
    .end local v18  # "agentSuccess":Z
    .restart local v4  # "agentSuccess":Z
    .restart local v5  # "okay":Z
    .restart local v8  # "toRead":I
    :cond_4c2
    move/from16 v18, v4

    move/from16 v16, v5

    move v14, v8

    .line 491
    .end local v4  # "agentSuccess":Z
    .end local v5  # "okay":Z
    .end local v8  # "toRead":I
    .restart local v14  # "toRead":I
    .restart local v16  # "okay":Z
    .restart local v18  # "agentSuccess":Z
    :goto_4c7
    if-gtz v13, :cond_4ca

    .line 492
    goto :goto_4fa

    .line 494
    :cond_4ca
    int-to-long v4, v13

    sub-long/2addr v9, v4

    .line 498
    if-eqz v6, :cond_4f0

    .line 500
    const/4 v4, 0x0

    :try_start_4cf
    invoke-virtual {v2, v12, v4, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4d2
    .catch Ljava/io/IOException; {:try_start_4cf .. :try_end_4d2} :catch_4d3

    .line 505
    goto :goto_4f0

    .line 501
    :catch_4d3
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 502
    .local v0, "e":Ljava/io/IOException;
    :try_start_4d6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write to restore pipe: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 502
    invoke-static {v15, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4ee
    .catch Ljava/io/IOException; {:try_start_4d6 .. :try_end_4ee} :catch_46e

    .line 504
    const/4 v4, 0x0

    move v6, v4

    .line 507
    .end local v0  # "e":Ljava/io/IOException;
    .end local v13  # "nRead":I
    .end local v14  # "toRead":I
    :cond_4f0
    :goto_4f0
    move/from16 v5, v16

    move/from16 v4, v18

    const/4 v7, 0x1

    goto :goto_49e

    .line 484
    .end local v16  # "okay":Z
    .end local v18  # "agentSuccess":Z
    .restart local v4  # "agentSuccess":Z
    .restart local v5  # "okay":Z
    :cond_4f6
    move/from16 v18, v4

    move/from16 v16, v5

    .line 511
    .end local v4  # "agentSuccess":Z
    .end local v5  # "okay":Z
    .restart local v16  # "okay":Z
    .restart local v18  # "agentSuccess":Z
    :goto_4fa
    :try_start_4fa
    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_4fc
    .catch Ljava/io/IOException; {:try_start_4fa .. :try_end_4fc} :catch_566

    move-object/from16 v7, v40

    .end local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v7, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_4fe
    invoke-virtual {v7, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 515
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_503
    .catch Ljava/io/IOException; {:try_start_4fe .. :try_end_503} :catch_50a

    move/from16 v4, p6

    :try_start_505
    invoke-virtual {v0, v4}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v0

    .end local v18  # "agentSuccess":Z
    .local v0, "agentSuccess":Z
    goto :goto_51b

    .line 562
    .end local v0  # "agentSuccess":Z
    .end local v2  # "pipe":Ljava/io/FileOutputStream;
    .end local v3  # "info":Lcom/android/server/backup/FileMetadata;
    .end local v6  # "pipeOkay":Z
    .end local v9  # "toCopy":J
    .end local v16  # "okay":Z
    .end local v29  # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v30  # "isSharedStorage":Z
    .end local v34  # "timeout":J
    .end local v41  # "pkg":Ljava/lang/String;
    :catch_50a
    move-exception v0

    move/from16 v4, p6

    goto/16 :goto_5b5

    .line 477
    .end local v7  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v4  # "agentSuccess":Z
    .restart local v5  # "okay":Z
    .restart local v29  # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v30  # "isSharedStorage":Z
    .restart local v34  # "timeout":J
    .restart local v38  # "toCopy":J
    .restart local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v41  # "pkg":Ljava/lang/String;
    :cond_50f
    move/from16 v18, v4

    move/from16 v16, v5

    move-object/from16 v7, v40

    move/from16 v4, p6

    .end local v4  # "agentSuccess":Z
    .end local v5  # "okay":Z
    .end local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v7  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v16  # "okay":Z
    .restart local v18  # "agentSuccess":Z
    move/from16 v0, v18

    move-wide/from16 v9, v38

    .line 520
    .end local v18  # "agentSuccess":Z
    .end local v38  # "toCopy":J
    .restart local v0  # "agentSuccess":Z
    .restart local v9  # "toCopy":J
    :goto_51b
    if-nez v0, :cond_562

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Agent failure restoring "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v41

    .end local v41  # "pkg":Ljava/lang/String;
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; ending restore"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v6, 0x12

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 525
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 526
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 527
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const/4 v13, 0x1

    if-eqz p4, :cond_578

    .line 532
    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 533
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 534
    return v2

    .line 520
    .end local v5  # "pkg":Ljava/lang/String;
    .restart local v41  # "pkg":Ljava/lang/String;
    :cond_562
    move-object/from16 v5, v41

    const/4 v13, 0x1

    .end local v41  # "pkg":Ljava/lang/String;
    .restart local v5  # "pkg":Ljava/lang/String;
    goto :goto_578

    .line 562
    .end local v0  # "agentSuccess":Z
    .end local v3  # "info":Lcom/android/server/backup/FileMetadata;
    .end local v5  # "pkg":Ljava/lang/String;
    .end local v7  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v9  # "toCopy":J
    .end local v16  # "okay":Z
    .end local v29  # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v30  # "isSharedStorage":Z
    .end local v34  # "timeout":J
    .restart local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_566
    move-exception v0

    move/from16 v4, p6

    move-object/from16 v7, v40

    move-object/from16 v2, p7

    .end local v40  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v7  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_5dc

    .line 407
    .end local v7  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3  # "info":Lcom/android/server/backup/FileMetadata;
    .local v5, "okay":Z
    .local v13, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v14, "pkg":Ljava/lang/String;
    .restart local v29  # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_56f
    move/from16 v4, p6

    move/from16 v36, v5

    move-object v7, v13

    move-object v5, v14

    const/4 v13, 0x1

    .end local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14  # "pkg":Ljava/lang/String;
    .local v5, "pkg":Ljava/lang/String;
    .restart local v7  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v36  # "okay":Z
    move/from16 v16, v36

    .line 542
    .end local v36  # "okay":Z
    .restart local v16  # "okay":Z
    :cond_578
    :goto_578
    if-nez v16, :cond_5b8

    .line 546
    iget-wide v8, v3, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v17, 0x1ff

    add-long v8, v8, v17

    const-wide/16 v17, -0x200

    and-long v8, v8, v17

    .line 547
    .local v8, "bytesToConsume":J
    :goto_584
    const-wide/16 v17, 0x0

    cmp-long v0, v8, v17

    if-lez v0, :cond_5b2

    .line 548
    array-length v0, v12

    int-to-long v13, v0

    cmp-long v0, v8, v13

    if-lez v0, :cond_592

    .line 549
    array-length v0, v12

    goto :goto_593

    :cond_592
    long-to-int v0, v8

    .line 550
    .local v0, "toRead":I
    :goto_593
    const/4 v2, 0x0

    invoke-virtual {v11, v12, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    int-to-long v13, v6

    .line 551
    .local v13, "nRead":J
    const-wide/16 v18, 0x0

    cmp-long v2, v13, v18

    if-ltz v2, :cond_5a6

    .line 552
    move-object v6, v3

    .end local v3  # "info":Lcom/android/server/backup/FileMetadata;
    .local v6, "info":Lcom/android/server/backup/FileMetadata;
    iget-wide v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    add-long/2addr v2, v13

    iput-wide v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J
    :try_end_5a5
    .catch Ljava/io/IOException; {:try_start_505 .. :try_end_5a5} :catch_5b4

    goto :goto_5a7

    .line 551
    .end local v6  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v3  # "info":Lcom/android/server/backup/FileMetadata;
    :cond_5a6
    move-object v6, v3

    .line 554
    .end local v3  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v6  # "info":Lcom/android/server/backup/FileMetadata;
    :goto_5a7
    const-wide/16 v2, 0x0

    cmp-long v10, v13, v2

    if-gtz v10, :cond_5ae

    .line 555
    goto :goto_5d0

    .line 557
    :cond_5ae
    sub-long/2addr v8, v13

    .line 558
    .end local v0  # "toRead":I
    .end local v13  # "nRead":J
    move-object v3, v6

    const/4 v13, 0x1

    goto :goto_584

    .line 547
    .end local v6  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v3  # "info":Lcom/android/server/backup/FileMetadata;
    :cond_5b2
    move-object v6, v3

    .end local v3  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v6  # "info":Lcom/android/server/backup/FileMetadata;
    goto :goto_5d0

    .line 562
    .end local v5  # "pkg":Ljava/lang/String;
    .end local v6  # "info":Lcom/android/server/backup/FileMetadata;
    .end local v8  # "bytesToConsume":J
    .end local v16  # "okay":Z
    .end local v29  # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_5b4
    move-exception v0

    :goto_5b5
    move-object/from16 v2, p7

    goto :goto_5dc

    .line 542
    .restart local v3  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v5  # "pkg":Ljava/lang/String;
    .restart local v16  # "okay":Z
    .restart local v29  # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_5b8
    move-object v6, v3

    .end local v3  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v6  # "info":Lcom/android/server/backup/FileMetadata;
    goto :goto_5d0

    .line 562
    .end local v5  # "pkg":Ljava/lang/String;
    .end local v6  # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v16  # "okay":Z
    .end local v29  # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .local v13, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_5ba
    move-exception v0

    move/from16 v4, p6

    move-object v7, v13

    move-object/from16 v2, p7

    .end local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v7  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto :goto_5dc

    .end local v7  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v31  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v10, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_5c1
    move-exception v0

    move/from16 v4, p6

    move-object/from16 v31, v10

    move-object v7, v13

    move-object/from16 v2, p7

    .end local v10  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v13  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v7  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v31  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    goto :goto_5dc

    .line 189
    .end local v7  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v31  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v4, "info":Lcom/android/server/backup/FileMetadata;
    .local v8, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :cond_5ca
    move-object v6, v4

    move-object v7, v8

    move-object/from16 v31, v10

    move/from16 v4, p6

    .line 568
    .end local v4  # "info":Lcom/android/server/backup/FileMetadata;
    .end local v8  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v10  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v6  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v31  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_5d0
    move-object/from16 v2, p7

    .end local p7  # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v2, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :goto_5d2
    move-object v0, v6

    goto :goto_5fa

    .line 562
    .end local v2  # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v6  # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v31  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v8  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p7  # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_5d4
    move-exception v0

    move/from16 v4, p6

    move-object v7, v8

    move-object/from16 v31, v10

    move-object/from16 v2, p7

    .line 564
    .end local v8  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v10  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p7  # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2  # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v7  # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v31  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_5dc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "io exception on restore socket read: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v3, -0x3

    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 567
    const/4 v0, 0x0

    .line 571
    .local v0, "info":Lcom/android/server/backup/FileMetadata;
    :goto_5fa
    if-nez v0, :cond_60d

    .line 575
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 576
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 577
    if-eqz p2, :cond_60e

    .line 578
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-direct {v1, v3, v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    goto :goto_60e

    .line 571
    :cond_60d
    const/4 v13, 0x0

    .line 581
    :cond_60e
    :goto_60e
    if-eqz v0, :cond_611

    const/4 v13, 0x1

    :cond_611
    return v13
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"  # Ljava/lang/String;

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
    move-exception v0

    .line 711
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 715
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    return-void
.end method
