.class public Lcom/android/server/backup/FullBackupJob;
.super Landroid/app/job/JobService;
.source "FullBackupJob.java"


# static fields
.field public static final MAX_JOB_ID:I = 0x31fdd38
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MIN_JOB_ID:I = 0x31fd950
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final USER_ID_EXTRA_KEY:Ljava/lang/String; = "userId"

.field private static sIdleService:Landroid/content/ComponentName;


# instance fields
.field private final mParamsForUser:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mParamsForUser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 39
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/backup/FullBackupJob;

    .line 40
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/backup/FullBackupJob;->sIdleService:Landroid/content/ComponentName;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    return-void
.end method

.method public static cancel(ILandroid/content/Context;)V
    .registers 4
    .param p0, "userId"  # I
    .param p1, "ctx"  # Landroid/content/Context;

    .line 66
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 68
    .local v0, "js":Landroid/app/job/JobScheduler;
    invoke-static {p0}, Lcom/android/server/backup/FullBackupJob;->getJobIdForUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 69
    return-void
.end method

.method private static getJobIdForUserId(I)I
    .registers 3
    .param p0, "userId"  # I

    .line 113
    const v0, 0x31fd950

    const v1, 0x31fdd38

    invoke-static {v0, v1, p0}, Lcom/android/server/backup/JobIdManager;->getJobIdForUserId(III)I

    move-result v0

    return v0
.end method

.method public static schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V
    .registers 9
    .param p0, "userId"  # I
    .param p1, "ctx"  # Landroid/content/Context;
    .param p2, "minDelay"  # J
    .param p4, "constants"  # Lcom/android/server/backup/BackupManagerConstants;

    .line 47
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 48
    .local v0, "js":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-static {p0}, Lcom/android/server/backup/FullBackupJob;->getJobIdForUserId(I)I

    move-result v2

    sget-object v3, Lcom/android/server/backup/FullBackupJob;->sIdleService:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 49
    .local v1, "builder":Landroid/app/job/JobInfo$Builder;
    monitor-enter p4

    .line 50
    const/4 v2, 0x1

    :try_start_16
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 51
    invoke-virtual {p4}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupRequiredNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 52
    invoke-virtual {p4}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupRequireCharging()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 53
    monitor-exit p4
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_49

    .line 54
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_33

    .line 55
    invoke-virtual {v1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 58
    :cond_33
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v2, "extraInfo":Landroid/os/Bundle;
    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;

    .line 62
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 63
    return-void

    .line 53
    .end local v2  # "extraInfo":Landroid/os/Bundle;
    :catchall_49
    move-exception v2

    :try_start_4a
    monitor-exit p4
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v2
.end method


# virtual methods
.method public finishBackupPass(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 73
    iget-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    monitor-enter v0

    .line 74
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobParameters;

    .line 75
    .local v1, "jobParameters":Landroid/app/job/JobParameters;
    if-eqz v1, :cond_16

    .line 76
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/backup/FullBackupJob;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 77
    iget-object v2, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 79
    .end local v1  # "jobParameters":Landroid/app/job/JobParameters;
    :cond_16
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 5
    .param p1, "params"  # Landroid/app/job/JobParameters;

    .line 86
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 88
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    monitor-enter v1

    .line 89
    :try_start_e
    iget-object v2, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_1d

    .line 92
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/Trampoline;

    move-result-object v1

    .line 93
    .local v1, "service":Lcom/android/server/backup/Trampoline;
    invoke-virtual {v1, v0, p0}, Lcom/android/server/backup/Trampoline;->beginFullBackup(ILcom/android/server/backup/FullBackupJob;)Z

    move-result v2

    return v2

    .line 90
    .end local v1  # "service":Lcom/android/server/backup/Trampoline;
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 6
    .param p1, "params"  # Landroid/app/job/JobParameters;

    .line 98
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 100
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    monitor-enter v1

    .line 101
    :try_start_e
    iget-object v2, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_19

    .line 102
    monitor-exit v1

    return v3

    .line 104
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_22

    .line 106
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/Trampoline;

    move-result-object v1

    .line 107
    .local v1, "service":Lcom/android/server/backup/Trampoline;
    invoke-virtual {v1, v0}, Lcom/android/server/backup/Trampoline;->endFullBackup(I)V

    .line 109
    return v3

    .line 104
    .end local v1  # "service":Lcom/android/server/backup/Trampoline;
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2
.end method
