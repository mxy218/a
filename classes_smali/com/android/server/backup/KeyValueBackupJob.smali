.class public Lcom/android/server/backup/KeyValueBackupJob;
.super Landroid/app/job/JobService;
.source "KeyValueBackupJob.java"


# static fields
.field private static final MAX_DEFERRAL:J = 0x5265c00L

.field public static final MAX_JOB_ID:I = 0x31fd950
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MIN_JOB_ID:I = 0x31fd568
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "KeyValueBackupJob"

.field private static final USER_ID_EXTRA_KEY:Ljava/lang/String; = "userId"

.field private static sKeyValueJobService:Landroid/content/ComponentName;

.field private static final sNextScheduledForUserId:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "KeyValueBackupJob.class"
        }
    .end annotation
.end field

.field private static final sScheduledForUserId:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "KeyValueBackupJob.class"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 45
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/backup/KeyValueBackupJob;

    .line 46
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sKeyValueJobService:Landroid/content/ComponentName;

    .line 57
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sScheduledForUserId:Landroid/util/SparseBooleanArray;

    .line 59
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduledForUserId:Landroid/util/SparseLongArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static cancel(ILandroid/content/Context;)V
    .registers 4

    .line 115
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    .line 116
    :try_start_3
    const-string v1, "jobscheduler"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    .line 118
    invoke-static {p0}, Lcom/android/server/backup/KeyValueBackupJob;->getJobIdForUserId(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 120
    invoke-static {p0}, Lcom/android/server/backup/KeyValueBackupJob;->clearScheduledForUserId(I)V

    .line 121
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private static clearScheduledForUserId(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "KeyValueBackupJob.class"
        }
    .end annotation

    .line 164
    sget-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sScheduledForUserId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 165
    sget-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduledForUserId:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseLongArray;->delete(I)V

    .line 166
    return-void
.end method

.method private static getJobIdForUserId(I)I
    .registers 3

    .line 169
    const v0, 0x31fd568

    const v1, 0x31fd950

    invoke-static {v0, v1, p0}, Lcom/android/server/backup/JobIdManager;->getJobIdForUserId(III)I

    move-result p0

    return p0
.end method

.method public static isScheduled(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 132
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    .line 133
    :try_start_3
    sget-object v1, Lcom/android/server/backup/KeyValueBackupJob;->sScheduledForUserId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 134
    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public static nextScheduled(I)J
    .registers 4

    .line 125
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    .line 126
    :try_start_3
    sget-object v1, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduledForUserId:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 127
    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public static schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V
    .registers 14

    .line 72
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    .line 73
    :try_start_3
    sget-object v1, Lcom/android/server/backup/KeyValueBackupJob;->sScheduledForUserId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 74
    monitor-exit v0

    return-void

    .line 82
    :cond_d
    monitor-enter p4
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_a3

    .line 83
    :try_start_e
    invoke-virtual {p4}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupIntervalMilliseconds()J

    move-result-wide v1

    .line 84
    invoke-virtual {p4}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupFuzzMilliseconds()J

    move-result-wide v3

    .line 85
    invoke-virtual {p4}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupRequiredNetworkType()I

    move-result v5

    .line 86
    invoke-virtual {p4}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupRequireCharging()Z

    move-result v6

    .line 87
    monitor-exit p4
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_a0

    .line 88
    const-wide/16 v7, 0x0

    cmp-long p4, p2, v7

    if-gtz p4, :cond_31

    .line 89
    :try_start_25
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    long-to-int p3, v3

    invoke-virtual {p2, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    int-to-long p2, p2

    add-long/2addr p2, v1

    .line 92
    :cond_31
    const-string p4, "KeyValueBackupJob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling k/v pass in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    const-wide/16 v7, 0x3c

    div-long/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance p4, Landroid/app/job/JobInfo$Builder;

    invoke-static {p0}, Lcom/android/server/backup/KeyValueBackupJob;->getJobIdForUserId(I)I

    move-result v1

    sget-object v2, Lcom/android/server/backup/KeyValueBackupJob;->sKeyValueJobService:Landroid/content/ComponentName;

    invoke-direct {p4, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 97
    invoke-virtual {p4, p2, p3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p4

    .line 98
    invoke-virtual {p4, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p4

    .line 99
    invoke-virtual {p4, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p4

    const-wide/32 v1, 0x5265c00

    .line 100
    invoke-virtual {p4, v1, v2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p4

    .line 102
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 103
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    invoke-virtual {p4, v1}, Landroid/app/job/JobInfo$Builder;->setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;

    .line 106
    const-string v1, "jobscheduler"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    .line 107
    invoke-virtual {p4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 109
    sget-object p1, Lcom/android/server/backup/KeyValueBackupJob;->sScheduledForUserId:Landroid/util/SparseBooleanArray;

    const/4 p4, 0x1

    invoke-virtual {p1, p0, p4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 110
    sget-object p1, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduledForUserId:Landroid/util/SparseLongArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {p1, p0, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 111
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_25 .. :try_end_9f} :catchall_a3

    .line 112
    return-void

    .line 87
    :catchall_a0
    move-exception p0

    :try_start_a1
    monitor-exit p4
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    :try_start_a2
    throw p0

    .line 111
    :catchall_a3
    move-exception p0

    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a3

    throw p0
.end method

.method public static schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V
    .registers 5

    .line 67
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 68
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    .line 139
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 141
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    .line 142
    :try_start_e
    invoke-static {p1}, Lcom/android/server/backup/KeyValueBackupJob;->clearScheduledForUserId(I)V

    .line 143
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_1e

    .line 146
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/Trampoline;

    move-result-object v0

    .line 148
    :try_start_16
    invoke-virtual {v0, p1}, Lcom/android/server/backup/Trampoline;->backupNowForUser(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 149
    :goto_19
    goto :goto_1c

    :catch_1a
    move-exception p1

    goto :goto_19

    .line 153
    :goto_1c
    const/4 p1, 0x0

    return p1

    .line 143
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    .line 159
    const/4 p1, 0x0

    return p1
.end method
