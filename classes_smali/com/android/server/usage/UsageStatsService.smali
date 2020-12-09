.class public Lcom/android/server/usage/UsageStatsService;
.super Lcom/android/server/SystemService;
.source "UsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsService$LocalService;,
        Lcom/android/server/usage/UsageStatsService$BinderService;,
        Lcom/android/server/usage/UsageStatsService$H;,
        Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;,
        Lcom/android/server/usage/UsageStatsService$ActivityData;
    }
.end annotation


# static fields
.field static final COMPRESS_TIME:Z = false

.field static final DEBUG:Z = false

.field private static final ENABLE_KERNEL_UPDATES:Z = true

.field public static final ENABLE_TIME_CHANGE_CORRECTION:Z

.field private static final FLUSH_INTERVAL:J = 0x124f80L

.field private static final KERNEL_COUNTER_FILE:Ljava/io/File;

.field static final MSG_FLUSH_TO_DISK:I = 0x1

.field static final MSG_REMOVE_USER:I = 0x2

.field static final MSG_REPORT_EVENT:I = 0x0

.field static final MSG_REPORT_EVENT_TO_ALL_USERID:I = 0x4

.field static final MSG_UID_STATE_CHANGED:I = 0x3

.field static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final TEN_SECONDS:J = 0x2710L

.field private static final TIME_CHANGE_THRESHOLD_MILLIS:J = 0x7d0L

.field private static final TOKEN_DELIMITER:C = '/'

.field private static final TWENTY_MINUTES:J = 0x124f80L


# instance fields
.field mAppOps:Landroid/app/AppOpsManager;

.field mAppStandby:Lcom/android/server/usage/AppStandbyController;

.field mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field mRealTimeSnapshot:J

.field private mStandbyChangeListener:Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

.field mSystemTimeSnapshot:J

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private final mUidToKernelCounter:Landroid/util/SparseIntArray;

.field final mUsageReporters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mUsageSource:I

.field private mUsageStatsDir:Ljava/io/File;

.field mUserManager:Landroid/os/UserManager;

.field private final mUserState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/UserUsageStatsService;",
            ">;"
        }
    .end annotation
.end field

.field final mVisibleActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/UsageStatsService$ActivityData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 100
    nop

    .line 101
    const-string/jumbo v0, "persist.debug.time_correction"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    .line 112
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/uid_procstat/set"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 134
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 135
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    .line 147
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    .line 148
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    .line 159
    new-instance p1, Lcom/android/server/usage/UsageStatsService$1;

    invoke-direct {p1, p0}, Lcom/android/server/usage/UsageStatsService$1;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 309
    new-instance p1, Lcom/android/server/usage/UsageStatsService$3;

    invoke-direct {p1, p0}, Lcom/android/server/usage/UsageStatsService$3;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Landroid/app/IUidObserver;

    .line 179
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/usage/UsageStatsService;)V
    .registers 1

    .line 96
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->readUsageSourceSetting()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/usage/UsageStatsService;)J
    .registers 3

    .line 96
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/server/usage/UsageStatsService;IJ)Lcom/android/server/usage/UserUsageStatsService;
    .registers 4

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$700()Ljava/io/File;
    .registers 1

    .line 96
    sget-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 1

    .line 96
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/usage/UsageStatsService;II)Z
    .registers 3

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->shouldObfuscateInstantAppsForCaller(II)Z

    move-result p0

    return p0
.end method

.method private buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 725
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private checkAndGetTimeLocked()J
    .registers 13

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 410
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 411
    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v4, v6

    .line 412
    sub-long v6, v0, v4

    .line 413
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x7d0

    cmp-long v8, v8, v10

    if-lez v8, :cond_58

    sget-boolean v8, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    if-eqz v8, :cond_58

    .line 416
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Time changed in UsageStats by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x3e8

    div-long/2addr v6, v9

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " seconds"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UsageStatsService"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 418
    const/4 v7, 0x0

    :goto_44
    if-ge v7, v6, :cond_54

    .line 419
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/usage/UserUsageStatsService;

    .line 420
    invoke-virtual {v8, v4, v5, v0, v1}, Lcom/android/server/usage/UserUsageStatsService;->onTimeChanged(JJ)V

    .line 418
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    .line 422
    :cond_54
    iput-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 423
    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 425
    :cond_58
    return-wide v0
.end method

.method private cleanUpRemovedUsersLocked()V
    .registers 7

    .line 354
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_59

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_59

    .line 359
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 360
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 361
    if-nez v2, :cond_1d

    .line 363
    return-void

    .line 366
    :cond_1d
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 368
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 369
    const/4 v3, 0x0

    move v4, v3

    :goto_2a
    if-ge v4, v2, :cond_3e

    .line 370
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 371
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 374
    :cond_3e
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 375
    nop

    :goto_43
    if-ge v3, v0, :cond_58

    .line 376
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 375
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 378
    :cond_58
    return-void

    .line 356
    :cond_59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There can\'t be no users"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .registers 6

    .line 433
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 434
    return-void
.end method

.method private static deleteRecursively(Ljava/io/File;)V
    .registers 5

    .line 381
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_12

    .line 383
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 384
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 383
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 388
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UsageStatsService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_2e
    return-void
.end method

.method private flushToDiskLocked()V
    .registers 5

    .line 732
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 733
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_22

    .line 734
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserUsageStatsService;

    .line 735
    invoke-virtual {v2}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 736
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/usage/AppStandbyController;->flushToDisk(I)V

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 738
    :cond_22
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->flushDurationsToDisk()V

    .line 740
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 741
    return-void
.end method

.method private getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_e

    .line 280
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 282
    :cond_e
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object v0
.end method

.method private getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;
    .registers 9

    .line 395
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    .line 396
    if-nez v0, :cond_26

    .line 397
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    .line 398
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/server/usage/UserUsageStatsService;-><init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V

    .line 399
    invoke-virtual {v0, p2, p3}, Lcom/android/server/usage/UserUsageStatsService;->init(J)V

    .line 400
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 402
    :cond_26
    return-object v0
.end method

.method private readUsageSourceSetting()V
    .registers 5

    .line 286
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_time_limit_usage_source"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    .line 289
    monitor-exit v0

    .line 290
    return-void

    .line 289
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private shouldObfuscateInstantAppsForCaller(II)Z
    .registers 4

    .line 350
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->canAccessInstantApps(II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static validRange(JJJ)Z
    .registers 6

    .line 720
    cmp-long p0, p2, p0

    if-gtz p0, :cond_a

    cmp-long p0, p2, p4

    if-gez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 14

    .line 747
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 748
    :try_start_3
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 750
    nop

    .line 751
    nop

    .line 752
    nop

    .line 754
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_187

    .line 755
    move v4, v3

    move v5, v4

    move v6, v5

    :goto_14
    array-length v7, p1

    if-ge v4, v7, :cond_185

    .line 756
    aget-object v7, p1, v4

    .line 757
    const-string v8, "--checkin"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_25

    .line 758
    move v5, v9

    goto/16 :goto_181

    .line 759
    :cond_25
    const-string v8, "-c"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 760
    move v6, v9

    goto/16 :goto_181

    .line 761
    :cond_30
    const-string v8, "flush"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 762
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 763
    const-string p1, "Flushed stats to disk"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    monitor-exit v0

    return-void

    .line 765
    :cond_42
    const-string v8, "is-app-standby-enabled"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 766
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    iget-boolean p1, p1, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 767
    monitor-exit v0

    return-void

    .line 768
    :cond_53
    const-string v8, "apptimelimit"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_73

    .line 769
    add-int/2addr v4, v9

    array-length v1, p1

    if-lt v4, v1, :cond_65

    .line 770
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p1, v2, p2}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_71

    .line 772
    :cond_65
    array-length v1, p1

    .line 773
    invoke-static {p1, v4, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 774
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 776
    :goto_71
    monitor-exit v0

    return-void

    .line 777
    :cond_73
    const-string v8, "file"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f9

    .line 778
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v5, "  "

    invoke-direct {v1, p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 779
    add-int/lit8 p2, v4, 0x1

    array-length v5, p1

    if-lt p2, v5, :cond_c0

    .line 781
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 782
    nop

    :goto_8e
    if-ge v3, p1, :cond_bf

    .line 783
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 784
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 785
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {p2, v1, v2}, Lcom/android/server/usage/UserUsageStatsService;->dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 786
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_bc
    .catchall {:try_start_3 .. :try_end_bc} :catchall_1f2

    .line 782
    add-int/lit8 v3, v3, 0x1

    goto :goto_8e

    .line 788
    :cond_bf
    goto :goto_ef

    .line 791
    :cond_c0
    :try_start_c0
    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_ca
    .catch Ljava/lang/NumberFormatException; {:try_start_c0 .. :try_end_ca} :catch_f1
    .catchall {:try_start_c0 .. :try_end_ca} :catchall_1f2

    .line 795
    nop

    .line 796
    :try_start_cb
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_db

    .line 797
    const-string/jumbo p1, "the specified user does not exist."

    invoke-virtual {v1, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 798
    monitor-exit v0

    return-void

    .line 800
    :cond_db
    add-int/lit8 v4, v4, 0x2

    array-length v2, p1

    invoke-static {p1, v4, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 803
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {p2, v1, p1}, Lcom/android/server/usage/UserUsageStatsService;->dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 805
    :goto_ef
    monitor-exit v0

    return-void

    .line 792
    :catch_f1
    move-exception p1

    .line 793
    const-string p1, "invalid user specified."

    invoke-virtual {v1, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 794
    monitor-exit v0

    return-void

    .line 806
    :cond_f9
    const-string v8, "database-info"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_175

    .line 807
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 808
    add-int/2addr v4, v9

    array-length p2, p1

    if-lt v4, p2, :cond_145

    .line 810
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 811
    nop

    :goto_113
    if-ge v3, p1, :cond_144

    .line 812
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 814
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {p2, v1}, Lcom/android/server/usage/UserUsageStatsService;->dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 815
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_141
    .catchall {:try_start_cb .. :try_end_141} :catchall_1f2

    .line 811
    add-int/lit8 v3, v3, 0x1

    goto :goto_113

    .line 817
    :cond_144
    goto :goto_16b

    .line 820
    :cond_145
    :try_start_145
    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_14f
    .catch Ljava/lang/NumberFormatException; {:try_start_145 .. :try_end_14f} :catch_16d
    .catchall {:try_start_145 .. :try_end_14f} :catchall_1f2

    .line 824
    nop

    .line 825
    :try_start_150
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-gez p2, :cond_160

    .line 826
    const-string/jumbo p1, "the specified user does not exist."

    invoke-virtual {v1, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 827
    monitor-exit v0

    return-void

    .line 830
    :cond_160
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {p1, v1}, Lcom/android/server/usage/UserUsageStatsService;->dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 832
    :goto_16b
    monitor-exit v0

    return-void

    .line 821
    :catch_16d
    move-exception p1

    .line 822
    const-string p1, "invalid user specified."

    invoke-virtual {v1, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 823
    monitor-exit v0

    return-void

    .line 833
    :cond_175
    if-eqz v7, :cond_181

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_181

    .line 835
    nop

    .line 836
    goto :goto_18a

    .line 755
    :cond_181
    :goto_181
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_14

    :cond_185
    move-object v7, v2

    goto :goto_18a

    .line 754
    :cond_187
    move-object v7, v2

    move v5, v3

    move v6, v5

    .line 841
    :goto_18a
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 842
    nop

    :goto_191
    if-ge v3, v4, :cond_1d0

    .line 843
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 844
    const-string/jumbo v9, "user"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 845
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 846
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 847
    if-eqz v5, :cond_1b7

    .line 848
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v9, v1}, Lcom/android/server/usage/UserUsageStatsService;->checkin(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_1c5

    .line 850
    :cond_1b7
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v9, v1, v7, v6}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Z)V

    .line 851
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 853
    :goto_1c5
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v9, v1, v8, v7}, Lcom/android/server/usage/AppStandbyController;->dumpUser(Lcom/android/internal/util/IndentingPrintWriter;ILjava/lang/String;)V

    .line 854
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 842
    add-int/lit8 v3, v3, 0x1

    goto :goto_191

    .line 857
    :cond_1d0
    if-nez v7, :cond_1da

    .line 858
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 859
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/usage/AppStandbyController;->dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 862
    :cond_1da
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 863
    const-string p1, "Usage Source"

    iget v3, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    invoke-static {v3}, Landroid/app/usage/UsageStatsManager;->usageSourceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 864
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 866
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p1, v2, p2}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 867
    monitor-exit v0

    .line 868
    return-void

    .line 867
    :catchall_1f2
    move-exception p1

    monitor-exit v0
    :try_end_1f4
    .catchall {:try_start_150 .. :try_end_1f4} :catchall_1f2

    throw p1
.end method

.method flushToDisk()V
    .registers 6

    .line 593
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 599
    :try_start_3
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    const/16 v2, 0x19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 600
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    .line 601
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 602
    monitor-exit v0

    .line 603
    return-void

    .line 602
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public onBootPhase(I)V
    .registers 6

    .line 254
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController;->onBootPhase(I)V

    .line 255
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_50

    .line 257
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    .line 259
    nop

    .line 260
    const-string p1, "deviceidle"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 259
    invoke-static {p1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 262
    sget-object p1, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 264
    :try_start_21
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2d} :catch_2e

    .line 270
    goto :goto_4d

    .line 268
    :catch_2e
    move-exception p1

    .line 269
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 272
    :cond_35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing procfs interface: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsageStatsService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_4d
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->readUsageSourceSetting()V

    .line 276
    :cond_50
    return-void
.end method

.method public onNewUpdate(I)V
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController;->initializeDefaultsForSystemApps(I)V

    .line 347
    return-void
.end method

.method public onStart()V
    .registers 8

    .line 183
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 184
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    .line 185
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 186
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 187
    new-instance v0, Lcom/android/server/usage/UsageStatsService$H;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$H;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 189
    new-instance v0, Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/AppStandbyController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 191
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController;

    new-instance v1, Lcom/android/server/usage/UsageStatsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/usage/UsageStatsService$2;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 223
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/AppTimeLimitController;-><init>(Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 225
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController;->addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 226
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "usagestats"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    .line 228
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 229
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 234
    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 235
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_b0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->cleanUpRemovedUsersLocked()V

    .line 241
    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_dc

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 246
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v2, Lcom/android/server/usage/UsageStatsService$LocalService;

    invoke-direct {v2, p0, v0}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usage/UsageStatsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 247
    new-instance v1, Lcom/android/server/usage/UsageStatsService$BinderService;

    invoke-direct {v1, p0, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    const-string/jumbo v0, "usagestats"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usage/UsageStatsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 249
    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    .line 250
    return-void

    .line 241
    :catchall_dc
    move-exception v0

    :try_start_dd
    monitor-exit v1
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    throw v0

    .line 230
    :cond_df
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usage stats directory does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    .line 231
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStatsReloaded()V
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    .line 342
    return-void
.end method

.method public onStatsUpdated()V
    .registers 5

    .line 336
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x124f80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 337
    return-void
.end method

.method onUserRemoved(I)V
    .registers 6

    .line 609
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_3
    const-string v1, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and all data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 612
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppStandbyController;->onUserRemoved(I)V

    .line 613
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppTimeLimitController;->onUserRemoved(I)V

    .line 614
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->cleanUpRemovedUsersLocked()V

    .line 615
    monitor-exit v0

    .line 616
    return-void

    .line 615
    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p1
.end method

.method prepareForPossibleShutdown()V
    .registers 5

    .line 460
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/16 v3, 0x1a

    invoke-direct {v0, v3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 461
    const-string v1, "android"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 462
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 463
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 464
    return-void
.end method

.method queryConfigurationStats(IIJJ)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 657
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v7

    .line 658
    move-wide v1, v7

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v1

    if-nez v1, :cond_13

    .line 659
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 662
    :cond_13
    nop

    .line 663
    invoke-direct {p0, p1, v7, v8}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    .line 664
    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryConfigurationStats(IJJ)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 665
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

.method queryEventStats(IIJJ)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .line 673
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 674
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v7

    .line 675
    move-wide v1, v7

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v1

    if-nez v1, :cond_13

    .line 676
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 679
    :cond_13
    nop

    .line 680
    invoke-direct {p0, p1, v7, v8}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    .line 681
    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryEventStats(IJJ)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 682
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

.method queryEvents(IJJZ)Landroid/app/usage/UsageEvents;
    .registers 16

    .line 690
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v7

    .line 692
    move-wide v1, v7

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v1

    if-nez v1, :cond_13

    .line 693
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 696
    :cond_13
    nop

    .line 697
    invoke-direct {p0, p1, v7, v8}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    .line 698
    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJZ)Landroid/app/usage/UsageEvents;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 699
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

.method queryEventsForPackage(IJJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;
    .registers 25

    .line 707
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 708
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v8

    .line 709
    move-wide v2, v8

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v2

    if-nez v2, :cond_17

    .line 710
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 713
    :cond_17
    nop

    .line 714
    move/from16 v2, p1

    invoke-direct {v0, v2, v8, v9}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v10

    .line 715
    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    move-object/from16 v15, p6

    move/from16 v16, p7

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/usage/UserUsageStatsService;->queryEventsForPackage(JJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 716
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method queryUsageStats(IIJJZ)Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJZ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 623
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 624
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v9

    .line 625
    move-wide v3, v9

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_19

    .line 626
    monitor-exit v2

    return-object v4

    .line 629
    :cond_19
    nop

    .line 630
    invoke-direct {v0, v1, v9, v10}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v11

    .line 631
    move/from16 v12, p2

    move-wide/from16 v13, p3

    move-wide/from16 v15, p5

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/usage/UserUsageStatsService;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v3

    .line 632
    if-nez v3, :cond_2c

    .line 633
    monitor-exit v2

    return-object v4

    .line 638
    :cond_2c
    if-eqz p7, :cond_50

    .line 639
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_34
    if-ltz v4, :cond_50

    .line 640
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    .line 641
    iget-object v6, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v7, v5, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 642
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getObfuscatedForInstantApp()Landroid/app/usage/UsageStats;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_4d
    add-int/lit8 v4, v4, -0x1

    goto :goto_34

    .line 647
    :cond_50
    monitor-exit v2

    return-object v3

    .line 648
    :catchall_52
    move-exception v0

    monitor-exit v2
    :try_end_54
    .catchall {:try_start_7 .. :try_end_54} :catchall_52

    throw v0
.end method

.method registerAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    .registers 20

    .line 1606
    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/usage/AppTimeLimitController;->addAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V

    .line 1608
    return-void
.end method

.method registerAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    .registers 16

    .line 1584
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppTimeLimitController;->addAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V

    .line 1587
    return-void
.end method

.method registerUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .registers 22

    .line 1596
    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/usage/AppTimeLimitController;->addUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 1598
    return-void
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;I)V
    .registers 19

    .line 470
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    iget-object v4, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 471
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v5

    .line 472
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 473
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsService;->convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 475
    iget-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/4 v9, 0x1

    if-eqz v0, :cond_28

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v10, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 476
    invoke-virtual {v0, v3, v10}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 477
    iget v0, v2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    or-int/2addr v0, v9

    iput v0, v2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 480
    :cond_28
    iget v0, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v10, 0x2

    if-eq v0, v9, :cond_123

    if-eq v0, v10, :cond_ca

    const/16 v9, 0x17

    if-eq v0, v9, :cond_3b

    const/16 v11, 0x18

    if-eq v0, v11, :cond_39

    goto/16 :goto_15e

    .line 516
    :cond_39
    iput v9, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 519
    :cond_3b
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v9, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 520
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/usage/UsageStatsService$ActivityData;

    .line 521
    if-nez v9, :cond_4a

    .line 523
    monitor-exit v4

    return-void

    .line 527
    :cond_4a
    iget-object v11, v1, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v11
    :try_end_4d
    .catchall {:try_start_9 .. :try_end_4d} :catchall_16d

    .line 528
    :try_start_4d
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    iget v12, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/util/ArraySet;

    .line 529
    monitor-exit v11
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_c7

    .line 530
    if-eqz v12, :cond_96

    .line 531
    :try_start_5b
    monitor-enter v12
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_16d

    .line 532
    :try_start_5c
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v11

    .line 534
    const/4 v0, 0x0

    move v13, v0

    :goto_62
    if-ge v13, v11, :cond_91

    .line 535
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_6a
    .catchall {:try_start_5c .. :try_end_6a} :catchall_93

    .line 537
    :try_start_6a
    iget-object v14, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v15, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 538
    invoke-direct {v1, v15, v0}, Lcom/android/server/usage/UsageStatsService;->buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-virtual {v14, v0, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_75
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6a .. :try_end_75} :catch_76
    .catchall {:try_start_6a .. :try_end_75} :catchall_93

    .line 542
    goto :goto_8d

    .line 539
    :catch_76
    move-exception v0

    .line 540
    :try_start_77
    const-string v14, "UsageStatsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to stop usage for during reporter death: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :goto_8d
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x2

    goto :goto_62

    .line 544
    :cond_91
    monitor-exit v12

    goto :goto_96

    :catchall_93
    move-exception v0

    monitor-exit v12
    :try_end_95
    .catchall {:try_start_77 .. :try_end_95} :catchall_93

    :try_start_95
    throw v0

    .line 546
    :cond_96
    :goto_96
    iget-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-nez v0, :cond_a6

    .line 548
    invoke-static {v9}, Lcom/android/server/usage/UsageStatsService$ActivityData;->access$400(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 549
    invoke-static {v9}, Lcom/android/server/usage/UsageStatsService$ActivityData;->access$500(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;
    :try_end_a6
    .catchall {:try_start_95 .. :try_end_a6} :catchall_16d

    .line 552
    :cond_a6
    :try_start_a6
    iget v0, v1, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    const/4 v9, 0x2

    if-eq v0, v9, :cond_b3

    .line 558
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v9, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {v0, v9, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V

    goto :goto_bb

    .line 554
    :cond_b3
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v9, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v9, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_ba
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a6 .. :try_end_ba} :catch_bd
    .catchall {:try_start_a6 .. :try_end_ba} :catchall_16d

    .line 555
    nop

    .line 563
    :goto_bb
    goto/16 :goto_15e

    .line 561
    :catch_bd
    move-exception v0

    .line 562
    :try_start_be
    const-string v9, "UsageStatsService"

    const-string v10, "Failed to note usage stop"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c5
    .catchall {:try_start_be .. :try_end_c5} :catchall_16d

    goto/16 :goto_15e

    .line 529
    :catchall_c7
    move-exception v0

    :try_start_c8
    monitor-exit v11
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    :try_start_c9
    throw v0

    .line 501
    :cond_ca
    iget-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-nez v0, :cond_15e

    .line 503
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v9, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UsageStatsService$ActivityData;

    .line 504
    if-nez v0, :cond_116

    .line 505
    const-string v0, "UsageStatsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected activity event reported! ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " event : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " instanceId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_122

    .line 509
    :cond_116
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService$ActivityData;->access$400(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 510
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService$ActivityData;->access$500(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 512
    :goto_122
    goto :goto_15e

    .line 483
    :cond_123
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v9, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12e

    goto :goto_15e

    .line 484
    :cond_12e
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v9, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    new-instance v10, Lcom/android/server/usage/UsageStatsService$ActivityData;

    iget-object v11, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    iget-object v12, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/android/server/usage/UsageStatsService$ActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/usage/UsageStatsService$1;)V

    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_13f
    .catchall {:try_start_c9 .. :try_end_13f} :catchall_16d

    .line 487
    :try_start_13f
    iget v0, v1, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    const/4 v9, 0x2

    if-eq v0, v9, :cond_14c

    .line 493
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v9, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {v0, v9, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;I)V

    goto :goto_154

    .line 489
    :cond_14c
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v9, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v9, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;I)V
    :try_end_153
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13f .. :try_end_153} :catch_155
    .catchall {:try_start_13f .. :try_end_153} :catchall_16d

    .line 490
    nop

    .line 498
    :goto_154
    goto :goto_15e

    .line 496
    :catch_155
    move-exception v0

    .line 497
    :try_start_156
    const-string v9, "UsageStatsService"

    const-string v10, "Failed to note usage start"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    nop

    .line 567
    :cond_15e
    :goto_15e
    nop

    .line 568
    invoke-direct {v1, v3, v5, v6}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    .line 569
    invoke-virtual {v0, v2}, Lcom/android/server/usage/UserUsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 571
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, v2, v7, v8, v3}, Lcom/android/server/usage/AppStandbyController;->reportEvent(Landroid/app/usage/UsageEvents$Event;JI)V

    .line 572
    monitor-exit v4

    .line 573
    return-void

    .line 572
    :catchall_16d
    move-exception v0

    monitor-exit v4
    :try_end_16f
    .catchall {:try_start_156 .. :try_end_16f} :catchall_16d

    throw v0
.end method

.method reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V
    .registers 7

    .line 580
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 582
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1d

    .line 583
    new-instance v3, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v3, p1}, Landroid/app/usage/UsageEvents$Event;-><init>(Landroid/app/usage/UsageEvents$Event;)V

    .line 584
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    .line 582
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 586
    :cond_1d
    monitor-exit v0

    .line 587
    return-void

    .line 586
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method shutdown()V
    .registers 6

    .line 440
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    const/16 v2, 0x1a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 443
    const-string v2, "android"

    iput-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 445
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    .line 446
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 447
    monitor-exit v0

    .line 448
    return-void

    .line 447
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method unregisterAppUsageLimitObserver(III)V
    .registers 5

    .line 1611
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeAppUsageLimitObserver(III)V

    .line 1612
    return-void
.end method

.method unregisterAppUsageObserver(III)V
    .registers 5

    .line 1590
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeAppUsageObserver(III)V

    .line 1591
    return-void
.end method

.method unregisterUsageSessionObserver(III)V
    .registers 5

    .line 1601
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeUsageSessionObserver(III)V

    .line 1602
    return-void
.end method
