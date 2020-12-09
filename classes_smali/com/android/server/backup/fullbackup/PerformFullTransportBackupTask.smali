.class public Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformFullTransportBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;,
        Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PFTBT"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field mBackupObserver:Landroid/app/backup/IBackupObserver;

.field mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

.field private final mBackupRunnerOpToken:I

.field private volatile mCancelAll:Z

.field private final mCancelLock:Ljava/lang/Object;

.field private final mCurrentOpToken:I

.field mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private volatile mIsDoingBackup:Z

.field mJob:Lcom/android/server/backup/FullBackupJob;

.field mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field private mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransportClient:Lcom/android/server/backup/transport/TransportClient;

.field mUpdateSchedule:Z

.field private final mUserId:I

.field mUserInitiated:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Z)V
    .registers 13

    .line 161
    invoke-direct {p0, p3}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 132
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 162
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 163
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 164
    iput-boolean p5, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 165
    iput-object p7, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 166
    iput-object p6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 167
    new-instance p2, Ljava/util/ArrayList;

    array-length p3, p4

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 168
    iput-object p8, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 169
    iput-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 170
    if-eqz p10, :cond_23

    goto :goto_25

    :cond_23
    sget-object p10, Lcom/android/server/backup/internal/OnTaskFinishedListener;->NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    :goto_25
    iput-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 171
    iput-boolean p11, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    .line 172
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result p2

    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 173
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result p2

    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 174
    nop

    .line 175
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p2

    .line 174
    const-string p3, "Timeout parameters cannot be null"

    invoke-static {p2, p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 177
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result p2

    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    .line 179
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    move-result p2

    const-string p3, "PFTBT"

    if-eqz p2, :cond_5b

    .line 181
    const-string p1, "Skipping full backup. A backup is already in progress."

    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 184
    return-void

    .line 187
    :cond_5b
    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->registerTask()V

    .line 189
    array-length p2, p4

    const/4 p5, 0x0

    :goto_60
    if-ge p5, p2, :cond_f4

    aget-object p6, p4, p5

    .line 191
    const/4 p7, 0x0

    const/4 p8, 0x3

    :try_start_66
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p9

    .line 192
    const/high16 p10, 0x8000000

    iget p11, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {p9, p6, p10, p11}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p9

    .line 194
    iput-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 195
    iget-object p10, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p11, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-static {p10, p11}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result p10

    const/16 p11, -0x7d1

    if-nez p10, :cond_92

    .line 203
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p10, 0x9

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {p9, p10, v0, p8, p7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p9

    iput-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 208
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {p9, p6, p11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 210
    goto :goto_f0

    .line 211
    :cond_92
    invoke-static {p9}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result p10

    if-nez p10, :cond_aa

    .line 218
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p10, 0xa

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {p9, p10, v0, p8, p7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p9

    iput-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 223
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {p9, p6, p11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 225
    goto :goto_f0

    .line 226
    :cond_aa
    iget-object p10, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p10}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result p10

    if-eqz p10, :cond_c4

    .line 233
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p10, 0xb

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {p9, p10, v0, p8, p7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p9

    iput-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 238
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {p9, p6, p11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 240
    goto :goto_f0

    .line 242
    :cond_c4
    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {p10, p9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_66 .. :try_end_c9} :catch_ca

    .line 250
    goto :goto_f0

    .line 243
    :catch_ca
    move-exception p9

    .line 244
    new-instance p9, Ljava/lang/StringBuilder;

    invoke-direct {p9}, Ljava/lang/StringBuilder;-><init>()V

    const-string p10, "Requested package "

    invoke-virtual {p9, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " not found; ignoring"

    invoke-virtual {p9, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p3, p6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object p6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p9, 0xc

    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {p6, p9, p10, p8, p7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p6

    iput-object p6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 189
    :goto_f0
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_60

    .line 252
    :cond_f4
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Landroid/app/backup/IBackupManagerMonitor;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/app/backup/IBackupManagerMonitor;)Landroid/app/backup/IBackupManagerMonitor;
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object p1
.end method

.method static synthetic lambda$newWithCurrentTransport$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .registers 3

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    return-void
.end method

.method public static newWithCurrentTransport(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .registers 23

    .line 110
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    .line 111
    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v3

    .line 112
    new-instance v11, Lcom/android/server/backup/fullbackup/-$$Lambda$PerformFullTransportBackupTask$ymLoQLrsEpmGaMrcudrdAgsU1Zk;

    invoke-direct {v11, v0, v3}, Lcom/android/server/backup/fullbackup/-$$Lambda$PerformFullTransportBackupTask$ymLoQLrsEpmGaMrcudrdAgsU1Zk;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;)V

    .line 115
    new-instance v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v12, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Z)V

    return-object v0
.end method

.method private registerTask()V
    .registers 7

    .line 255
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 256
    :try_start_7
    const-string v1, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupmanager pftbt token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentOperations()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    new-instance v3, Lcom/android/server/backup/internal/Operation;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    monitor-exit v0

    .line 261
    return-void

    .line 260
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    throw v1
.end method


# virtual methods
.method cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .registers 7

    .line 662
    if-eqz p1, :cond_29

    .line 663
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, "Unable to close pipe!"

    const-string v3, "PFTBT"

    const/4 v4, 0x0

    if-eqz v1, :cond_18

    .line 664
    aget-object v1, p1, v0

    .line 665
    aput-object v4, p1, v0

    .line 667
    :try_start_10
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_14

    .line 670
    goto :goto_18

    .line 668
    :catch_14
    move-exception v0

    .line 669
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_18
    :goto_18
    const/4 v0, 0x1

    aget-object v1, p1, v0

    if-eqz v1, :cond_29

    .line 673
    aget-object v1, p1, v0

    .line 674
    aput-object v4, p1, v0

    .line 676
    :try_start_21
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    .line 679
    goto :goto_29

    .line 677
    :catch_25
    move-exception p1

    .line 678
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_29
    :goto_29
    return-void
.end method

.method public execute()V
    .registers 1

    .line 270
    return-void
.end method

.method public handleCancel(Z)V
    .registers 6

    .line 274
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    if-nez p1, :cond_c

    .line 281
    :try_start_5
    const-string v1, "PFTBT"

    const-string v2, "Expected cancelAll to be true."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_c
    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_19

    .line 285
    const-string p1, "PFTBT"

    const-string v1, "Ignoring duplicate cancel call."

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    monitor-exit v0

    return-void

    .line 289
    :cond_19
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 290
    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    if-eqz v1, :cond_4a

    .line 291
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(IZ)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_4c

    .line 294
    :try_start_27
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v1, "PFTBT.handleCancel()"

    .line 295
    invoke-virtual {p1, v1}, Lcom/android/server/backup/transport/TransportClient;->getConnectedTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object p1

    .line 296
    invoke-interface {p1}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_32} :catch_33
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_27 .. :try_end_32} :catch_33
    .catchall {:try_start_27 .. :try_end_32} :catchall_4c

    .line 300
    goto :goto_4a

    .line 297
    :catch_33
    move-exception p1

    .line 298
    :try_start_34
    const-string v1, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling cancelFullBackup() on transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_4a
    :goto_4a
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_34 .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public operationComplete(J)V
    .registers 3

    .line 308
    return-void
.end method

.method public run()V
    .registers 32

    .line 314
    move-object/from16 v10, p0

    .line 317
    nop

    .line 319
    nop

    .line 320
    nop

    .line 323
    const-wide/16 v12, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_9
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_6e6
    .catchall {:try_start_9 .. :try_end_f} :catchall_6da

    if-eqz v1, :cond_611

    :try_start_11
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v1

    if-nez v1, :cond_1f

    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    goto/16 :goto_615

    .line 346
    :cond_1f
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v2, "PFTBT.run()"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/transport/TransportClient;->connect(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v6
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_27} :catch_605
    .catchall {:try_start_11 .. :try_end_27} :catchall_5fa

    .line 347
    const/4 v7, 0x1

    if-nez v6, :cond_c7

    .line 348
    :try_start_2a
    const-string v1, "PFTBT"

    const-string v2, "Transport not present; full data backup not performed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_31} :catch_be
    .catchall {:try_start_2a .. :try_end_31} :catchall_b5

    .line 349
    nop

    .line 350
    :try_start_32
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v2, 0xf

    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v2, v3, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3e} :catch_be
    .catchall {:try_start_32 .. :try_end_3e} :catchall_ab

    .line 624
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_45

    .line 625
    const/16 v15, -0x7d3

    goto :goto_47

    .line 624
    :cond_45
    const/16 v15, -0x3e8

    .line 629
    :goto_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full backup completed with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PFTBT"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v15}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 633
    invoke-virtual {v10, v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 634
    invoke-virtual {v10, v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 638
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v1, :cond_74

    .line 639
    iget v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 642
    :cond_74
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 643
    :try_start_7b
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v8}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 644
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_a7

    .line 646
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v1, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 648
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 652
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v1, :cond_96

    .line 653
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v12, v13}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 656
    :cond_96
    const-string v1, "PFTBT"

    const-string v2, "Full data backup pass finished."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 354
    return-void

    .line 644
    :catchall_a7
    move-exception v0

    move-object v2, v0

    :try_start_a9
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a7

    throw v2

    .line 624
    :catchall_ab
    move-exception v0

    move-object v1, v0

    move-object v7, v8

    move-wide v2, v12

    const/16 v4, -0x7d3

    const/16 v15, -0x3e8

    goto/16 :goto_77f

    :catchall_b5
    move-exception v0

    move-object v1, v0

    move-object v7, v8

    move v15, v9

    move-wide v2, v12

    const/16 v4, -0x7d3

    goto/16 :goto_77f

    .line 611
    :catch_be
    move-exception v0

    move-object v1, v0

    move-object v7, v8

    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    goto/16 :goto_6ef

    .line 358
    :cond_c7
    :try_start_c7
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 359
    const/16 v1, 0x2000

    new-array v4, v1, [B
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d1} :catch_605
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_5fa

    .line 360
    move-object v1, v8

    move-object v2, v1

    move v3, v9

    move-wide/from16 v16, v12

    :goto_d6
    if-ge v3, v5, :cond_59a

    .line 361
    :try_start_d8
    iput-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 362
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 363
    iget-object v14, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 365
    const-string v15, "PFTBT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Initiating full-data transport backup of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " token: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/16 v11, 0xb18

    invoke-static {v11, v14}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 370
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v11
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_10d} :catch_58e
    .catchall {:try_start_d8 .. :try_end_10d} :catchall_584

    .line 373
    :try_start_10d
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    if-eqz v2, :cond_113

    move v2, v7

    goto :goto_114

    :cond_113
    move v2, v9

    .line 375
    :goto_114
    nop

    .line 376
    iget-object v15, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_118} :catch_57c
    .catchall {:try_start_10d .. :try_end_118} :catchall_576

    .line 377
    :try_start_118
    iget-boolean v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_11a
    .catchall {:try_start_118 .. :try_end_11a} :catchall_55e

    if-eqz v12, :cond_12b

    .line 378
    :try_start_11c
    monitor-exit v15
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_122

    move-object v2, v11

    const/16 v4, -0x7d3

    goto/16 :goto_59c

    .line 398
    :catchall_122
    move-exception v0

    move-object v8, v1

    move-object v7, v11

    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    goto/16 :goto_565

    .line 380
    :cond_12b
    :try_start_12b
    aget-object v12, v11, v9

    invoke-interface {v6, v8, v12, v2}, Lcom/android/internal/backup/IBackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v12
    :try_end_131
    .catchall {:try_start_12b .. :try_end_131} :catchall_55e

    .line 383
    if-nez v12, :cond_18b

    .line 384
    :try_start_133
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v2, v7}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v20

    .line 387
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v13
    :try_end_13d
    .catchall {:try_start_133 .. :try_end_13d} :catchall_122

    .line 388
    :try_start_13d
    new-instance v2, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    aget-object v22, v13, v7

    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    iget v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 391
    invoke-interface {v6}, Lcom/android/internal/backup/IBackupTransport;->getTransportFlags()I

    move-result v24
    :try_end_149
    .catchall {:try_start_13d .. :try_end_149} :catchall_181

    move-object/from16 v25, v1

    move-object v1, v2

    move-object/from16 v26, v14

    move-object v14, v2

    move-object/from16 v2, p0

    move/from16 v27, v3

    move-object/from16 v3, v22

    move-object/from16 v28, v4

    move-object v4, v8

    move/from16 v22, v5

    move-object/from16 v5, v25

    move-object/from16 v29, v6

    move-object/from16 v25, v11

    move v11, v7

    move-wide/from16 v6, v20

    move-object/from16 v30, v8

    move v8, v9

    move/from16 v9, v24

    :try_start_168
    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportClient;JII)V

    iput-object v14, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 393
    aget-object v1, v13, v11

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 394
    const/4 v3, 0x0

    aput-object v3, v13, v11

    .line 396
    iput-boolean v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z
    :try_end_177
    .catchall {:try_start_168 .. :try_end_177} :catchall_17b

    move-object v1, v13

    move-wide/from16 v4, v20

    goto :goto_1a0

    .line 398
    :catchall_17b
    move-exception v0

    move-object v1, v0

    move-object v8, v13

    move-object/from16 v7, v25

    goto :goto_185

    :catchall_181
    move-exception v0

    move-object v1, v0

    move-object v7, v11

    move-object v8, v13

    :goto_185
    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    goto/16 :goto_566

    .line 383
    :cond_18b
    move/from16 v27, v3

    move-object/from16 v28, v4

    move/from16 v22, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v8

    move-object/from16 v25, v11

    move-object/from16 v26, v14

    const/4 v3, 0x0

    move v11, v7

    const-wide v4, 0x7fffffffffffffffL

    .line 398
    :goto_1a0
    :try_start_1a0
    monitor-exit v15
    :try_end_1a1
    .catchall {:try_start_1a0 .. :try_end_1a1} :catchall_55a

    .line 399
    if-nez v12, :cond_320

    .line 403
    const/4 v6, 0x0

    :try_start_1a4
    aget-object v7, v25, v6

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 404
    aput-object v3, v25, v6

    .line 408
    new-instance v7, Ljava/lang/Thread;

    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const-string/jumbo v9, "package-backup-bridge"

    invoke-direct {v7, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 413
    new-instance v7, Ljava/io/FileInputStream;

    aget-object v8, v1, v6

    .line 414
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 415
    new-instance v8, Ljava/io/FileOutputStream;

    aget-object v9, v25, v11

    .line 416
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 417
    nop

    .line 418
    iget-object v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v9}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getPreflightResultBlocking()J

    move-result-wide v13
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1d5} :catch_314
    .catchall {:try_start_1a4 .. :try_end_1d5} :catchall_30a

    .line 420
    const-wide/16 v18, 0x0

    cmp-long v9, v13, v18

    if-gez v9, :cond_202

    .line 426
    :try_start_1db
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v5, 0x10

    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v8, "android.app.backup.extra.LOG_PREFLIGHT_ERROR"

    .line 430
    invoke-static {v3, v8, v13, v14}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v8

    .line 426
    const/4 v9, 0x3

    invoke-static {v4, v5, v7, v9, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_1ee
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_1ee} :catch_314
    .catchall {:try_start_1db .. :try_end_1ee} :catchall_1f7

    .line 433
    long-to-int v4, v13

    move-object/from16 v6, v26

    move-object/from16 v15, v28

    move-object/from16 v11, v29

    goto/16 :goto_2a6

    .line 624
    :catchall_1f7
    move-exception v0

    move-object v8, v1

    move v15, v6

    move-wide/from16 v2, v16

    move-object/from16 v7, v25

    const/16 v4, -0x7d3

    goto/16 :goto_6e3

    .line 435
    :cond_202
    const-wide/16 v20, 0x0

    .line 437
    :goto_204
    move-object/from16 v15, v28

    :try_start_206
    invoke-virtual {v7, v15}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 441
    if-lez v3, :cond_249

    .line 442
    invoke-virtual {v8, v15, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 443
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_212} :catch_314
    .catchall {:try_start_206 .. :try_end_212} :catchall_30a

    .line 444
    :try_start_212
    iget-boolean v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-nez v11, :cond_21d

    .line 445
    move-object/from16 v11, v29

    invoke-interface {v11, v3}, Lcom/android/internal/backup/IBackupTransport;->sendBackupData(I)I

    move-result v12

    goto :goto_21f

    .line 444
    :cond_21d
    move-object/from16 v11, v29

    .line 447
    :goto_21f
    monitor-exit v6
    :try_end_220
    .catchall {:try_start_212 .. :try_end_220} :catchall_245

    .line 448
    move-object/from16 v23, v7

    int-to-long v6, v3

    add-long v6, v20, v6

    .line 449
    :try_start_225
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v2, :cond_23c

    if-lez v9, :cond_23c

    .line 450
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v28, v8

    new-instance v8, Landroid/app/backup/BackupProgress;

    invoke-direct {v8, v13, v14, v6, v7}, Landroid/app/backup/BackupProgress;-><init>(JJ)V

    .line 451
    move-wide/from16 v20, v6

    move-object/from16 v6, v26

    invoke-static {v2, v6, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_23b
    .catch Ljava/lang/Exception; {:try_start_225 .. :try_end_23b} :catch_314
    .catchall {:try_start_225 .. :try_end_23b} :catchall_30a

    goto :goto_242

    .line 449
    :cond_23c
    move-wide/from16 v20, v6

    move-object/from16 v28, v8

    move-object/from16 v6, v26

    .line 455
    :goto_242
    move-wide/from16 v7, v20

    goto :goto_253

    .line 447
    :catchall_245
    move-exception v0

    move-object v2, v0

    :try_start_247
    monitor-exit v6
    :try_end_248
    .catchall {:try_start_247 .. :try_end_248} :catchall_245

    :try_start_248
    throw v2

    .line 441
    :cond_249
    move-object/from16 v23, v7

    move-object/from16 v28, v8

    move-object/from16 v6, v26

    move-object/from16 v11, v29

    move-wide/from16 v7, v20

    .line 455
    :goto_253
    if-lez v3, :cond_268

    if-eqz v12, :cond_258

    goto :goto_268

    :cond_258
    move-object/from16 v26, v6

    move-wide/from16 v20, v7

    move-object/from16 v29, v11

    move-object/from16 v7, v23

    move-object/from16 v8, v28

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x1

    move-object/from16 v28, v15

    goto :goto_204

    .line 458
    :cond_268
    :goto_268
    const/16 v2, -0x3ed

    if-ne v12, v2, :cond_2a5

    .line 459
    const-string v2, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package hit quota limit in-flight "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " of "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v3, 0x12

    iget-object v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v2, v3, v9, v13, v14}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 466
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v2, v7, v8, v4, v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->sendQuotaExceeded(JJ)V

    .line 470
    :cond_2a5
    move v4, v12

    :goto_2a6
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getBackupResultBlocking()I

    move-result v2

    .line 472
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2af
    .catch Ljava/lang/Exception; {:try_start_248 .. :try_end_2af} :catch_314
    .catchall {:try_start_248 .. :try_end_2af} :catchall_30a

    .line 473
    const/4 v5, 0x0

    :try_start_2b0
    iput-boolean v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    .line 475
    iget-boolean v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-nez v5, :cond_2c3

    .line 476
    if-nez v2, :cond_2c0

    .line 481
    invoke-interface {v11}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v5

    .line 482
    if-nez v4, :cond_2bf

    .line 483
    move v4, v5

    .line 485
    :cond_2bf
    goto :goto_2c3

    .line 486
    :cond_2c0
    invoke-interface {v11}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V

    .line 489
    :cond_2c3
    :goto_2c3
    monitor-exit v3
    :try_end_2c4
    .catchall {:try_start_2b0 .. :try_end_2c4} :catchall_306

    .line 500
    if-nez v4, :cond_2ca

    .line 502
    if-eqz v2, :cond_2ca

    .line 505
    move v12, v2

    goto :goto_2cb

    .line 518
    :cond_2ca
    move v12, v4

    :goto_2cb
    if-eqz v12, :cond_2eb

    .line 519
    :try_start_2cd
    const-string v2, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " backing up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_2eb
    invoke-interface {v11}, Lcom/android/internal/backup/IBackupTransport;->requestFullBackupTime()J

    move-result-wide v2
    :try_end_2ef
    .catch Ljava/lang/Exception; {:try_start_2cd .. :try_end_2ef} :catch_314
    .catchall {:try_start_2cd .. :try_end_2ef} :catchall_30a

    .line 527
    :try_start_2ef
    const-string v4, "PFTBT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transport suggested backoff="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_305
    .catch Ljava/lang/Exception; {:try_start_2ef .. :try_end_305} :catch_339
    .catchall {:try_start_2ef .. :try_end_305} :catchall_336

    goto :goto_328

    .line 489
    :catchall_306
    move-exception v0

    move-object v2, v0

    :try_start_308
    monitor-exit v3
    :try_end_309
    .catchall {:try_start_308 .. :try_end_309} :catchall_306

    :try_start_309
    throw v2
    :try_end_30a
    .catch Ljava/lang/Exception; {:try_start_309 .. :try_end_30a} :catch_314
    .catchall {:try_start_309 .. :try_end_30a} :catchall_30a

    .line 624
    :catchall_30a
    move-exception v0

    move-object v8, v1

    move-wide/from16 v2, v16

    :goto_30e
    move-object/from16 v7, v25

    const/16 v4, -0x7d3

    goto/16 :goto_58b

    .line 611
    :catch_314
    move-exception v0

    move-object v8, v1

    move-wide/from16 v12, v16

    :goto_318
    move-object/from16 v7, v25

    const/16 v4, -0x7d3

    :goto_31c
    const/16 v9, -0x3e8

    goto/16 :goto_597

    .line 399
    :cond_320
    move-object/from16 v6, v26

    move-object/from16 v15, v28

    move-object/from16 v11, v29

    move-wide/from16 v2, v16

    .line 534
    :goto_328
    :try_start_328
    iget-boolean v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_32a
    .catch Ljava/lang/Exception; {:try_start_328 .. :try_end_32a} :catch_550
    .catchall {:try_start_328 .. :try_end_32a} :catchall_549

    if-eqz v4, :cond_33d

    .line 535
    :try_start_32c
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    goto :goto_33d

    .line 624
    :catchall_336
    move-exception v0

    move-object v8, v1

    goto :goto_30e

    .line 611
    :catch_339
    move-exception v0

    move-object v8, v1

    move-wide v12, v2

    goto :goto_318

    .line 538
    :cond_33d
    :goto_33d
    const/16 v4, -0x3ea

    if-ne v12, v4, :cond_391

    .line 539
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 540
    invoke-static {v5, v6, v4}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 543
    const-string v4, "PFTBT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transport rejected backup of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", skipping"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/16 v4, 0xb19

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string/jumbo v7, "transport rejected"

    const/4 v8, 0x1

    aput-object v7, v5, v8

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 551
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    if-eqz v4, :cond_387

    .line 552
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move-object/from16 v5, v30

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v7}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    move-object/from16 v7, v25

    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    goto/16 :goto_507

    .line 551
    :cond_387
    move-object/from16 v5, v30

    move-object/from16 v7, v25

    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    goto/16 :goto_507

    .line 555
    :cond_391
    move-object/from16 v5, v30

    const/4 v8, 0x1

    const/16 v4, -0x3ed

    if-ne v12, v4, :cond_3c7

    .line 556
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 557
    invoke-static {v7, v6, v4}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 560
    const-string v4, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transport quota exceeded for package: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/16 v4, 0xb1d

    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 564
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v7}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    move-object/from16 v7, v25

    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    goto/16 :goto_507

    .line 566
    :cond_3c7
    const/16 v4, -0x3eb

    if-ne v12, v4, :cond_3fa

    .line 567
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 568
    invoke-static {v7, v6, v4}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 570
    const-string v4, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application failure for package: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/16 v4, 0xb07

    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 572
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v7}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_3f2
    .catch Ljava/lang/Exception; {:try_start_32c .. :try_end_3f2} :catch_339
    .catchall {:try_start_32c .. :try_end_3f2} :catchall_336

    move-object/from16 v7, v25

    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    goto/16 :goto_507

    .line 574
    :cond_3fa
    const/16 v4, -0x7d3

    if-ne v12, v4, :cond_442

    .line 575
    :try_start_3fe
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 576
    invoke-static {v7, v6, v4}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 578
    const-string v7, "PFTBT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Backup cancelled. package="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", cancelAll="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/16 v7, 0xb1e

    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 581
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v9}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_42f
    .catch Ljava/lang/Exception; {:try_start_3fe .. :try_end_42f} :catch_43b
    .catchall {:try_start_3fe .. :try_end_42f} :catchall_435

    move-object/from16 v7, v25

    const/16 v9, -0x3e8

    goto/16 :goto_507

    .line 624
    :catchall_435
    move-exception v0

    move-object v8, v1

    move-object/from16 v7, v25

    goto/16 :goto_58b

    .line 611
    :catch_43b
    move-exception v0

    move-object v8, v1

    move-wide v12, v2

    move-object/from16 v7, v25

    goto/16 :goto_31c

    .line 583
    :cond_442
    if-eqz v12, :cond_4f3

    .line 584
    :try_start_444
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;
    :try_end_446
    .catch Ljava/lang/Exception; {:try_start_444 .. :try_end_446} :catch_4ee
    .catchall {:try_start_444 .. :try_end_446} :catchall_4ea

    .line 585
    const/16 v9, -0x3e8

    :try_start_448
    invoke-static {v7, v6, v9}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 587
    const-string v6, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transport failed; aborting backup: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/16 v6, 0xb1a

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_469
    .catch Ljava/lang/Exception; {:try_start_448 .. :try_end_469} :catch_4e5
    .catchall {:try_start_448 .. :try_end_469} :catchall_4ea

    .line 590
    nop

    .line 591
    :try_start_46a
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v5}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_471
    .catch Ljava/lang/Exception; {:try_start_46a .. :try_end_471} :catch_4e5
    .catchall {:try_start_46a .. :try_end_471} :catchall_4de

    .line 624
    iget-boolean v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v5, :cond_476

    .line 625
    goto :goto_477

    .line 624
    :cond_476
    move v4, v9

    .line 629
    :goto_477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Full backup completed with status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PFTBT"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v5, v4}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 633
    move-object/from16 v7, v25

    invoke-virtual {v10, v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 634
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 638
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v1, :cond_4a6

    .line 639
    iget v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v1, v4}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 642
    :cond_4a6
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 643
    :try_start_4ad
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 644
    monitor-exit v5
    :try_end_4b4
    .catchall {:try_start_4ad .. :try_end_4b4} :catchall_4da

    .line 646
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v4, "PFTBT.run()"

    invoke-interface {v1, v4}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 648
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 652
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v1, :cond_4c9

    .line 653
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 656
    :cond_4c9
    const-string v1, "PFTBT"

    const-string v2, "Full data backup pass finished."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 592
    return-void

    .line 644
    :catchall_4da
    move-exception v0

    move-object v1, v0

    :try_start_4dc
    monitor-exit v5
    :try_end_4dd
    .catchall {:try_start_4dc .. :try_end_4dd} :catchall_4da

    throw v1

    .line 624
    :catchall_4de
    move-exception v0

    move-object/from16 v7, v25

    move-object v8, v1

    move v15, v9

    goto/16 :goto_6e3

    .line 611
    :catch_4e5
    move-exception v0

    move-object/from16 v7, v25

    goto/16 :goto_557

    .line 624
    :catchall_4ea
    move-exception v0

    move-object/from16 v7, v25

    goto :goto_54e

    .line 611
    :catch_4ee
    move-exception v0

    move-object/from16 v7, v25

    goto/16 :goto_555

    .line 595
    :cond_4f3
    move-object/from16 v7, v25

    const/16 v9, -0x3e8

    :try_start_4f7
    iget-object v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 596
    const/4 v13, 0x0

    invoke-static {v12, v6, v13}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 598
    const/16 v12, 0xb1b

    invoke-static {v12, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 599
    iget-object v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v12, v6}, Lcom/android/server/backup/UserBackupManagerService;->logBackupComplete(Ljava/lang/String;)V

    .line 601
    :goto_507
    invoke-virtual {v10, v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 602
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 603
    iget-object v12, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_534

    .line 604
    const-string v12, "PFTBT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unbinding agent in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_527
    .catch Ljava/lang/Exception; {:try_start_4f7 .. :try_end_527} :catch_547
    .catchall {:try_start_4f7 .. :try_end_527} :catchall_545

    .line 606
    :try_start_527
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v6, v5}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_532
    .catch Landroid/os/RemoteException; {:try_start_527 .. :try_end_532} :catch_533
    .catch Ljava/lang/Exception; {:try_start_527 .. :try_end_532} :catch_547
    .catchall {:try_start_527 .. :try_end_532} :catchall_545

    goto :goto_534

    .line 608
    :catch_533
    move-exception v0

    .line 360
    :cond_534
    :goto_534
    add-int/lit8 v5, v27, 0x1

    move-wide/from16 v16, v2

    move v3, v5

    move-object v2, v7

    move v7, v8

    move-object v6, v11

    move-object v4, v15

    move/from16 v5, v22

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    goto/16 :goto_d6

    .line 624
    :catchall_545
    move-exception v0

    goto :goto_54e

    .line 611
    :catch_547
    move-exception v0

    goto :goto_557

    .line 624
    :catchall_549
    move-exception v0

    move-object/from16 v7, v25

    const/16 v4, -0x7d3

    :goto_54e
    move-object v8, v1

    goto :goto_58b

    .line 611
    :catch_550
    move-exception v0

    move-object/from16 v7, v25

    const/16 v4, -0x7d3

    :goto_555
    const/16 v9, -0x3e8

    :goto_557
    move-object v8, v1

    move-wide v12, v2

    goto :goto_597

    .line 398
    :catchall_55a
    move-exception v0

    move-object/from16 v7, v25

    goto :goto_560

    :catchall_55e
    move-exception v0

    move-object v7, v11

    :goto_560
    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    move-object v8, v1

    :goto_565
    move-object v1, v0

    :goto_566
    :try_start_566
    monitor-exit v15
    :try_end_567
    .catchall {:try_start_566 .. :try_end_567} :catchall_574

    :try_start_567
    throw v1
    :try_end_568
    .catch Ljava/lang/Exception; {:try_start_567 .. :try_end_568} :catch_56e
    .catchall {:try_start_567 .. :try_end_568} :catchall_568

    .line 624
    :catchall_568
    move-exception v0

    move-object v1, v0

    move-wide/from16 v2, v16

    goto/16 :goto_602

    .line 611
    :catch_56e
    move-exception v0

    move-object v1, v0

    move-wide/from16 v12, v16

    goto/16 :goto_6ef

    .line 398
    :catchall_574
    move-exception v0

    goto :goto_565

    .line 624
    :catchall_576
    move-exception v0

    move-object v7, v11

    const/16 v4, -0x7d3

    move-object v8, v1

    goto :goto_589

    .line 611
    :catch_57c
    move-exception v0

    move-object v7, v11

    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    move-object v8, v1

    goto :goto_595

    .line 624
    :catchall_584
    move-exception v0

    const/16 v4, -0x7d3

    move-object v8, v1

    move-object v7, v2

    :goto_589
    move-wide/from16 v2, v16

    :goto_58b
    const/4 v15, 0x0

    goto/16 :goto_6e3

    .line 611
    :catch_58e
    move-exception v0

    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    move-object v8, v1

    move-object v7, v2

    :goto_595
    move-wide/from16 v12, v16

    :goto_597
    move-object v1, v0

    goto/16 :goto_6ef

    .line 360
    :cond_59a
    const/16 v4, -0x7d3

    .line 624
    :goto_59c
    iget-boolean v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v3, :cond_5a1

    .line 625
    goto :goto_5a2

    .line 624
    :cond_5a1
    const/4 v4, 0x0

    .line 629
    :goto_5a2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Full backup completed with status: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "PFTBT"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v3, v4}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 633
    invoke-virtual {v10, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 634
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 638
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v1, :cond_5cf

    .line 639
    iget v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 642
    :cond_5cf
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 643
    :try_start_5d6
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 644
    monitor-exit v1
    :try_end_5dd
    .catchall {:try_start_5d6 .. :try_end_5dd} :catchall_5f6

    .line 646
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v1, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 648
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 652
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v1, :cond_765

    .line 653
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move-wide/from16 v2, v16

    invoke-virtual {v1, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto/16 :goto_765

    .line 644
    :catchall_5f6
    move-exception v0

    move-object v2, v0

    :try_start_5f8
    monitor-exit v1
    :try_end_5f9
    .catchall {:try_start_5f8 .. :try_end_5f9} :catchall_5f6

    throw v2

    .line 624
    :catchall_5fa
    move-exception v0

    const/16 v4, -0x7d3

    move-object v1, v0

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_602
    const/4 v15, 0x0

    goto/16 :goto_77f

    .line 611
    :catch_605
    move-exception v0

    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    move-object v1, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v12, 0x0

    goto/16 :goto_6ef

    .line 323
    :cond_611
    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    .line 326
    :goto_615
    :try_start_615
    const-string v1, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "full backup requested but enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 327
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " setupComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 328
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "; ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_64f

    .line 333
    const/16 v1, 0xd

    goto :goto_651

    .line 335
    :cond_64f
    const/16 v1, 0xe

    .line 337
    :goto_651
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 338
    const/4 v3, 0x3

    const/4 v5, 0x0

    invoke-static {v2, v1, v5, v3, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_65b
    .catch Ljava/lang/Exception; {:try_start_615 .. :try_end_65b} :catch_6d4
    .catchall {:try_start_615 .. :try_end_65b} :catchall_6cf

    .line 341
    const/4 v1, 0x0

    :try_start_65c
    iput-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_65e
    .catch Ljava/lang/Exception; {:try_start_65c .. :try_end_65e} :catch_6d4
    .catchall {:try_start_65c .. :try_end_65e} :catchall_6cd

    .line 342
    const/16 v15, -0x7d1

    .line 624
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_665

    .line 625
    move v15, v4

    .line 629
    :cond_665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full backup completed with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PFTBT"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v15}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 633
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 634
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 638
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v1, :cond_693

    .line 639
    iget v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 642
    :cond_693
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 643
    :try_start_69a
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 644
    monitor-exit v2
    :try_end_6a1
    .catchall {:try_start_69a .. :try_end_6a1} :catchall_6c9

    .line 646
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v1, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 648
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 652
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v1, :cond_6b8

    .line 653
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 656
    :cond_6b8
    const-string v1, "PFTBT"

    const-string v2, "Full data backup pass finished."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 343
    return-void

    .line 644
    :catchall_6c9
    move-exception v0

    move-object v1, v0

    :try_start_6cb
    monitor-exit v2
    :try_end_6cc
    .catchall {:try_start_6cb .. :try_end_6cc} :catchall_6c9

    throw v1

    .line 624
    :catchall_6cd
    move-exception v0

    goto :goto_6d1

    :catchall_6cf
    move-exception v0

    const/4 v1, 0x0

    :goto_6d1
    const-wide/16 v5, 0x0

    goto :goto_6df

    .line 611
    :catch_6d4
    move-exception v0

    const-wide/16 v5, 0x0

    move-object v1, v0

    move-wide v12, v5

    goto :goto_6ed

    .line 624
    :catchall_6da
    move-exception v0

    move v1, v9

    move-wide v5, v12

    const/16 v4, -0x7d3

    :goto_6df
    move v15, v1

    move-wide v2, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_6e3
    move-object v1, v0

    goto/16 :goto_77f

    .line 611
    :catch_6e6
    move-exception v0

    move-wide v5, v12

    const/16 v4, -0x7d3

    const/16 v9, -0x3e8

    move-object v1, v0

    :goto_6ed
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 612
    :goto_6ef
    nop

    .line 613
    :try_start_6f0
    const-string v2, "PFTBT"

    const-string v3, "Exception trying full transport backup"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v3, 0x13

    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v6, "android.app.backup.extra.LOG_EXCEPTION_FULL_BACKUP"

    .line 620
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 618
    const/4 v11, 0x0

    invoke-static {v11, v6, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 614
    const/4 v6, 0x3

    invoke-static {v2, v3, v5, v6, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_70f
    .catchall {:try_start_6f0 .. :try_end_70f} :catchall_77b

    .line 624
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_714

    .line 625
    goto :goto_715

    .line 624
    :cond_714
    move v4, v9

    .line 629
    :goto_715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full backup completed with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PFTBT"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v4}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 633
    invoke-virtual {v10, v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 634
    invoke-virtual {v10, v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 638
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v1, :cond_742

    .line 639
    iget v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 642
    :cond_742
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 643
    :try_start_749
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 644
    monitor-exit v1
    :try_end_750
    .catchall {:try_start_749 .. :try_end_750} :catchall_777

    .line 646
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v1, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 648
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 652
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v1, :cond_765

    .line 653
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v12, v13}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 656
    :cond_765
    :goto_765
    const-string v1, "PFTBT"

    const-string v2, "Full data backup pass finished."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 658
    nop

    .line 659
    return-void

    .line 644
    :catchall_777
    move-exception v0

    move-object v2, v0

    :try_start_779
    monitor-exit v1
    :try_end_77a
    .catchall {:try_start_779 .. :try_end_77a} :catchall_777

    throw v2

    .line 624
    :catchall_77b
    move-exception v0

    move-object v1, v0

    move v15, v9

    move-wide v2, v12

    :goto_77f
    iget-boolean v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v5, :cond_784

    .line 625
    move v15, v4

    .line 629
    :cond_784
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Full backup completed with status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PFTBT"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v4, v15}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 633
    invoke-virtual {v10, v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 634
    invoke-virtual {v10, v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 638
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v4, :cond_7b1

    .line 639
    iget v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 642
    :cond_7b1
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 643
    :try_start_7b8
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 644
    monitor-exit v4
    :try_end_7bf
    .catchall {:try_start_7b8 .. :try_end_7bf} :catchall_7e5

    .line 646
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v5, "PFTBT.run()"

    invoke-interface {v4, v5}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 648
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 652
    iget-boolean v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v4, :cond_7d4

    .line 653
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 656
    :cond_7d4
    const-string v2, "PFTBT"

    const-string v3, "Full data backup pass finished."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    throw v1

    .line 644
    :catchall_7e5
    move-exception v0

    move-object v1, v0

    :try_start_7e7
    monitor-exit v4
    :try_end_7e8
    .catchall {:try_start_7e7 .. :try_end_7e8} :catchall_7e5

    throw v1
.end method

.method public unregisterTask()V
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 265
    return-void
.end method
