.class public Lcom/android/server/MountServiceIdler;
.super Landroid/app/job/JobService;
.source "MountServiceIdler.java"


# static fields
.field private static MOUNT_JOB_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MountServiceIdler"

.field private static sIdleService:Landroid/content/ComponentName;


# instance fields
.field private mFinishCallback:Ljava/lang/Runnable;

.field private mJobParams:Landroid/app/job/JobParameters;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 35
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/MountServiceIdler;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    .line 38
    const/16 v0, 0x328

    sput v0, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 42
    new-instance v0, Lcom/android/server/MountServiceIdler$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountServiceIdler$1;-><init>(Lcom/android/server/MountServiceIdler;)V

    iput-object v0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MountServiceIdler;)Ljava/lang/Runnable;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/MountServiceIdler;)Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/server/MountServiceIdler;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/MountServiceIdler;)Landroid/app/job/JobParameters;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/android/server/MountServiceIdler;->mJobParams:Landroid/app/job/JobParameters;

    return-object p0
.end method

.method private static offsetFromTodayMidnight(II)Ljava/util/Calendar;
    .registers 5

    .line 121
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 123
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 124
    const/4 p1, 0x0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 125
    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 126
    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 127
    const/4 p1, 0x5

    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->add(II)V

    .line 128
    return-object v0
.end method

.method public static scheduleIdlePass(Landroid/content/Context;)V
    .registers 11

    .line 100
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 102
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/MountServiceIdler;->offsetFromTodayMidnight(II)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 103
    const/4 v4, 0x4

    invoke-static {v1, v4}, Lcom/android/server/MountServiceIdler;->offsetFromTodayMidnight(II)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 104
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/MountServiceIdler;->offsetFromTodayMidnight(II)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v8, v2

    if-lez v0, :cond_3d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gez v0, :cond_3d

    .line 108
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    goto :goto_43

    .line 110
    :cond_3d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v6, v2

    .line 113
    :goto_43
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    sget v4, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    sget-object v5, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    invoke-direct {v0, v4, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 114
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 115
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 116
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 117
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 118
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 63
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->performIdleMaintenance()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 65
    goto :goto_9

    .line 64
    :catch_8
    move-exception v0

    .line 70
    :goto_9
    iput-object p1, p0, Lcom/android/server/MountServiceIdler;->mJobParams:Landroid/app/job/JobParameters;

    .line 71
    sget-object p1, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 72
    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    .line 73
    iget-object v1, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    monitor-enter v1

    .line 74
    :try_start_13
    iput-boolean v0, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    .line 75
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1c

    .line 76
    iget-object v1, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 75
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1

    .line 78
    :cond_1f
    :goto_1f
    if-eqz p1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 86
    sget-object p1, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 87
    const/4 v0, 0x0

    if-eqz p1, :cond_14

    .line 88
    iget-object v1, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    .line 89
    iget-object p1, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    monitor-enter p1

    .line 90
    :try_start_d
    iput-boolean v0, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    .line 91
    monitor-exit p1

    goto :goto_14

    :catchall_11
    move-exception v0

    monitor-exit p1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_11

    throw v0

    .line 93
    :cond_14
    :goto_14
    return v0
.end method
