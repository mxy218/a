.class public Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
.super Ljava/lang/Object;
.source "KeyValueBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/keyvalue/KeyValueBackupTask$StateTransaction;
    }
.end annotation


# static fields
.field private static final BLANK_STATE_FILE_NAME:Ljava/lang/String; = "blank_state"

.field public static final NEW_STATE_FILE_SUFFIX:Ljava/lang/String; = ".new"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PM_PACKAGE:Ljava/lang/String; = "@pm@"

.field public static final STAGING_FILE_SUFFIX:Ljava/lang/String; = ".data"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final THREAD_PRIORITY:I = 0xa


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private mBackupData:Landroid/os/ParcelFileDescriptor;

.field private mBackupDataFile:Ljava/io/File;

.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mBlankStateFile:Ljava/io/File;

.field private final mCancelAcknowledged:Landroid/os/ConditionVariable;

.field private volatile mCancelled:Z

.field private final mCurrentOpToken:I

.field private mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private final mDataDirectory:Ljava/io/File;

.field private mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

.field private mHasDataToBackup:Z

.field private final mJournal:Lcom/android/server/backup/DataChangedJournal;

.field private mNewState:Landroid/os/ParcelFileDescriptor;

.field private mNewStateFile:Ljava/io/File;

.field private final mNonIncremental:Z

.field private final mOriginalQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private volatile mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

.field private final mPendingFullBackups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueueLock:Ljava/lang/Object;

.field private final mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

.field private mSavedState:Landroid/os/ParcelFileDescriptor;

.field private mSavedStateFile:Ljava/io/File;

.field private final mStateDirectory:Ljava/io/File;

.field private final mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field private final mTransportClient:Lcom/android/server/backup/transport/TransportClient;

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;

.field private final mUserId:I

.field private final mUserInitiated:Z


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 801
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

.method static constructor <clinit>()V
    .registers 1

    .line 174
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZ)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/UserBackupManagerService;",
            "Lcom/android/server/backup/transport/TransportClient;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/backup/DataChangedJournal;",
            "Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;",
            "Lcom/android/server/backup/internal/OnTaskFinishedListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    .line 282
    iput-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 302
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 303
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 304
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 305
    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 306
    iput-object p4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOriginalQueue:Ljava/util/List;

    .line 308
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    .line 309
    iput-object p5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 310
    iput-object p6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 311
    iput-object p7, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 312
    iput-object p8, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 313
    iput-boolean p9, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    .line 314
    iput-boolean p10, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    .line 315
    nop

    .line 317
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p2

    .line 316
    const-string p4, "Timeout parameters cannot be null"

    invoke-static {p2, p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 319
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object p4

    invoke-direct {p2, p4, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    .line 320
    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mDataDirectory:Ljava/io/File;

    .line 321
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result p2

    iput p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    .line 322
    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueueLock:Ljava/lang/Object;

    .line 323
    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    const-string p4, "blank_state"

    invoke-direct {p2, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    .line 324
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    .line 325
    return-void
.end method

.method private SHA1Checksum([B)Ljava/lang/String;
    .registers 6

    .line 763
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 764
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_28

    .line 768
    nop

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 771
    array-length v1, p1

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_23

    aget-byte v3, p1, v2

    .line 772
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 774
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 765
    :catch_28
    move-exception p1

    .line 766
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onDigestError(Ljava/security/NoSuchAlgorithmException;)V

    .line 767
    const-string p1, "00"

    return-object p1
.end method

.method private agentDoQuotaExceeded(Landroid/app/IBackupAgent;Ljava/lang/String;J)V
    .registers 13

    .line 905
    if-eqz p1, :cond_29

    .line 907
    :try_start_2
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v1, "KVBT.agentDoQuotaExceeded()"

    .line 908
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 909
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v6

    .line 910
    new-instance p2, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$XyLNsBl81S-JjG_2y6Nb3ueV0ZY;

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$XyLNsBl81S-JjG_2y6Nb3ueV0ZY;-><init>(Landroid/app/IBackupAgent;JJ)V

    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 912
    invoke-virtual {p1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getQuotaExceededTimeoutMillis()J

    move-result-wide p3

    const-string p1, "doQuotaExceeded()"

    .line 910
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->remoteCall(Lcom/android/server/backup/remote/RemoteCallable;JLjava/lang/String;)Lcom/android/server/backup/remote/RemoteResult;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_23

    .line 916
    goto :goto_29

    .line 914
    :catch_23
    move-exception p1

    .line 915
    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentDoQuotaExceededError(Ljava/lang/Exception;)V

    .line 918
    :cond_29
    :goto_29
    return-void
.end method

.method private agentFail(Landroid/app/IBackupAgent;Ljava/lang/String;)V
    .registers 3

    .line 753
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/IBackupAgent;->fail(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 756
    goto :goto_e

    .line 754
    :catch_4
    move-exception p1

    .line 755
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onFailAgentError(Ljava/lang/String;)V

    .line 757
    :goto_e
    return-void
.end method

.method private applyStateTransaction(I)V
    .registers 5

    .line 1072
    if-eqz p1, :cond_32

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    .line 1082
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1083
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1084
    goto :goto_3a

    .line 1086
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1077
    :cond_2a
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    if-eqz p1, :cond_3a

    .line 1078
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_3a

    .line 1074
    :cond_32
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1075
    nop

    .line 1088
    :cond_3a
    :goto_3a
    return-void
.end method

.method private backupPackage(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onStartPackageBackup(Ljava/lang/String;)V

    .line 469
    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getPackageForBackup(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 472
    :try_start_b
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;)V

    .line 473
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport(Landroid/content/pm/PackageInfo;)I

    move-result p1

    .line 474
    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForTransportStatus(I)V
    :try_end_19
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_b .. :try_end_19} :catch_1b
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_b .. :try_end_19} :catch_1b

    .line 478
    nop

    .line 479
    return-void

    .line 475
    :catch_1b
    move-exception p1

    .line 476
    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForError(Lcom/android/server/backup/keyvalue/BackupException;)V

    .line 477
    throw p1
.end method

.method private backupPm()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    const-string v1, "@pm@"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onStartPackageBackup(Ljava/lang/String;)V

    .line 452
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 453
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 456
    :try_start_12
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractPmAgentData(Landroid/content/pm/PackageInfo;)V

    .line 457
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport(Landroid/content/pm/PackageInfo;)I

    move-result v0

    .line 458
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForTransportStatus(I)V
    :try_end_1e
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_12 .. :try_end_1e} :catch_20
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_12 .. :try_end_1e} :catch_20

    .line 464
    nop

    .line 465
    return-void

    .line 459
    :catch_20
    move-exception v0

    .line 460
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onExtractPmAgentDataError(Ljava/lang/Exception;)V

    .line 461
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForError(Lcom/android/server/backup/keyvalue/BackupException;)V

    .line 463
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v0

    throw v0
.end method

.method private bindAgent(Landroid/content/pm/PackageInfo;)Landroid/app/IBackupAgent;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;
        }
    .end annotation

    .line 508
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 511
    :try_start_2
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x0

    .line 512
    invoke-virtual {v1, p1, v2}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object p1

    .line 514
    if-eqz p1, :cond_f

    .line 521
    nop

    .line 522
    return-object p1

    .line 515
    :cond_f
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentError(Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->transitory()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p1

    throw p1
    :try_end_19
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_19} :catch_19

    .line 518
    :catch_19
    move-exception p1

    .line 519
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onBindAgentError(Ljava/lang/String;Ljava/lang/SecurityException;)V

    .line 520
    invoke-static {p1}, Lcom/android/server/backup/keyvalue/AgentException;->transitory(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p1

    throw p1
.end method

.method private checkAgentResult(Landroid/content/pm/PackageInfo;Lcom/android/server/backup/remote/RemoteResult;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 728
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_THREAD_INTERRUPTED:Lcom/android/server/backup/remote/RemoteResult;

    const/4 v1, 0x1

    if-eq p2, v0, :cond_48

    .line 734
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

    if-eq p2, v0, :cond_3e

    .line 738
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;

    if-eq p2, v0, :cond_34

    .line 742
    invoke-virtual {p2}, Lcom/android/server/backup/remote/RemoteResult;->isPresent()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 743
    invoke-virtual {p2}, Lcom/android/server/backup/remote/RemoteResult;->get()J

    move-result-wide v2

    .line 744
    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-eqz p2, :cond_2a

    .line 748
    const-wide/16 p1, 0x0

    cmp-long p1, v2, p1

    if-nez p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 749
    return-void

    .line 745
    :cond_2a
    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentResultError(Landroid/content/pm/PackageInfo;)V

    .line 746
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->transitory()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p1

    throw p1

    .line 739
    :cond_34
    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentTimedOut(Landroid/content/pm/PackageInfo;)V

    .line 740
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->transitory()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p1

    throw p1

    .line 735
    :cond_3e
    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentCancelled(Landroid/content/pm/PackageInfo;)V

    .line 736
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p1

    throw p1

    .line 730
    :cond_48
    iput-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 731
    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentCancelled(Landroid/content/pm/PackageInfo;)V

    .line 732
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p1

    throw p1
.end method

.method private checkBackupData(Landroid/content/pm/ApplicationInfo;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/server/backup/keyvalue/AgentException;
        }
    .end annotation

    .line 926
    if-eqz p1, :cond_63

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_9

    goto :goto_63

    .line 930
    :cond_9
    const/high16 p1, 0x10000000

    .line 931
    invoke-static {p2, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 930
    const/4 p2, 0x0

    .line 932
    :try_start_10
    new-instance v0, Landroid/app/backup/BackupDataInput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 933
    :goto_19
    invoke-virtual {v0}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 934
    invoke-virtual {v0}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 935
    if-eqz v1, :cond_52

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xff00

    if-ge v2, v3, :cond_30

    goto :goto_52

    .line 936
    :cond_30
    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentIllegalKey(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 938
    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal backup key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->agentFail(Landroid/app/IBackupAgent;Ljava/lang/String;)V

    .line 939
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p2

    throw p2

    .line 941
    :cond_52
    :goto_52
    invoke-virtual {v0}, Landroid/app/backup/BackupDataInput;->skipEntityData()V
    :try_end_55
    .catchall {:try_start_10 .. :try_end_55} :catchall_5a

    .line 942
    goto :goto_19

    .line 943
    :cond_56
    invoke-static {p2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 944
    return-void

    .line 930
    :catchall_5a
    move-exception p2

    :try_start_5b
    throw p2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    .line 943
    :catchall_5c
    move-exception v0

    if-eqz p1, :cond_62

    invoke-static {p2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_62
    throw v0

    .line 928
    :cond_63
    :goto_63
    return-void
.end method

.method private cleanUpAgent(I)V
    .registers 4

    .line 1049
    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->applyStateTransaction(I)V

    .line 1050
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    if-eqz p1, :cond_a

    .line 1051
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1053
    :cond_a
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1054
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 1055
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    .line 1056
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 1057
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    const-string/jumbo v1, "old state"

    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1058
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    const-string v1, "backup data"

    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    const-string/jumbo v1, "new state"

    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1060
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 1061
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 1062
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 1065
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_42

    .line 1066
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->unbindAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1068
    :cond_42
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 1069
    return-void
.end method

.method private cleanUpAgentForError(Lcom/android/server/backup/keyvalue/BackupException;)V
    .registers 2

    .line 1027
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    .line 1028
    return-void
.end method

.method private cleanUpAgentForTransportStatus(I)V
    .registers 3

    .line 1035
    const/16 v0, -0x3ee

    if-eq p1, v0, :cond_11

    if-nez p1, :cond_b

    .line 1037
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    .line 1038
    goto :goto_16

    .line 1044
    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1040
    :cond_11
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    .line 1041
    nop

    .line 1046
    :goto_16
    return-void
.end method

.method private createFullBackupTask(Ljava/util/List;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;"
        }
    .end annotation

    .line 436
    new-instance v12, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 440
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [Ljava/lang/String;

    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x1

    invoke-direct {v7, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 444
    invoke-virtual {p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->getObserver()Landroid/app/backup/IBackupObserver;

    move-result-object v8

    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 445
    invoke-virtual {p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iget-boolean v11, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Z)V

    .line 436
    return-object v12
.end method

.method private deletePmStateFile()V
    .registers 4

    .line 623
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    const-string v2, "@pm@"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 624
    return-void
.end method

.method private extractAgentData(Landroid/content/pm/PackageInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    new-instance v1, Landroid/os/WorkSource;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->setWorkSource(Landroid/os/WorkSource;)V

    .line 647
    const/4 v0, 0x0

    :try_start_f
    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->bindAgent(Landroid/content/pm/PackageInfo;)Landroid/app/IBackupAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 648
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-direct {p0, p1, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_21

    .line 650
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->setWorkSource(Landroid/os/WorkSource;)V

    .line 651
    nop

    .line 652
    return-void

    .line 650
    :catchall_21
    move-exception p1

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->setWorkSource(Landroid/os/WorkSource;)V

    throw p1
.end method

.method private extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 668
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 669
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onExtractAgentData(Ljava/lang/String;)V

    .line 671
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 672
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mDataDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    .line 673
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".new"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 674
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentFilesReady(Ljava/io/File;)V

    .line 676
    nop

    .line 679
    const/4 v1, 0x0

    :try_start_4d
    iget-boolean v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    goto :goto_56

    :cond_54
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 681
    :goto_56
    const/high16 v3, 0x18000000

    .line 682
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 683
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    .line 684
    const/high16 v3, 0x3c000000  # 0.0078125f

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 686
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 687
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 692
    iget v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    if-nez v2, :cond_83

    .line 693
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_83

    .line 694
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onRestoreconFailed(Ljava/io/File;)V

    .line 698
    :cond_83
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v3, "KVBT.extractAgentData()"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 699
    invoke-interface {v2, v0, v1}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v6

    .line 700
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->getTransportFlags()I

    move-result v8

    .line 702
    const/4 v1, 0x1

    .line 703
    new-instance v2, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$NN2H32cNizGxrUxqHgqPqGldNsA;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$NN2H32cNizGxrUxqHgqPqGldNsA;-><init>(Lcom/android/server/backup/keyvalue/KeyValueBackupTask;Landroid/app/IBackupAgent;JI)V

    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 713
    invoke-virtual {p2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    move-result-wide v3

    const-string p2, "doBackup()"

    .line 704
    invoke-direct {p0, v2, v3, v4, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->remoteCall(Lcom/android/server/backup/remote/RemoteCallable;JLjava/lang/String;)Lcom/android/server/backup/remote/RemoteResult;

    move-result-object p2
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_a8} :catch_ad

    .line 722
    nop

    .line 723
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->checkAgentResult(Landroid/content/pm/PackageInfo;Lcom/android/server/backup/remote/RemoteResult;)V

    .line 724
    return-void

    .line 715
    :catch_ad
    move-exception p1

    .line 716
    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onCallAgentDoBackupError(Ljava/lang/String;ZLjava/lang/Exception;)V

    .line 717
    if-eqz v1, :cond_ba

    .line 718
    invoke-static {p1}, Lcom/android/server/backup/keyvalue/AgentException;->transitory(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p1

    throw p1

    .line 720
    :cond_ba
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p1

    throw p1
.end method

.method private extractPmAgentData(Landroid/content/pm/PackageInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 628
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "@pm@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 629
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->makeMetadataAgent()Landroid/app/backup/BackupAgent;

    move-result-object v0

    .line 630
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 631
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V

    .line 632
    return-void
.end method

.method private finishTask(I)V
    .registers 7

    .line 527
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 528
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 529
    goto :goto_6

    .line 533
    :cond_18
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/server/backup/DataChangedJournal;->delete()Z

    move-result v0

    if-nez v0, :cond_29

    .line 534
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onJournalDeleteFailed(Lcom/android/server/backup/DataChangedJournal;)V

    .line 537
    :cond_29
    const-string v0, "KVBT.finishTask()"

    .line 541
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentToken()J

    move-result-wide v1

    .line 542
    iget-boolean v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    if-eqz v3, :cond_58

    if-nez p1, :cond_58

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_58

    .line 544
    :try_start_3d
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v1

    .line 545
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->setCurrentToken(J)V

    .line 546
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->writeRestoreTokens()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_51} :catch_52

    .line 550
    goto :goto_58

    .line 547
    :catch_52
    move-exception v1

    .line 549
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onSetCurrentTokenError(Ljava/lang/Exception;)V

    .line 553
    :cond_58
    :goto_58
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 554
    :try_start_5b
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 555
    const/16 v2, -0x3e9

    if-ne p1, v2, :cond_76

    .line 556
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportNotInitialized()V
    :try_end_6a
    .catchall {:try_start_5b .. :try_end_6a} :catchall_cf

    .line 558
    :try_start_6a
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->triggerTransportInitializationLocked()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6e
    .catchall {:try_start_6a .. :try_end_6d} :catchall_cf

    .line 562
    goto :goto_76

    .line 559
    :catch_6e
    move-exception p1

    .line 560
    :try_start_6f
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPendingInitializeTransportError(Ljava/lang/Exception;)V

    .line 561
    const/16 p1, -0x3e8

    .line 564
    :cond_76
    :goto_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_cf

    .line 566
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->unregisterTask()V

    .line 567
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTaskFinished()V

    .line 569
    iget-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    if-eqz v1, :cond_88

    .line 572
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 575
    :cond_88
    iget-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    if-nez v1, :cond_ae

    if-nez p1, :cond_ae

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v1, :cond_ae

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 578
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ae

    .line 579
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onStartFullBackup(Ljava/util/List;)V

    .line 584
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    const-string v1, "full-transport-requested"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 585
    return-void

    .line 588
    :cond_ae
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v1, :cond_b5

    .line 589
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 591
    :cond_b5
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v1, v0}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    invoke-direct {p0, v1, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getBackupFinishedStatus(ZI)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onBackupFinished(I)V

    .line 593
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 594
    return-void

    .line 564
    :catchall_cf
    move-exception p1

    :try_start_d0
    monitor-exit v1
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw p1
.end method

.method private getBackupFinishedStatus(ZI)I
    .registers 3

    .line 597
    if-eqz p1, :cond_5

    .line 598
    const/16 p1, -0x7d3

    return p1

    .line 600
    :cond_5
    const/16 p1, -0x3ed

    if-eq p2, p1, :cond_12

    const/16 p1, -0x3ea

    if-eq p2, p1, :cond_12

    if-eqz p2, :cond_12

    .line 608
    const/16 p1, -0x3e8

    return p1

    .line 604
    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private getPackageForBackup(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;
        }
    .end annotation

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x8000000

    iget v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    .line 485
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_40

    .line 490
    nop

    .line 491
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 492
    iget v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 496
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 500
    invoke-static {v1}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 504
    return-object v0

    .line 501
    :cond_22
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageStopped(Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p1

    throw p1

    .line 497
    :cond_2c
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageEligibleForFullBackup(Ljava/lang/String;)V

    .line 498
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p1

    throw p1

    .line 493
    :cond_36
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageNotEligibleForBackup(Ljava/lang/String;)V

    .line 494
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p1

    throw p1

    .line 487
    :catch_40
    move-exception v0

    .line 488
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentUnknown(Ljava/lang/String;)V

    .line 489
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/AgentException;->permanent(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p1

    throw p1
.end method

.method private getPerformBackupFlags(ZZ)I
    .registers 3

    .line 947
    nop

    .line 949
    if-eqz p2, :cond_5

    .line 950
    const/4 p2, 0x4

    goto :goto_6

    .line 951
    :cond_5
    const/4 p2, 0x2

    .line 952
    :goto_6
    or-int/2addr p1, p2

    return p1
.end method

.method private handleTransportStatus(ILjava/lang/String;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/TaskException;,
            Lcom/android/server/backup/keyvalue/AgentException;
        }
    .end annotation

    .line 880
    if-nez p1, :cond_8

    .line 881
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupComplete(Ljava/lang/String;J)V

    .line 882
    return-void

    .line 884
    :cond_8
    const/16 v0, -0x3ee

    if-ne p1, v0, :cond_1a

    .line 885
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {p1, p3}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupNonIncrementalRequired(Landroid/content/pm/PackageInfo;)V

    .line 887
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p1, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 888
    return-void

    .line 890
    :cond_1a
    const/16 v0, -0x3ea

    if-eq p1, v0, :cond_3b

    .line 894
    const/16 v0, -0x3ed

    if-ne p1, v0, :cond_31

    .line 895
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p1, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupQuotaExceeded(Ljava/lang/String;)V

    .line 896
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->agentDoQuotaExceeded(Landroid/app/IBackupAgent;Ljava/lang/String;J)V

    .line 897
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p1

    throw p1

    .line 900
    :cond_31
    iget-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p3, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupTransportFailure(Ljava/lang/String;)V

    .line 901
    invoke-static {p1}, Lcom/android/server/backup/keyvalue/TaskException;->forStatus(I)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p1

    throw p1

    .line 891
    :cond_3b
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p1, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupRejected(Ljava/lang/String;)V

    .line 892
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p1

    throw p1
.end method

.method static synthetic lambda$agentDoQuotaExceeded$1(Landroid/app/IBackupAgent;JJLandroid/app/backup/IBackupCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 911
    invoke-interface/range {p0 .. p5}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V

    return-void
.end method

.method private registerTask()V
    .registers 6

    .line 328
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    new-instance v2, Lcom/android/server/backup/internal/Operation;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v3, p0, v4}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->putOperation(ILcom/android/server/backup/internal/Operation;)V

    .line 330
    return-void
.end method

.method private remoteCall(Lcom/android/server/backup/remote/RemoteCallable;JLjava/lang/String;)Lcom/android/server/backup/remote/RemoteResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/remote/RemoteCallable<",
            "Landroid/app/backup/IBackupCallback;",
            ">;J",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/backup/remote/RemoteResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1103
    new-instance v0, Lcom/android/server/backup/remote/RemoteCall;

    iget-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/backup/remote/RemoteCall;-><init>(ZLcom/android/server/backup/remote/RemoteCallable;J)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    .line 1104
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    invoke-virtual {p1}, Lcom/android/server/backup/remote/RemoteCall;->call()Lcom/android/server/backup/remote/RemoteResult;

    move-result-object p1

    .line 1105
    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p2, p1, p4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onRemoteCallReturned(Lcom/android/server/backup/remote/RemoteResult;Ljava/lang/String;)V

    .line 1106
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    .line 1107
    return-object p1
.end method

.method private revertTask()V
    .registers 6

    .line 1000
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onRevertTask()V

    .line 1003
    :try_start_5
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v1, "KVBT.revertTask()"

    .line 1004
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 1005
    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_12

    .line 1010
    goto :goto_1a

    .line 1006
    :catch_12
    move-exception v0

    .line 1007
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportRequestBackupTimeError(Ljava/lang/Exception;)V

    .line 1009
    const-wide/16 v0, 0x0

    .line 1011
    :goto_1a
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1012
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getConstants()Lcom/android/server/backup/BackupManagerConstants;

    move-result-object v4

    .line 1011
    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 1014
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOriginalQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1015
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1016
    goto :goto_35

    .line 1017
    :cond_47
    return-void
.end method

.method private sendDataToTransport()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 829
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 830
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-direct {p0, v0, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->checkBackupData(Landroid/content/pm/ApplicationInfo;Ljava/io/File;)V

    .line 832
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 833
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 835
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    .line 836
    :goto_30
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->transportPerformBackup(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)I

    move-result v1

    .line 837
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->handleTransportStatus(ILjava/lang/String;J)V

    .line 838
    return v1
.end method

.method private sendDataToTransport(Landroid/content/pm/PackageInfo;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 374
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport()I

    move-result p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    .line 375
    :catch_5
    move-exception v0

    .line 376
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentDataError(Ljava/lang/String;Ljava/io/IOException;)V

    .line 377
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/TaskException;->causedBy(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p1

    throw p1
.end method

.method public static start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZ)Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/UserBackupManagerService;",
            "Lcom/android/server/backup/transport/TransportClient;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/backup/DataChangedJournal;",
            "Landroid/app/backup/IBackupObserver;",
            "Landroid/app/backup/IBackupManagerMonitor;",
            "Lcom/android/server/backup/internal/OnTaskFinishedListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/android/server/backup/keyvalue/KeyValueBackupTask;"
        }
    .end annotation

    .line 214
    new-instance v6, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    move-object v1, p0

    move-object/from16 v0, p5

    move-object/from16 v2, p6

    invoke-direct {v6, p0, v0, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;)V

    .line 216
    new-instance v11, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;

    move-object v0, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZ)V

    .line 228
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key-value-backup-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 230
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onNewThread(Ljava/lang/String;)V

    .line 231
    return-object v11
.end method

.method private startTask()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 395
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->createFullBackupTask(Ljava/util/List;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 396
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->registerTask()V

    .line 398
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 399
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onEmptyQueueAtStart()V

    .line 400
    return-void

    .line 403
    :cond_29
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    const-string v1, "@pm@"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    if-nez v0, :cond_39

    goto :goto_3b

    :cond_39
    move v0, v2

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v0, 0x1

    .line 404
    :goto_3c
    if-eqz v0, :cond_44

    .line 405
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_49

    .line 407
    :cond_44
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onSkipPm()V

    .line 410
    :goto_49
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onQueueReady(Ljava/util/List;)V

    .line 411
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 413
    :try_start_57
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v2, "KVBT.startTask()"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v1

    .line 414
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v2

    .line 415
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportReady(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_8f

    .line 419
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onInitializeTransport(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 421
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v0

    .line 422
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportInitialized(I)V

    .line 423
    if-nez v0, :cond_8a

    goto :goto_8f

    .line 424
    :cond_8a
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v0

    throw v0
    :try_end_8f
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_57 .. :try_end_8f} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_8f} :catch_91

    .line 432
    :cond_8f
    :goto_8f
    nop

    .line 433
    return-void

    .line 429
    :catch_91
    move-exception v0

    .line 430
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onInitializeTransportError(Ljava/lang/Exception;)V

    .line 431
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v0

    throw v0

    .line 427
    :catch_9c
    move-exception v0

    .line 428
    throw v0

    .line 389
    :cond_9e
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onSkipBackup()V

    .line 390
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v0

    throw v0
.end method

.method private transportPerformBackup(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 844
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 845
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 846
    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_13

    .line 847
    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onEmptyData(Landroid/content/pm/PackageInfo;)V

    .line 848
    const/4 p1, 0x0

    return p1

    .line 851
    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    .line 854
    const/high16 v1, 0x10000000

    .line 855
    :try_start_18
    invoke-static {p2, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_5b

    .line 854
    const/4 v1, 0x0

    .line 856
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v3, "KVBT.transportPerformBackup()"

    .line 857
    invoke-virtual {v2, v3}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 858
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportPerformBackup(Ljava/lang/String;)V

    .line 859
    iget-boolean v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    invoke-direct {p0, v3, p3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getPerformBackupFlags(ZZ)I

    move-result v3

    .line 861
    invoke-interface {v2, p1, p2, v3}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result p1

    .line 862
    if-nez p1, :cond_3a

    .line 863
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result p1
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_52

    .line 865
    :cond_3a
    if-eqz p2, :cond_3f

    :try_start_3c
    invoke-static {v1, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_5b

    .line 868
    :cond_3f
    nop

    .line 870
    if-eqz p3, :cond_51

    const/16 p2, -0x3ee

    if-eq p1, p2, :cond_47

    goto :goto_51

    .line 871
    :cond_47
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupNonIncrementalAndNonIncrementalRequired(Ljava/lang/String;)V

    .line 872
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p1

    throw p1

    .line 875
    :cond_51
    :goto_51
    return p1

    .line 854
    :catchall_52
    move-exception p1

    :try_start_53
    throw p1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    .line 865
    :catchall_54
    move-exception p3

    if-eqz p2, :cond_5a

    :try_start_57
    invoke-static {p1, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5a
    throw p3
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5b} :catch_5b

    :catch_5b
    move-exception p1

    .line 866
    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p2, v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupTransportError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 867
    invoke-static {p1}, Lcom/android/server/backup/keyvalue/TaskException;->causedBy(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p1

    throw p1
.end method

.method private triggerTransportInitializationLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQueueLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 615
    const-string v1, "KVBT.triggerTransportInitializationLocked"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 616
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 617
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->deletePmStateFile()V

    .line 618
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->backupNow()V

    .line 619
    return-void
.end method

.method private tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V
    .registers 3

    .line 1091
    if-eqz p1, :cond_c

    .line 1093
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 1096
    goto :goto_c

    .line 1094
    :catch_6
    move-exception p1

    .line 1095
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p1, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onCloseFileDescriptorError(Ljava/lang/String;)V

    .line 1098
    :cond_c
    :goto_c
    return-void
.end method

.method private unregisterTask()V
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 334
    return-void
.end method

.method private writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 779
    iget v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    invoke-static {p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v0

    .line 780
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_widget"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 781
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    .line 782
    if-nez p2, :cond_27

    if-nez v0, :cond_27

    .line 783
    return-void

    .line 785
    :cond_27
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, p2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onWriteWidgetData(Z[B)V

    .line 791
    nop

    .line 792
    const/4 v2, 0x0

    if-eqz v0, :cond_61

    .line 793
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->SHA1Checksum([B)Ljava/lang/String;

    move-result-object v3

    .line 794
    if-eqz p2, :cond_62

    .line 797
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 796
    nop

    .line 798
    :try_start_3c
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_5a

    .line 796
    nop

    .line 800
    :try_start_42
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_53

    .line 801
    :try_start_46
    invoke-static {v2, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_5a

    invoke-static {v2, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 802
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_62

    .line 804
    return-void

    .line 796
    :catchall_53
    move-exception p1

    :try_start_54
    throw p1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    .line 801
    :catchall_55
    move-exception v0

    :try_start_56
    invoke-static {p1, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5a

    .line 796
    :catchall_5a
    move-exception p1

    :try_start_5b
    throw p1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    .line 801
    :catchall_5c
    move-exception v0

    invoke-static {p1, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0

    .line 792
    :cond_61
    move-object v3, v2

    .line 809
    :cond_62
    new-instance p2, Landroid/app/backup/BackupDataOutput;

    invoke-direct {p2, p1}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 810
    const-string/jumbo p1, "￭￭widget"

    if-eqz v0, :cond_98

    .line 812
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 811
    nop

    .line 813
    :try_start_72
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_91

    .line 811
    nop

    .line 815
    :try_start_78
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_8a

    .line 816
    :try_start_7b
    invoke-static {v2, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_91

    invoke-static {v2, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 818
    array-length v1, v0

    invoke-virtual {p2, p1, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 819
    array-length p1, v0

    invoke-virtual {p2, v0, p1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto :goto_9f

    .line 811
    :catchall_8a
    move-exception p1

    :try_start_8b
    throw p1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8c

    .line 816
    :catchall_8c
    move-exception p2

    :try_start_8d
    invoke-static {p1, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p2
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_91

    .line 811
    :catchall_91
    move-exception p1

    :try_start_92
    throw p1
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_93

    .line 816
    :catchall_93
    move-exception p2

    invoke-static {p1, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p2

    .line 822
    :cond_98
    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 823
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 825
    :goto_9f
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 1

    .line 382
    return-void
.end method

.method public handleCancel(Z)V
    .registers 3

    .line 977
    const-string v0, "Can\'t partially cancel a key-value backup task"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 978
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->markCancel()V

    .line 979
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->waitCancel()V

    .line 980
    return-void
.end method

.method public synthetic lambda$extractAgentData$0$KeyValueBackupTask(Landroid/app/IBackupAgent;JILandroid/app/backup/IBackupCallback;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 706
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    move-object v0, p1

    move-wide v4, p2

    move-object v6, p5

    move v7, p4

    invoke-interface/range {v0 .. v7}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V

    return-void
.end method

.method public markCancel()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 985
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onCancel()V

    .line 986
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 987
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    .line 988
    if-eqz v0, :cond_f

    .line 989
    invoke-virtual {v0}, Lcom/android/server/backup/remote/RemoteCall;->cancel()V

    .line 991
    :cond_f
    return-void
.end method

.method public operationComplete(J)V
    .registers 3

    .line 385
    return-void
.end method

.method public run()V
    .registers 4

    .line 338
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    .line 342
    nop

    .line 344
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->startTask()V

    .line 345
    :goto_c
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    iget-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    if-nez v1, :cond_3d

    .line 346
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_20
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_9 .. :try_end_20} :catch_3e

    .line 348
    :try_start_20
    const-string v2, "@pm@"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 349
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->backupPm()V

    goto :goto_2f

    .line 351
    :cond_2c
    invoke-direct {p0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->backupPackage(Ljava/lang/String;)V
    :try_end_2f
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_20 .. :try_end_2f} :catch_30
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_20 .. :try_end_2f} :catch_3e

    .line 358
    :goto_2f
    goto :goto_3c

    .line 353
    :catch_30
    move-exception v2

    .line 354
    :try_start_31
    invoke-virtual {v2}, Lcom/android/server/backup/keyvalue/AgentException;->isTransitory()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 356
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    :try_end_3c
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_31 .. :try_end_3c} :catch_3e

    .line 359
    :cond_3c
    :goto_3c
    goto :goto_c

    .line 366
    :cond_3d
    goto :goto_53

    .line 360
    :catch_3e
    move-exception v0

    .line 361
    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/TaskException;->isStateCompromised()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 362
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 364
    :cond_4c
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->revertTask()V

    .line 365
    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/TaskException;->getStatus()I

    move-result v0

    .line 367
    :goto_53
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->finishTask(I)V

    .line 368
    return-void
.end method

.method public waitCancel()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 996
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 997
    return-void
.end method
