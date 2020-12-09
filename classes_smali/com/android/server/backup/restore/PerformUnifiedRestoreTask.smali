.class public Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
.super Ljava/lang/Object;
.source "PerformUnifiedRestoreTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;
    }
.end annotation


# instance fields
.field private backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private mAcceptSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAgent:Landroid/app/IBackupAgent;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field mBackupData:Landroid/os/ParcelFileDescriptor;

.field private mBackupDataName:Ljava/io/File;

.field private mCount:I

.field private mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private mDidLaunch:Z

.field private final mEphemeralOpToken:I

.field private mFinished:Z

.field private mIsSystemRestore:Z

.field private final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field private mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field mNewState:Landroid/os/ParcelFileDescriptor;

.field private mNewStateName:Ljava/io/File;

.field private mObserver:Landroid/app/backup/IRestoreObserver;

.field private mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

.field private mPmToken:I

.field private mRestoreDescription:Landroid/app/backup/RestoreDescription;

.field private mSavedStateName:Ljava/io/File;

.field private mStageName:Ljava/io/File;

.field private mStartRealtime:J

.field private mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field mStateDir:Ljava/io/File;

.field private mStatus:I

.field private mTargetPackage:Landroid/content/pm/PackageInfo;

.field private mToken:J

.field private final mTransportClient:Lcom/android/server/backup/transport/TransportClient;

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;

.field private final mUserId:I

.field private mWidgetData:[B


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V
    .registers 14

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 178
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 179
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 180
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 181
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStartRealtime:J

    .line 184
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 185
    iput-object p3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 186
    iput-object p4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 187
    iput-wide p5, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mToken:J

    .line 188
    iput p8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmToken:I

    .line 189
    iput-object p7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    .line 190
    iput-boolean p9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    .line 191
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mFinished:Z

    .line 192
    iput-boolean p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    .line 193
    iput-object p11, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 194
    nop

    .line 195
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p3

    .line 194
    const-string p4, "Timeout parameters cannot be null"

    invoke-static {p3, p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 198
    if-eqz p7, :cond_55

    .line 200
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 201
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-interface {p1, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f3

    .line 204
    :cond_55
    if-nez p10, :cond_82

    .line 206
    nop

    .line 208
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    iget p4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 207
    invoke-static {p3, p4}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object p3

    .line 209
    invoke-direct {p0, p3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->packagesToNames(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p10

    .line 211
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Full restore; asking about "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p4, p10

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " apps"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "BackupManagerService"

    invoke-static {p4, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_82
    new-instance p3, Ljava/util/ArrayList;

    array-length p4, p10

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 220
    nop

    .line 221
    nop

    .line 222
    move p3, p2

    move p4, p3

    move p5, p4

    :goto_8f
    array-length p6, p10

    const-string p7, "com.android.providers.settings"

    const-string p8, "android"

    if-ge p3, p6, :cond_cd

    .line 224
    const/4 p6, 0x1

    :try_start_97
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p9

    .line 225
    aget-object p11, p10, p3

    iget v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-virtual {p9, p11, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p9

    .line 226
    iget-object p11, p9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p8, p11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-eqz p8, :cond_ae

    .line 227
    nop

    .line 228
    move p4, p6

    goto :goto_ca

    .line 230
    :cond_ae
    iget-object p8, p9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p7, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_b9

    .line 231
    nop

    .line 232
    move p5, p6

    goto :goto_ca

    .line 235
    :cond_b9
    iget-object p6, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-static {p6, p7}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result p6

    if-eqz p6, :cond_c8

    .line 236
    iget-object p6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-interface {p6, p9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_97 .. :try_end_c8} :catch_c9

    .line 240
    :cond_c8
    goto :goto_ca

    .line 238
    :catch_c9
    move-exception p6

    .line 222
    :goto_ca
    add-int/lit8 p3, p3, 0x1

    goto :goto_8f

    .line 242
    :cond_cd
    if-eqz p4, :cond_e0

    .line 244
    :try_start_cf
    iget-object p3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    iget p6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-virtual {p4, p8, p2, p6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p4

    invoke-interface {p3, p2, p4}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_de
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cf .. :try_end_de} :catch_df

    .line 248
    goto :goto_e0

    .line 246
    :catch_df
    move-exception p3

    .line 250
    :cond_e0
    :goto_e0
    if-eqz p5, :cond_f3

    .line 252
    :try_start_e2
    iget-object p3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget p4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-virtual {p1, p7, p2, p4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e2 .. :try_end_f1} :catch_f2

    .line 256
    goto :goto_f3

    .line 254
    :catch_f2
    move-exception p1

    .line 266
    :cond_f3
    :goto_f3
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/app/backup/IBackupManagerMonitor;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/backup/IBackupManagerMonitor;)Landroid/app/backup/IBackupManagerMonitor;
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportClient;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)Z
    .registers 2

    .line 80
    iput-boolean p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)[B
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    return-object p1
.end method

.method private dispatchNextRestore()V
    .registers 17

    .line 472
    move-object/from16 v1, p0

    const-string v2, "BackupManagerService"

    sget-object v3, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 474
    const/16 v4, 0xb0f

    const/4 v5, 0x0

    :try_start_9
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v6, "PerformUnifiedRestoreTask.dispatchNextRestore()"

    .line 475
    invoke-virtual {v0, v6}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 477
    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    .line 478
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    const/4 v6, 0x0

    if-eqz v0, :cond_24

    .line 479
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_25

    :cond_24
    move-object v7, v6

    .line 480
    :goto_25
    if-nez v7, :cond_37

    .line 481
    const-string v0, "Failure getting next package name"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 483
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_33} :catch_1e6
    .catchall {:try_start_9 .. :try_end_33} :catchall_1e4

    .line 599
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 484
    return-void

    .line 485
    :cond_37
    :try_start_37
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    sget-object v8, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v0, v8, :cond_67

    .line 488
    const-string v0, "No more packages; finishing restore"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v11, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStartRealtime:J

    sub-long/2addr v6, v11

    long-to-int v0, v6

    .line 491
    const/16 v6, 0xb12

    new-array v7, v9, [Ljava/lang/Object;

    iget v8, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v10

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 492
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_63} :catch_1e6
    .catchall {:try_start_37 .. :try_end_63} :catchall_1e4

    .line 599
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 493
    return-void

    .line 497
    :cond_67
    :try_start_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Next restore package: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {v1, v7}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->sendOnRestorePackage(Ljava/lang/String;)V

    .line 501
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v0, v7}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-result-object v0

    .line 502
    const/16 v8, 0xb10

    if-nez v0, :cond_af

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No metadata for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-array v0, v9, [Ljava/lang/Object;

    aput-object v7, v0, v5

    const-string v6, "Package metadata missing"

    aput-object v6, v0, v10

    invoke-static {v8, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 506
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_ab} :catch_1e6
    .catchall {:try_start_67 .. :try_end_ab} :catchall_1e4

    .line 599
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 507
    return-void

    .line 511
    :cond_af
    const/4 v11, 0x3

    :try_start_b0
    iget-object v12, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v12}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/high16 v13, 0x8000000

    iget v14, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-virtual {v12, v7, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v12

    iput-object v12, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    :try_end_c0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b0 .. :try_end_c0} :catch_1ae
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c0} :catch_1e6
    .catchall {:try_start_b0 .. :try_end_c0} :catchall_1e4

    .line 526
    nop

    .line 528
    :try_start_c1
    iget-wide v12, v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    iget-object v14, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v14}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-lez v12, :cond_17c

    .line 532
    iget-object v12, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_d3} :catch_1e6
    .catchall {:try_start_c1 .. :try_end_d3} :catchall_1e4

    const/high16 v13, 0x20000

    and-int/2addr v12, v13

    const/16 v13, 0x1b

    const-string v14, "android.app.backup.extra.LOG_RESTORE_ANYWAY"

    const-string v15, "android.app.backup.extra.LOG_RESTORE_VERSION"

    const-string v4, " > installed version "

    const-string v8, "Source version "

    if-nez v12, :cond_142

    .line 534
    :try_start_e2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 535
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 536
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-wide v8, v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    invoke-static {v6, v15, v8, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v0

    .line 540
    invoke-static {v0, v14, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 543
    iget-object v6, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v8, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v6, v13, v8, v11, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 548
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v7, v0, v5

    const/4 v6, 0x1

    aput-object v4, v0, v6

    const/16 v4, 0xb10

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 550
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_13e} :catch_1e6
    .catchall {:try_start_e2 .. :try_end_13e} :catchall_1e4

    .line 599
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 551
    return-void

    .line 554
    :cond_142
    :try_start_142
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 555
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " but restoreAnyVersion"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 554
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-wide v7, v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    invoke-static {v6, v15, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v0

    .line 561
    const/4 v4, 0x1

    invoke-static {v0, v14, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 564
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v7, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v4, v13, v7, v11, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 580
    :cond_17c
    iput-object v6, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 581
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getDataType()I

    move-result v0

    .line 582
    const/4 v4, 0x1

    if-ne v0, v4, :cond_18a

    .line 583
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_18f

    .line 584
    :cond_18a
    const/4 v4, 0x2

    if-ne v0, v4, :cond_194

    .line 585
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_18f} :catch_1e6
    .catchall {:try_start_142 .. :try_end_18f} :catchall_1e4

    .line 599
    :goto_18f
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 600
    nop

    .line 601
    return-void

    .line 588
    :cond_194
    :try_start_194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized restore type "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_1aa} :catch_1e6
    .catchall {:try_start_194 .. :try_end_1aa} :catchall_1e4

    .line 599
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 590
    return-void

    .line 513
    :catch_1ae
    move-exception v0

    .line 516
    :try_start_1af
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not present: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v4, 0x1a

    iget-object v8, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v4, v8, v11, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 522
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v7, v0, v5

    const-string v4, "Package missing on device"

    const/4 v6, 0x1

    aput-object v4, v0, v6

    const/16 v4, 0xb10

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 524
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1e0} :catch_1e6
    .catchall {:try_start_1af .. :try_end_1e0} :catchall_1e4

    .line 599
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 525
    return-void

    .line 599
    :catchall_1e4
    move-exception v0

    goto :goto_20c

    .line 592
    :catch_1e6
    move-exception v0

    .line 593
    :try_start_1e7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t get next restore target from transport; halting: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-array v0, v5, [Ljava/lang/Object;

    const/16 v2, 0xb0f

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 596
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_208
    .catchall {:try_start_1e7 .. :try_end_208} :catchall_1e4

    .line 599
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 597
    return-void

    .line 599
    :goto_20c
    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    throw v0
.end method

.method private finalizeRestore()V
    .registers 7

    .line 1043
    const-string v0, "PerformUnifiedRestoreTask.finalizeRestore()"

    .line 1045
    :try_start_2
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 1046
    invoke-virtual {v1, v0}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v1

    .line 1047
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    .line 1050
    goto :goto_14

    .line 1048
    :catch_c
    move-exception v1

    .line 1049
    const-string v2, "BackupManagerService"

    const-string v3, "Error finishing restore"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1053
    :goto_14
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_26

    .line 1055
    :try_start_18
    iget v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    invoke-interface {v1, v2}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 1058
    goto :goto_26

    .line 1056
    :catch_1e
    move-exception v1

    .line 1057
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer died at restoreFinished"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1066
    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmToken:I

    if-lez v1, :cond_45

    .line 1071
    :try_start_35
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManagerBinder()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmToken:I

    iget-boolean v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_42} :catch_43

    goto :goto_44

    .line 1073
    :catch_43
    move-exception v1

    :goto_44
    goto :goto_54

    .line 1077
    :cond_45
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v3

    .line 1078
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1084
    :goto_54
    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-static {v1}, Lcom/android/server/AppWidgetBackupBridge;->restoreFinished(I)V

    .line 1088
    iget-boolean v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    if-eqz v1, :cond_76

    .line 1089
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->setAncestralPackages(Ljava/util/Set;)V

    .line 1090
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-wide v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mToken:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setAncestralToken(J)V

    .line 1091
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->writeRestoreTokens()V

    .line 1094
    :cond_76
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    .line 1095
    :try_start_7d
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_b2

    .line 1097
    const-string v2, "BackupManagerService"

    const-string v3, "Starting next pending restore."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 1100
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1101
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1100
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1104
    goto :goto_b8

    .line 1105
    :cond_b2
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setRestoreInProgress(Z)V

    .line 1110
    :goto_b8
    monitor-exit v1
    :try_end_b9
    .catchall {:try_start_7d .. :try_end_b9} :catchall_c6

    .line 1112
    const-string v1, "BackupManagerService"

    const-string v2, "Restore complete."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v1, v0}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 1114
    return-void

    .line 1110
    :catchall_c6
    move-exception v0

    :try_start_c7
    monitor-exit v1
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    throw v0
.end method

.method private packagesToNames(Ljava/util/List;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 269
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 270
    new-array v1, v0, [Ljava/lang/String;

    .line 271
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_16

    .line 272
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 274
    :cond_16
    return-object v1
.end method

.method private restoreFinished()V
    .registers 9

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreFinished packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 824
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentFinishedTimeoutMillis()J

    move-result-wide v4

    .line 825
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    const/4 v7, 0x1

    .line 826
    move-object v6, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 829
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 830
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v3

    .line 829
    invoke-interface {v0, v2, v3}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_37} :catch_38

    .line 840
    goto :goto_6b

    .line 833
    :catch_38
    move-exception v0

    .line 834
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to finalize restore of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/16 v1, 0xb10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 837
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v3, v2

    .line 836
    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 838
    invoke-virtual {p0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 839
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 841
    :goto_6b
    return-void
.end method

.method private restoreFull()V
    .registers 4

    .line 799
    :try_start_0
    new-instance v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;

    invoke-direct {v0, p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;-><init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)V

    .line 804
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "unified-stream-feeder"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    .line 814
    goto :goto_1e

    .line 808
    :catch_11
    move-exception v0

    .line 812
    const-string v0, "BackupManagerService"

    const-string v1, "Unable to construct pipes for stream restore!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 815
    :goto_1e
    return-void
.end method

.method private restoreKeyValue()V
    .registers 12

    .line 608
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 611
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    const/16 v2, 0xb10

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_e0

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 612
    const-string v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto/16 :goto_e0

    .line 626
    :cond_22
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-result-object v1

    .line 627
    const-class v7, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    .line 628
    iget-object v8, v1, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->sigHashes:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v8, v9, v7}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v7

    const/4 v8, 0x3

    const-string v9, "BackupManagerService"

    if-nez v7, :cond_6e

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Signature mismatch restoring "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v7, 0x1d

    iget-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v7, v9, v8, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 633
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v6

    const-string v0, "Signature mismatch"

    aput-object v0, v1, v5

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 635
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 636
    return-void

    .line 640
    :cond_6e
    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v10, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v10, v6}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 643
    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v7, :cond_af

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find backup agent for "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v7, 0x1e

    iget-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v7, v9, v8, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 648
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v6

    const-string v0, "Restore agent missing"

    aput-object v0, v1, v5

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 650
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 651
    return-void

    .line 655
    :cond_af
    iput-boolean v5, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    .line 659
    :try_start_b1
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-wide v1, v1, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;J)V

    .line 660
    iget v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCount:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCount:I
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_bd} :catch_be

    .line 665
    goto :goto_df

    .line 661
    :catch_be
    move-exception v0

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when attempting restore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {p0, v6}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 664
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 666
    :goto_df
    return-void

    .line 617
    :cond_e0
    :goto_e0
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v7, 0x1c

    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v7, v8, v4, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 620
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v6

    const-string v0, "Package has no agent"

    aput-object v0, v1, v5

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 622
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 623
    return-void
.end method

.method private startRestore()V
    .registers 12

    .line 359
    const-string v0, "@pm@"

    const-string v1, "BackupManagerService"

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->sendStartRestore(I)V

    .line 362
    iget-boolean v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    if-eqz v2, :cond_16

    .line 363
    iget v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-static {v2}, Lcom/android/server/AppWidgetBackupBridge;->restoreStarting(I)V

    .line 367
    :cond_16
    const/16 v2, 0x14

    const/4 v3, 0x1

    const/16 v4, -0x3e8

    const/4 v5, 0x0

    :try_start_1c
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 368
    invoke-virtual {v7}, Lcom/android/server/backup/transport/TransportClient;->getTransportComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    .line 369
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    .line 372
    new-instance v6, Landroid/content/pm/PackageInfo;

    invoke-direct {v6}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 373
    iput-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 374
    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 376
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    new-array v7, v8, [Landroid/content/pm/PackageInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/PackageInfo;

    .line 378
    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v9, "PerformUnifiedRestoreTask.startRestore()"

    .line 379
    invoke-virtual {v7, v9}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v7

    .line 381
    iget-wide v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mToken:J

    invoke-interface {v7, v9, v10, v6}, Lcom/android/internal/backup/IBackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v6

    iput v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 382
    iget v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    if-eqz v6, :cond_83

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transport error "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; no restore possible"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iput v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 385
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 386
    return-void

    .line 389
    :cond_83
    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v6

    .line 390
    const/4 v7, 0x3

    if-nez v6, :cond_a3

    .line 391
    const-string v0, "No restore metadata available; halting"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x16

    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v6, v8, v7, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 396
    iput v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 397
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 398
    return-void

    .line 400
    :cond_a3
    nop

    .line 401
    invoke-virtual {v6}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 400
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_da

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Required package metadata but got "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v6}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x17

    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v6, v8, v7, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 408
    iput v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 409
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 410
    return-void

    .line 414
    :cond_da
    new-instance v6, Landroid/content/pm/PackageInfo;

    invoke-direct {v6}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 415
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iput-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 416
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/backup/UserBackupManagerService;->makeMetadataAgent(Ljava/util/List;)Lcom/android/server/backup/PackageManagerBackupAgent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 417
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 421
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-wide/16 v9, 0x0

    invoke-virtual {p0, v6, v9, v10}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;J)V

    .line 429
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v6

    const/16 v9, 0x12

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 435
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->hasMetadata()Z

    move-result v6

    if-nez v6, :cond_143

    .line 436
    const-string v6, "PM agent has no metadata, so not restoring"

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v9, 0x18

    iget-object v10, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v6, v9, v10, v7, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 441
    const/16 v6, 0xb10

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    const-string v0, "Package manager restore metadata missing"

    aput-object v0, v7, v3

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 444
    iput v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 445
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 447
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_142} :catch_145

    .line 448
    return-void

    .line 466
    :cond_143
    nop

    .line 467
    return-void

    .line 454
    :catch_145
    move-exception v0

    .line 456
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to contact transport for restore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v1, 0x19

    invoke-static {v0, v1, v5, v3, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 461
    iput v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 462
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 464
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 465
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 3

    .line 283
    sget-object v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$1;->$SwitchMap$com$android$server$backup$restore$UnifiedRestoreState:[I

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {v1}, Lcom/android/server/backup/restore/UnifiedRestoreState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    goto :goto_35

    .line 305
    :pswitch_e  #0x6
    iget-boolean v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mFinished:Z

    if-nez v0, :cond_16

    .line 306
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->finalizeRestore()V

    goto :goto_1d

    .line 308
    :cond_16
    const-string v0, "BackupManagerService"

    const-string v1, "Duplicate finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mFinished:Z

    goto :goto_35

    .line 301
    :pswitch_21  #0x5
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->restoreFinished()V

    .line 302
    goto :goto_35

    .line 297
    :pswitch_25  #0x4
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->restoreFull()V

    .line 298
    goto :goto_35

    .line 293
    :pswitch_29  #0x3
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->restoreKeyValue()V

    .line 294
    goto :goto_35

    .line 289
    :pswitch_2d  #0x2
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->dispatchNextRestore()V

    .line 290
    goto :goto_35

    .line 285
    :pswitch_31  #0x1
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->startRestore()V

    .line 286
    nop

    .line 313
    :goto_35
    return-void

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_31  #00000001
        :pswitch_2d  #00000002
        :pswitch_29  #00000003
        :pswitch_25  #00000004
        :pswitch_21  #00000005
        :pswitch_e  #00000006
    .end packed-switch
.end method

.method executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V
    .registers 3

    .line 1293
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1294
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x14

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1296
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1297
    return-void
.end method

.method public handleCancel(Z)V
    .registers 6

    .line 1276
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    invoke-virtual {p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 1277
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Timeout restoring application "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BackupManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x2

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v1, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 1281
    new-array p1, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    const-string/jumbo v1, "restore timeout"

    aput-object v1, p1, v0

    const/16 v1, 0xb10

    invoke-static {v1, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1284
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 1285
    sget-object p1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1286
    return-void
.end method

.method initiateOneRestore(Landroid/content/pm/PackageInfo;J)V
    .registers 23

    .line 670
    move-object/from16 v7, p0

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initiateOneRestore packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "BackupManagerService"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".restore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 678
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".stage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    .line 679
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    .line 680
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    invoke-direct {v0, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mSavedStateName:Ljava/io/File;

    .line 686
    const-string v0, "android"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 688
    const/4 v10, 0x1

    xor-int/2addr v0, v10

    if-eqz v0, :cond_88

    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    goto :goto_8a

    :cond_88
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 689
    :goto_8a
    nop

    .line 692
    const/4 v11, 0x0

    :try_start_8c
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v3, "PerformUnifiedRestoreTask.initiateOneRestore()"

    .line 693
    invoke-virtual {v2, v3}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 697
    const/high16 v3, 0x3c000000  # 0.0078125f

    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 702
    invoke-interface {v2, v4}, Lcom/android/internal/backup/IBackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v2

    if-eqz v2, :cond_c7

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting restore data for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/16 v0, 0xb0f

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 707
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 708
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 709
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {v7, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 710
    return-void

    .line 716
    :cond_c7
    const/high16 v2, 0x10000000

    if-eqz v0, :cond_13b

    .line 717
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 718
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 721
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 726
    new-instance v0, Landroid/app/backup/BackupDataInput;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 727
    new-instance v1, Landroid/app/backup/BackupDataOutput;

    iget-object v5, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 728
    const/16 v5, 0x2000

    new-array v5, v5, [B

    .line 729
    :goto_f2
    invoke-virtual {v0}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v6

    if-eqz v6, :cond_136

    .line 730
    invoke-virtual {v0}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 731
    invoke-virtual {v0}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v12

    .line 734
    const-string/jumbo v13, "￭￭widget"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_127

    .line 736
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Restoring widget state for "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-array v6, v12, [B

    iput-object v6, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 739
    iget-object v6, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    invoke-virtual {v0, v6, v11, v12}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    goto :goto_135

    .line 741
    :cond_127
    array-length v13, v5

    if-le v12, v13, :cond_12c

    .line 742
    new-array v5, v12, [B

    .line 744
    :cond_12c
    invoke-virtual {v0, v5, v11, v12}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 745
    invoke-virtual {v1, v6, v12}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 746
    invoke-virtual {v1, v5, v12}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 748
    :goto_135
    goto :goto_f2

    .line 750
    :cond_136
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 754
    :cond_13b
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 756
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 759
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 767
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v3

    .line 768
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    const/4 v6, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_15e} :catch_17a

    .line 770
    nop

    .line 771
    :try_start_15f
    iget-object v12, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v13, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iget v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 772
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v18

    .line 771
    move-wide/from16 v14, p2

    move-object/from16 v16, v0

    move/from16 v17, v1

    invoke-interface/range {v12 .. v18}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_176} :catch_177

    .line 784
    goto :goto_1a8

    .line 773
    :catch_177
    move-exception v0

    move v1, v10

    goto :goto_17c

    :catch_17a
    move-exception v0

    move v1, v11

    .line 774
    :goto_17c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to call app for restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 775
    const/16 v2, 0xb10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v11

    .line 776
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    .line 775
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 778
    invoke-virtual {v7, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 783
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {v7, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 785
    :goto_1a8
    return-void
.end method

.method keyValueAgentCleanup()V
    .registers 4

    .line 1133
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1134
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1136
    :try_start_a
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_13

    .line 1137
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_14

    .line 1140
    :cond_13
    goto :goto_15

    .line 1139
    :catch_14
    move-exception v0

    .line 1142
    :goto_15
    :try_start_15
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1e

    .line 1143
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1e} :catch_1f

    .line 1146
    :cond_1e
    goto :goto_20

    .line 1145
    :catch_1f
    move-exception v0

    .line 1147
    :goto_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 1162
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1166
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_99

    .line 1169
    :try_start_30
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1185
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1186
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1187
    invoke-static {v1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v1

    if-nez v1, :cond_5f

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    .line 1188
    invoke-virtual {v1}, Landroid/app/backup/RestoreDescription;->getDataType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5d

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5f

    :cond_5d
    const/4 v0, 0x1

    goto :goto_60

    :cond_5f
    const/4 v0, 0x0

    .line 1192
    :goto_60
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_97

    if-eqz v0, :cond_97

    .line 1194
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore complete, killing host process of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_97} :catch_98

    .line 1203
    :cond_97
    goto :goto_99

    .line 1201
    :catch_98
    move-exception v0

    .line 1208
    :cond_99
    :goto_99
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1209
    return-void
.end method

.method keyValueAgentErrorCleanup(Z)V
    .registers 3

    .line 1121
    if-eqz p1, :cond_b

    .line 1125
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    .line 1128
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    .line 1129
    return-void
.end method

.method public operationComplete(J)V
    .registers 7

    .line 1213
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 1221
    sget-object p1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$1;->$SwitchMap$com$android$server$backup$restore$UnifiedRestoreState:[I

    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p2}, Lcom/android/server/backup/restore/UnifiedRestoreState;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6c

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3b

    .line 1263
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected restore callback into state "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BackupManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    invoke-virtual {p0, p2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 1265
    sget-object p1, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_72

    .line 1241
    :cond_3b
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int p1, v0

    .line 1242
    const/16 v0, 0xb11

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1243
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    .line 1242
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1246
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    .line 1251
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    if-eqz p1, :cond_69

    .line 1252
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    invoke-virtual {p1, p2, v0}, Lcom/android/server/backup/UserBackupManagerService;->restoreWidgetData(Ljava/lang/String;[B)V

    .line 1256
    :cond_69
    sget-object p1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1257
    goto :goto_72

    .line 1234
    :cond_6c
    sget-object p1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1235
    goto :goto_72

    .line 1226
    :cond_6f
    sget-object p1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1227
    nop

    .line 1270
    :goto_72
    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1271
    return-void
.end method

.method sendEndRestore()V
    .registers 3

    .line 1323
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_15

    .line 1325
    :try_start_4
    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1329
    goto :goto_15

    .line 1326
    :catch_a
    move-exception v0

    .line 1327
    const-string v0, "BackupManagerService"

    const-string v1, "Restore observer went away: endRestore"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 1331
    :cond_15
    :goto_15
    return-void
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .registers 4

    .line 1312
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_15

    .line 1314
    :try_start_4
    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCount:I

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IRestoreObserver;->onUpdate(ILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1318
    goto :goto_15

    .line 1315
    :catch_a
    move-exception p1

    .line 1316
    const-string p1, "BackupManagerService"

    const-string v0, "Restore observer died in onUpdate"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 1320
    :cond_15
    :goto_15
    return-void
.end method

.method sendStartRestore(I)V
    .registers 3

    .line 1301
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_13

    .line 1303
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/backup/IRestoreObserver;->restoreStarting(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1307
    goto :goto_13

    .line 1304
    :catch_8
    move-exception p1

    .line 1305
    const-string p1, "BackupManagerService"

    const-string v0, "Restore observer went away: startRestore"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 1309
    :cond_13
    :goto_13
    return-void
.end method
