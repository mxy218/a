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
        Lcom/android/server/usage/UsageStatsService$Receiver;,
        Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;,
        Lcom/android/server/usage/UsageStatsService$ActivityData;
    }
.end annotation


# static fields
.field static final COMPRESS_TIME:Z = false

.field static final DEBUG:Z = false

.field private static final DEFAULT_LAST_PACKAGE:Ljava/lang/String; = "com.meizu.flyme.launcher"

.field private static final ENABLE_KERNEL_UPDATES:Z = true

.field public static final ENABLE_TIME_CHANGE_CORRECTION:Z

.field private static final FLUSH_INTERVAL:J = 0x124f80L

.field private static final INFORM_APP_STATUS_LISTENERS_DELAY:I = 0xea60

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
.field private isScreenOff:Z

.field mAppOps:Landroid/app/AppOpsManager;

.field mAppStandby:Lcom/android/server/usage/AppStandbyController;

.field private mAppStatusInternalListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/usage/UsageStatsService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field mHandler:Landroid/os/Handler;

.field private mLastBackgroundPackage:Ljava/lang/String;

.field private mLastForgroundPackage:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mNotifyBackgroundPackage:Ljava/lang/String;

.field private mNotifyForgroundPackage:Ljava/lang/String;

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

    .line 113
    nop

    .line 114
    const-string/jumbo v0, "persist.debug.time_correction"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    .line 125
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/uid_procstat/set"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 203
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 147
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 148
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    .line 160
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    .line 161
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusInternalListeners:Ljava/util/ArrayList;

    .line 167
    const-string v0, "com.meizu.flyme.launcher"

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLastBackgroundPackage:Ljava/lang/String;

    .line 168
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLastForgroundPackage:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mNotifyForgroundPackage:Ljava/lang/String;

    .line 170
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mNotifyBackgroundPackage:Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->isScreenOff:Z

    .line 184
    new-instance v0, Lcom/android/server/usage/UsageStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsService$1;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 428
    new-instance v0, Lcom/android/server/usage/UsageStatsService$3;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsService$3;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Landroid/app/IUidObserver;

    .line 204
    return-void
.end method

.method static synthetic access$1000()Ljava/io/File;
    .registers 1

    .line 109
    sget-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usage/UsageStatsService;

    .line 109
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mNotifyBackgroundPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usage/UsageStatsService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mNotifyBackgroundPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usage/UsageStatsService;

    .line 109
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLastForgroundPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usage/UsageStatsService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mNotifyForgroundPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usage/UsageStatsService;

    .line 109
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/usage/UsageStatsService;II)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/usage/UsageStatsService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->shouldObfuscateInstantAppsForCaller(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"  # Lcom/android/server/usage/UsageStatsService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usage/UsageStatsService;

    .line 109
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/usage/UsageStatsService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/usage/UsageStatsService;

    .line 109
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->readUsageSourceSetting()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/usage/UsageStatsService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/usage/UsageStatsService;

    .line 109
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/server/usage/UsageStatsService;IJ)Lcom/android/server/usage/UserUsageStatsService;
    .registers 5
    .param p0, "x0"  # Lcom/android/server/usage/UsageStatsService;
    .param p1, "x1"  # I
    .param p2, "x2"  # J

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/usage/UsageStatsService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->isAppForground(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/usage/UsageStatsService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usage/UsageStatsService;

    .line 109
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->isScreenOff:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/usage/UsageStatsService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usage/UsageStatsService;
    .param p1, "x1"  # Z

    .line 109
    iput-boolean p1, p0, Lcom/android/server/usage/UsageStatsService;->isScreenOff:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usage/UsageStatsService;

    .line 109
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$Receiver;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usage/UsageStatsService;
    .param p1, "x1"  # Lcom/android/server/usage/UsageStatsService$Receiver;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->removeFlymeAppUsageListener(Lcom/android/server/usage/UsageStatsService$Receiver;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usage/UsageStatsService;

    .line 109
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "token"  # Ljava/lang/String;

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 983
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 985
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkAndGetTimeLocked()J
    .registers 13

    .line 528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 529
    .local v0, "actualSystemTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 530
    .local v2, "actualRealtime":J
    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v4, v6

    .line 531
    .local v4, "expectedSystemTime":J
    sub-long v6, v0, v4

    .line 532
    .local v6, "diffSystemTime":J
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x7d0

    cmp-long v8, v8, v10

    if-lez v8, :cond_59

    sget-boolean v8, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    if-eqz v8, :cond_59

    .line 535
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Time changed in UsageStats by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x3e8

    div-long v9, v6, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UsageStatsService"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 537
    .local v8, "userCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_45
    if-ge v9, v8, :cond_55

    .line 538
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/usage/UserUsageStatsService;

    .line 539
    .local v10, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v10, v4, v5, v0, v1}, Lcom/android/server/usage/UserUsageStatsService;->onTimeChanged(JJ)V

    .line 537
    .end local v10  # "service":Lcom/android/server/usage/UserUsageStatsService;
    add-int/lit8 v9, v9, 0x1

    goto :goto_45

    .line 541
    .end local v9  # "i":I
    :cond_55
    iput-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 542
    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 544
    .end local v8  # "userCount":I
    :cond_59
    return-wide v0
.end method

.method private cleanUpRemovedUsersLocked()V
    .registers 10

    .line 473
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 474
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v0, :cond_58

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_58

    .line 478
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 479
    .local v1, "toDelete":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "fileNames":[Ljava/lang/String;
    if-nez v2, :cond_1d

    .line 482
    return-void

    .line 485
    :cond_1d
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 487
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 488
    .local v3, "userCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_29
    if-ge v4, v3, :cond_3d

    .line 489
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 490
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 488
    .end local v5  # "userInfo":Landroid/content/pm/UserInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 493
    .end local v4  # "i":I
    :cond_3d
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 494
    .local v4, "deleteCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_42
    if-ge v5, v4, :cond_57

    .line 495
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 494
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 497
    .end local v5  # "i":I
    :cond_57
    return-void

    .line 475
    .end local v1  # "toDelete":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2  # "fileNames":[Ljava/lang/String;
    .end local v3  # "userCount":I
    .end local v4  # "deleteCount":I
    :cond_58
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "There can\'t be no users"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .registers 6
    .param p1, "event"  # Landroid/app/usage/UsageEvents$Event;

    .line 552
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 553
    return-void
.end method

.method private static deleteRecursively(Ljava/io/File;)V
    .registers 5
    .param p0, "f"  # Ljava/io/File;

    .line 500
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 501
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_12

    .line 502
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 503
    .local v3, "subFile":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 502
    .end local v3  # "subFile":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 507
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_2e
    return-void
.end method

.method private flushToDiskLocked()V
    .registers 6

    .line 990
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 991
    .local v0, "userCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_22

    .line 992
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserUsageStatsService;

    .line 993
    .local v2, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v2}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 994
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/usage/AppStandbyController;->flushToDisk(I)V

    .line 991
    .end local v2  # "service":Lcom/android/server/usage/UserUsageStatsService;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 996
    .end local v1  # "i":I
    :cond_22
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController;->flushDurationsToDisk()V

    .line 998
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 999
    return-void
.end method

.method private getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 2

    .line 308
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_e

    .line 309
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 311
    :cond_e
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object v0
.end method

.method private getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;
    .registers 10
    .param p1, "userId"  # I
    .param p2, "currentTimeMillis"  # J

    .line 514
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    .line 515
    .local v0, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v0, :cond_27

    .line 516
    new-instance v1, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    .line 517
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1, v3, p0}, Lcom/android/server/usage/UserUsageStatsService;-><init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V

    move-object v0, v1

    .line 518
    invoke-virtual {v0, p2, p3}, Lcom/android/server/usage/UserUsageStatsService;->init(J)V

    .line 519
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 521
    :cond_27
    return-object v0
.end method

.method private isAppForground(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;

    .line 418
    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_1b

    .line 421
    :cond_c
    iget-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->isScreenOff:Z

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLastForgroundPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 422
    const/4 v0, 0x1

    return v0

    .line 424
    :cond_1a
    return v0

    .line 419
    :cond_1b
    :goto_1b
    return v0
.end method

.method private isSystemApp(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 399
    const/4 v0, 0x0

    .line 401
    .local v0, "flag":Z
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 402
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_26

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_12

    goto :goto_26

    .line 405
    :cond_12
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1c

    .line 407
    const/4 v0, 0x1

    goto :goto_25

    .line 408
    :cond_1c
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_20} :catch_27

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_25

    .line 410
    const/4 v0, 0x1

    .line 413
    .end local v1  # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_25
    :goto_25
    goto :goto_28

    .line 403
    .restart local v1  # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_26
    :goto_26
    return v0

    .line 412
    .end local v1  # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_27
    move-exception v1

    .line 414
    :goto_28
    return v0
.end method

.method private readUsageSourceSetting()V
    .registers 5

    .line 315
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
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

    .line 318
    monitor-exit v0

    .line 319
    return-void

    .line 318
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private removeFlymeAppUsageListener(Lcom/android/server/usage/UsageStatsService$Receiver;)V
    .registers 4
    .param p1, "receiver"  # Lcom/android/server/usage/UsageStatsService$Receiver;

    .line 393
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/usage/UsageStatsService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 394
    invoke-virtual {p1}, Lcom/android/server/usage/UsageStatsService$Receiver;->getListener()Landroid/app/usage/IFlymeAppStatusListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/usage/IFlymeAppStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 396
    :cond_16
    return-void
.end method

.method private shouldObfuscateInstantAppsForCaller(II)Z
    .registers 4
    .param p1, "callingUid"  # I
    .param p2, "userId"  # I

    .line 469
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->canAccessInstantApps(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static validRange(JJJ)Z
    .registers 7
    .param p0, "currentTime"  # J
    .param p2, "beginTime"  # J
    .param p4, "endTime"  # J

    .line 978
    cmp-long v0, p2, p0

    if-gtz v0, :cond_a

    cmp-long v0, p2, p4

    if-gez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method addAppStatusInternalListener(Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;)V
    .registers 4
    .param p1, "listener"  # Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;

    .line 903
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusInternalListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 904
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusInternalListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 905
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusInternalListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    :cond_10
    monitor-exit v0

    .line 908
    return-void

    .line 907
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method addAppStatusListener(Landroid/app/usage/IFlymeAppStatusListener;)V
    .registers 8
    .param p1, "listener"  # Landroid/app/usage/IFlymeAppStatusListener;

    .line 884
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 885
    if-nez p1, :cond_7

    :try_start_5
    monitor-exit v0

    return-void

    .line 886
    :cond_7
    invoke-interface {p1}, Landroid/app/usage/IFlymeAppStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 887
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UsageStatsService$Receiver;

    .line 889
    .local v2, "receiver":Lcom/android/server/usage/UsageStatsService$Receiver;
    if-nez v2, :cond_39

    .line 890
    new-instance v3, Lcom/android/server/usage/UsageStatsService$Receiver;

    invoke-direct {v3, p0, p1}, Lcom/android/server/usage/UsageStatsService$Receiver;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/IFlymeAppStatusListener;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_3b

    move-object v2, v3

    .line 892
    :try_start_1b
    invoke-virtual {v2}, Lcom/android/server/usage/UsageStatsService$Receiver;->getListener()Landroid/app/usage/IFlymeAppStatusListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/usage/IFlymeAppStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_27} :catch_2e
    .catchall {:try_start_1b .. :try_end_27} :catchall_3b

    .line 896
    nop

    .line 897
    :try_start_28
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 893
    :catch_2e
    move-exception v3

    .line 894
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "UsageStatsService"

    const-string/jumbo v5, "linkToDeath failed:"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 895
    monitor-exit v0

    return-void

    .line 899
    .end local v1  # "binder":Landroid/os/IBinder;
    .end local v2  # "receiver":Lcom/android/server/usage/UsageStatsService$Receiver;
    .end local v3  # "e":Landroid/os/RemoteException;
    :cond_39
    :goto_39
    monitor-exit v0

    .line 900
    return-void

    .line 899
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method clearAppStatusListeners()V
    .registers 3

    .line 944
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 945
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 946
    monitor-exit v0

    .line 947
    return-void

    .line 946
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 16
    .param p1, "args"  # [Ljava/lang/String;
    .param p2, "pw"  # Ljava/io/PrintWriter;

    .line 1005
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1006
    :try_start_3
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1008
    .local v1, "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    const/4 v2, 0x0

    .line 1009
    .local v2, "checkin":Z
    const/4 v3, 0x0

    .line 1010
    .local v3, "compact":Z
    const/4 v4, 0x0

    .line 1012
    .local v4, "pkg":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz p1, :cond_18c

    .line 1013
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_11
    array-length v7, p1

    if-ge v6, v7, :cond_18c

    .line 1014
    aget-object v7, p1, v6

    .line 1015
    .local v7, "arg":Ljava/lang/String;
    const-string v8, "--checkin"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 1016
    const/4 v2, 0x1

    goto/16 :goto_188

    .line 1017
    :cond_21
    const-string v8, "-c"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 1018
    const/4 v3, 0x1

    goto/16 :goto_188

    .line 1019
    :cond_2c
    const-string v8, "flush"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 1020
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 1021
    const-string v5, "Flushed stats to disk"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    monitor-exit v0

    return-void

    .line 1023
    :cond_3e
    const-string/jumbo v8, "is-app-standby-enabled"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 1024
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    iget-boolean v5, v5, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 1025
    monitor-exit v0

    return-void

    .line 1026
    :cond_50
    const-string v8, "apptimelimit"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_73

    .line 1027
    add-int/lit8 v8, v6, 0x1

    array-length v9, p1

    if-lt v8, v9, :cond_63

    .line 1028
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v8, v5, p2}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_71

    .line 1030
    :cond_63
    add-int/lit8 v5, v6, 0x1

    array-length v8, p1

    .line 1031
    invoke-static {p1, v5, v8}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 1032
    .local v5, "remainingArgs":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v8, v5, p2}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1034
    .end local v5  # "remainingArgs":[Ljava/lang/String;
    :goto_71
    monitor-exit v0

    return-void

    .line 1035
    :cond_73
    const-string v8, "file"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fc

    .line 1036
    new-instance v8, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v9, "  "

    invoke-direct {v8, p2, v9}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1037
    .local v8, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    add-int/lit8 v9, v6, 0x1

    array-length v10, p1

    if-lt v9, v10, :cond_c0

    .line 1039
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1040
    .local v9, "numUsers":I
    const/4 v10, 0x0

    .local v10, "user":I
    :goto_8e
    if-ge v10, v9, :cond_bf

    .line 1041
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "user="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1043
    iget-object v11, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v11, v8, v5}, Lcom/android/server/usage/UserUsageStatsService;->dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_bc
    .catchall {:try_start_3 .. :try_end_bc} :catchall_1f5

    .line 1040
    add-int/lit8 v10, v10, 0x1

    goto :goto_8e

    .line 1046
    .end local v9  # "numUsers":I
    .end local v10  # "user":I
    :cond_bf
    goto :goto_f1

    .line 1049
    :cond_c0
    add-int/lit8 v5, v6, 0x1

    :try_start_c2
    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_cc
    .catch Ljava/lang/NumberFormatException; {:try_start_c2 .. :try_end_cc} :catch_f3
    .catchall {:try_start_c2 .. :try_end_cc} :catchall_1f5

    .line 1053
    .local v5, "user":I
    nop

    .line 1054
    :try_start_cd
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_dd

    .line 1055
    const-string/jumbo v9, "the specified user does not exist."

    invoke-virtual {v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1056
    monitor-exit v0

    return-void

    .line 1058
    :cond_dd
    add-int/lit8 v9, v6, 0x2

    array-length v10, p1

    invoke-static {p1, v9, v10}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 1061
    .local v9, "remainingArgs":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v10, v8, v9}, Lcom/android/server/usage/UserUsageStatsService;->dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1063
    .end local v5  # "user":I
    .end local v9  # "remainingArgs":[Ljava/lang/String;
    :goto_f1
    monitor-exit v0

    return-void

    .line 1050
    :catch_f3
    move-exception v5

    .line 1051
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "invalid user specified."

    invoke-virtual {v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1052
    monitor-exit v0

    return-void

    .line 1064
    .end local v5  # "nfe":Ljava/lang/NumberFormatException;
    .end local v8  # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_fc
    const-string v8, "database-info"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17c

    .line 1065
    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v8, "  "

    invoke-direct {v5, p2, v8}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1066
    .local v5, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    add-int/lit8 v8, v6, 0x1

    array-length v9, p1

    if-lt v8, v9, :cond_149

    .line 1068
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1069
    .local v8, "numUsers":I
    const/4 v9, 0x0

    .local v9, "user":I
    :goto_117
    if-ge v9, v8, :cond_148

    .line 1070
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "user="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1072
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v10, v5}, Lcom/android/server/usage/UserUsageStatsService;->dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1073
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_145
    .catchall {:try_start_cd .. :try_end_145} :catchall_1f5

    .line 1069
    add-int/lit8 v9, v9, 0x1

    goto :goto_117

    .line 1075
    .end local v8  # "numUsers":I
    .end local v9  # "user":I
    :cond_148
    goto :goto_171

    .line 1078
    :cond_149
    add-int/lit8 v8, v6, 0x1

    :try_start_14b
    aget-object v8, p1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_155
    .catch Ljava/lang/NumberFormatException; {:try_start_14b .. :try_end_155} :catch_173
    .catchall {:try_start_14b .. :try_end_155} :catchall_1f5

    .line 1082
    .local v8, "user":I
    nop

    .line 1083
    :try_start_156
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_166

    .line 1084
    const-string/jumbo v9, "the specified user does not exist."

    invoke-virtual {v5, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1085
    monitor-exit v0

    return-void

    .line 1088
    :cond_166
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v9, v5}, Lcom/android/server/usage/UserUsageStatsService;->dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1090
    .end local v8  # "user":I
    :goto_171
    monitor-exit v0

    return-void

    .line 1079
    :catch_173
    move-exception v8

    .line 1080
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "invalid user specified."

    invoke-virtual {v5, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1081
    monitor-exit v0

    return-void

    .line 1091
    .end local v5  # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v8  # "nfe":Ljava/lang/NumberFormatException;
    :cond_17c
    if-eqz v7, :cond_188

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_188

    .line 1093
    move-object v4, v7

    .line 1094
    goto :goto_18c

    .line 1013
    .end local v7  # "arg":Ljava/lang/String;
    :cond_188
    :goto_188
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_11

    .line 1099
    .end local v6  # "i":I
    :cond_18c
    :goto_18c
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1100
    .local v6, "userCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_193
    if-ge v7, v6, :cond_1d3

    .line 1101
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 1102
    .local v8, "userId":I
    const-string/jumbo v9, "user"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1103
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1104
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1105
    if-eqz v2, :cond_1b9

    .line 1106
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v9, v1}, Lcom/android/server/usage/UserUsageStatsService;->checkin(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_1c7

    .line 1108
    :cond_1b9
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v9, v1, v4, v3}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Z)V

    .line 1109
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1111
    :goto_1c7
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v9, v1, v8, v4}, Lcom/android/server/usage/AppStandbyController;->dumpUser(Lcom/android/internal/util/IndentingPrintWriter;ILjava/lang/String;)V

    .line 1112
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1100
    nop

    .end local v8  # "userId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_193

    .line 1115
    .end local v7  # "i":I
    :cond_1d3
    if-nez v4, :cond_1dd

    .line 1116
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1117
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/usage/AppStandbyController;->dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1120
    :cond_1dd
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1121
    const-string v7, "Usage Source"

    iget v8, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    invoke-static {v8}, Landroid/app/usage/UsageStatsManager;->usageSourceToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1122
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1124
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v7, v5, p2}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1125
    .end local v1  # "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v2  # "checkin":Z
    .end local v3  # "compact":Z
    .end local v4  # "pkg":Ljava/lang/String;
    .end local v6  # "userCount":I
    monitor-exit v0

    .line 1126
    return-void

    .line 1125
    :catchall_1f5
    move-exception v1

    monitor-exit v0
    :try_end_1f7
    .catchall {:try_start_156 .. :try_end_1f7} :catchall_1f5

    throw v1
.end method

.method flushToDisk()V
    .registers 6

    .line 773
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 779
    :try_start_3
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    const/16 v2, 0x19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 780
    .local v1, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    .line 781
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 782
    .end local v1  # "event":Landroid/app/usage/UsageEvents$Event;
    monitor-exit v0

    .line 783
    return-void

    .line 782
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method informAppStatusInternalListeners(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "eventType"  # I

    .line 967
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusInternalListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 968
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusInternalListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;

    .line 969
    .local v2, "listener":Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;
    if-eqz v2, :cond_1a

    .line 970
    invoke-virtual {v2, p1, p2}, Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;->onAppStatusChange(Ljava/lang/String;I)V

    .line 972
    .end local v2  # "listener":Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;
    :cond_1a
    goto :goto_9

    .line 973
    :cond_1b
    monitor-exit v0

    .line 974
    return-void

    .line 973
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method informAppStatusListeners(Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "eventType"  # I

    .line 952
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 953
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UsageStatsService$Receiver;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_44

    .line 955
    .local v2, "receiver":Lcom/android/server/usage/UsageStatsService$Receiver;
    if-eqz v2, :cond_40

    .line 956
    :try_start_1b
    invoke-virtual {v2}, Lcom/android/server/usage/UsageStatsService$Receiver;->getListener()Landroid/app/usage/IFlymeAppStatusListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/app/usage/IFlymeAppStatusListener;->onAppStatusChange(Ljava/lang/String;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_23
    .catchall {:try_start_1b .. :try_end_22} :catchall_44

    goto :goto_40

    .line 958
    :catch_23
    move-exception v3

    .line 960
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_24
    const-string v4, "UsageStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "informAppStatusListeners "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 961
    .end local v3  # "e":Landroid/os/RemoteException;
    :cond_40
    :goto_40
    nop

    .line 962
    .end local v2  # "receiver":Lcom/android/server/usage/UsageStatsService$Receiver;
    :goto_41
    goto :goto_d

    .line 963
    :cond_42
    monitor-exit v0

    .line 964
    return-void

    .line 963
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_24 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"  # I

    .line 283
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController;->onBootPhase(I)V

    .line 284
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_50

    .line 286
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    .line 288
    nop

    .line 289
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 288
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 291
    sget-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 293
    :try_start_21
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2d} :catch_2e

    .line 299
    goto :goto_4d

    .line 297
    :catch_2e
    move-exception v0

    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 301
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing procfs interface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_4d
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->readUsageSourceSetting()V

    .line 305
    :cond_50
    return-void
.end method

.method public onNewUpdate(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 465
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController;->initializeDefaultsForSystemApps(I)V

    .line 466
    return-void
.end method

.method public onStart()V
    .registers 10

    .line 208
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 209
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    .line 210
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 211
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 212
    new-instance v0, Lcom/android/server/usage/UsageStatsService$H;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$H;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 214
    new-instance v0, Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/AppStandbyController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 216
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController;

    new-instance v1, Lcom/android/server/usage/UsageStatsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/usage/UsageStatsService$2;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 248
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/AppTimeLimitController;-><init>(Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 250
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController;->addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 251
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 252
    .local v0, "systemDataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "usagestats"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    .line 253
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 254
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 259
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 260
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;

    const/4 v2, 0x0

    invoke-direct {v4, p0, v2}, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 268
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 269
    :try_start_bb
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->cleanUpRemovedUsersLocked()V

    .line 270
    monitor-exit v3
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_e7

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 275
    const-class v3, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v4, Lcom/android/server/usage/UsageStatsService$LocalService;

    invoke-direct {v4, p0, v2}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usage/UsageStatsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 276
    new-instance v3, Lcom/android/server/usage/UsageStatsService$BinderService;

    invoke-direct {v3, p0, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    const-string/jumbo v2, "usagestats"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usage/UsageStatsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 278
    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    .line 279
    return-void

    .line 270
    :catchall_e7
    move-exception v2

    :try_start_e8
    monitor-exit v3
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw v2

    .line 255
    .end local v1  # "filter":Landroid/content/IntentFilter;
    :cond_ea
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Usage stats directory does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    .line 256
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onStatsReloaded()V
    .registers 2

    .line 460
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    .line 461
    return-void
.end method

.method public onStatsUpdated()V
    .registers 5

    .line 455
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x124f80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 456
    return-void
.end method

.method onUserRemoved(I)V
    .registers 6
    .param p1, "userId"  # I

    .line 789
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 790
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

    .line 791
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 792
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppStandbyController;->onUserRemoved(I)V

    .line 793
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppTimeLimitController;->onUserRemoved(I)V

    .line 794
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->cleanUpRemovedUsersLocked()V

    .line 795
    monitor-exit v0

    .line 796
    return-void

    .line 795
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method prepareForPossibleShutdown()V
    .registers 5

    .line 579
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/16 v3, 0x1a

    invoke-direct {v0, v3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 580
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    const-string v1, "android"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 581
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 582
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 583
    return-void
.end method

.method queryConfigurationStats(IIJJ)Ljava/util/List;
    .registers 16
    .param p1, "userId"  # I
    .param p2, "bucketType"  # I
    .param p3, "beginTime"  # J
    .param p5, "endTime"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .line 836
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 837
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v1

    .line 838
    .local v1, "timeNow":J
    move-wide v3, v1

    move-wide v5, p3

    move-wide v7, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v3

    if-nez v3, :cond_13

    .line 839
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 842
    :cond_13
    nop

    .line 843
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v3

    .line 844
    .local v3, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryConfigurationStats(IJJ)Ljava/util/List;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 845
    .end local v1  # "timeNow":J
    .end local v3  # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method queryEventStats(IIJJ)Ljava/util/List;
    .registers 16
    .param p1, "userId"  # I
    .param p2, "bucketType"  # I
    .param p3, "beginTime"  # J
    .param p5, "endTime"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .line 853
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 854
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v1

    .line 855
    .local v1, "timeNow":J
    move-wide v3, v1

    move-wide v5, p3

    move-wide v7, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v3

    if-nez v3, :cond_13

    .line 856
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 859
    :cond_13
    nop

    .line 860
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v3

    .line 861
    .local v3, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryEventStats(IJJ)Ljava/util/List;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 862
    .end local v1  # "timeNow":J
    .end local v3  # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method queryEvents(IJJZ)Landroid/app/usage/UsageEvents;
    .registers 16
    .param p1, "userId"  # I
    .param p2, "beginTime"  # J
    .param p4, "endTime"  # J
    .param p6, "shouldObfuscateInstantApps"  # Z

    .line 870
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 871
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v1

    .line 872
    .local v1, "timeNow":J
    move-wide v3, v1

    move-wide v5, p2

    move-wide v7, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v3

    if-nez v3, :cond_13

    .line 873
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 876
    :cond_13
    nop

    .line 877
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v3

    .line 878
    .local v3, "service":Lcom/android/server/usage/UserUsageStatsService;
    move-wide v4, p2

    move-wide v6, p4

    move v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJZ)Landroid/app/usage/UsageEvents;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 879
    .end local v1  # "timeNow":J
    .end local v3  # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method queryEventsForPackage(IJJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;
    .registers 21
    .param p1, "userId"  # I
    .param p2, "beginTime"  # J
    .param p4, "endTime"  # J
    .param p6, "packageName"  # Ljava/lang/String;
    .param p7, "includeTaskRoot"  # Z

    .line 916
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 917
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v3

    .line 918
    .local v3, "timeNow":J
    move-wide v5, v3

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-static/range {v5 .. v10}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v0

    if-nez v0, :cond_15

    .line 919
    const/4 v0, 0x0

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_28

    return-object v0

    .line 922
    :cond_15
    nop

    .line 923
    move v5, p1

    :try_start_17
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v6

    .line 924
    .local v6, "service":Lcom/android/server/usage/UserUsageStatsService;
    move-wide v7, p2

    move-wide/from16 v9, p4

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/usage/UserUsageStatsService;->queryEventsForPackage(JJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 925
    .end local v3  # "timeNow":J
    .end local v6  # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_28
    move-exception v0

    move v5, p1

    :goto_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_2c

    throw v0

    :catchall_2c
    move-exception v0

    goto :goto_2a
.end method

.method queryUsageStats(IIJJZ)Ljava/util/List;
    .registers 21
    .param p1, "userId"  # I
    .param p2, "bucketType"  # I
    .param p3, "beginTime"  # J
    .param p5, "endTime"  # J
    .param p7, "obfuscateInstantApps"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJZ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 803
    move-object v1, p0

    move v2, p1

    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 804
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v4

    .line 805
    .local v4, "timeNow":J
    move-wide v6, v4

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-static/range {v6 .. v11}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_17

    .line 806
    monitor-exit v3

    return-object v6

    .line 809
    :cond_17
    nop

    .line 810
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v7

    .line 811
    .local v7, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v8, p2

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/usage/UserUsageStatsService;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v0

    .line 812
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-nez v0, :cond_29

    .line 813
    monitor-exit v3

    return-object v6

    .line 818
    :cond_29
    if-eqz p7, :cond_4d

    .line 819
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_31
    if-ltz v6, :cond_4d

    .line 820
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStats;

    .line 821
    .local v8, "stats":Landroid/app/usage/UsageStats;
    iget-object v9, v1, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v10, v8, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 822
    invoke-virtual {v8}, Landroid/app/usage/UsageStats;->getObfuscatedForInstantApp()Landroid/app/usage/UsageStats;

    move-result-object v9

    invoke-interface {v0, v6, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 819
    .end local v8  # "stats":Landroid/app/usage/UsageStats;
    :cond_4a
    add-int/lit8 v6, v6, -0x1

    goto :goto_31

    .line 827
    .end local v6  # "i":I
    :cond_4d
    monitor-exit v3

    return-object v0

    .line 828
    .end local v0  # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .end local v4  # "timeNow":J
    .end local v7  # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_4f
    move-exception v0

    monitor-exit v3
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method registerAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    .registers 21
    .param p1, "callingUid"  # I
    .param p2, "observerId"  # I
    .param p3, "packages"  # [Ljava/lang/String;
    .param p4, "timeLimitMs"  # J
    .param p6, "timeUsedMs"  # J
    .param p8, "callbackIntent"  # Landroid/app/PendingIntent;
    .param p9, "userId"  # I

    .line 1889
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppTimeLimitController;->addAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V

    .line 1891
    return-void
.end method

.method registerAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    .registers 16
    .param p1, "callingUid"  # I
    .param p2, "observerId"  # I
    .param p3, "packages"  # [Ljava/lang/String;
    .param p4, "timeLimitMs"  # J
    .param p6, "callbackIntent"  # Landroid/app/PendingIntent;
    .param p7, "userId"  # I

    .line 1867
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppTimeLimitController;->addAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V

    .line 1870
    return-void
.end method

.method registerUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .registers 23
    .param p1, "callingUid"  # I
    .param p2, "observerId"  # I
    .param p3, "observed"  # [Ljava/lang/String;
    .param p4, "timeLimitMs"  # J
    .param p6, "sessionThresholdTime"  # J
    .param p8, "limitReachedCallbackIntent"  # Landroid/app/PendingIntent;
    .param p9, "sessionEndCallbackIntent"  # Landroid/app/PendingIntent;
    .param p10, "userId"  # I

    .line 1879
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/usage/AppTimeLimitController;->addUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 1881
    return-void
.end method

.method removeAppStatusInternalListener(Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;)V
    .registers 4
    .param p1, "listener"  # Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;

    .line 938
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusInternalListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 939
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusInternalListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 940
    monitor-exit v0

    .line 941
    return-void

    .line 940
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method removeAppStatusListener(Landroid/app/usage/IFlymeAppStatusListener;)V
    .registers 5
    .param p1, "listener"  # Landroid/app/usage/IFlymeAppStatusListener;

    .line 930
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 931
    if-nez p1, :cond_7

    :try_start_5
    monitor-exit v0

    return-void

    .line 932
    :cond_7
    invoke-interface {p1}, Landroid/app/usage/IFlymeAppStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 933
    .local v1, "key":Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    nop

    .end local v1  # "key":Ljava/lang/Object;
    monitor-exit v0

    .line 935
    return-void

    .line 934
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;I)V
    .registers 20
    .param p1, "event"  # Landroid/app/usage/UsageEvents$Event;
    .param p2, "userId"  # I

    .line 589
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    iget-object v4, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 590
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v5

    .line 591
    .local v5, "timeNow":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 592
    .local v7, "elapsedRealtime":J
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsService;->convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 594
    iget-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/4 v9, 0x1

    if-eqz v0, :cond_28

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v10, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 595
    invoke-virtual {v0, v3, v10}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 596
    iget v0, v2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    or-int/2addr v0, v9

    iput v0, v2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 599
    :cond_28
    iget v0, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v10, 0x2

    if-eq v0, v9, :cond_12e

    if-eq v0, v10, :cond_d5

    const/16 v11, 0x17

    if-eq v0, v11, :cond_3b

    const/16 v12, 0x18

    if-eq v0, v12, :cond_39

    goto/16 :goto_169

    .line 635
    :cond_39
    iput v11, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 638
    :cond_3b
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v11, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 639
    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UsageStatsService$ActivityData;

    move-object v11, v0

    .line 640
    .local v11, "prevData":Lcom/android/server/usage/UsageStatsService$ActivityData;
    if-nez v11, :cond_4a

    .line 642
    monitor-exit v4

    return-void

    .line 646
    :cond_4a
    iget-object v12, v1, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v12
    :try_end_4d
    .catchall {:try_start_9 .. :try_end_4d} :catchall_24d

    .line 647
    :try_start_4d
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    iget v13, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    move-object v13, v0

    .line 648
    .local v13, "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit v12
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_d2

    .line 649
    if-eqz v13, :cond_a1

    .line 650
    :try_start_5b
    monitor-enter v13
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_24d

    .line 651
    :try_start_5c
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v0

    move v12, v0

    .line 653
    .local v12, "size":I
    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_63
    if-ge v14, v12, :cond_9a

    .line 654
    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_6b
    .catchall {:try_start_5c .. :try_end_6b} :catchall_9e

    move-object v15, v0

    .line 656
    .local v15, "token":Ljava/lang/String;
    :try_start_6c
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v9, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 657
    invoke-direct {v1, v9, v15}, Lcom/android/server/usage/UsageStatsService;->buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 656
    invoke-virtual {v0, v9, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_77
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6c .. :try_end_77} :catch_7a
    .catchall {:try_start_6c .. :try_end_77} :catchall_9e

    .line 661
    move/from16 v16, v12

    goto :goto_93

    .line 658
    :catch_7a
    move-exception v0

    .line 659
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_7b
    const-string v9, "UsageStatsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v12

    .end local v12  # "size":I
    .local v16, "size":I
    const-string v12, "Failed to stop usage for during reporter death: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    .end local v0  # "iae":Ljava/lang/IllegalArgumentException;
    .end local v15  # "token":Ljava/lang/String;
    :goto_93
    add-int/lit8 v14, v14, 0x1

    move/from16 v12, v16

    const/4 v9, 0x1

    const/4 v10, 0x2

    goto :goto_63

    .end local v16  # "size":I
    .restart local v12  # "size":I
    :cond_9a
    move/from16 v16, v12

    .line 663
    .end local v12  # "size":I
    .end local v14  # "i":I
    monitor-exit v13

    goto :goto_a1

    :catchall_9e
    move-exception v0

    monitor-exit v13
    :try_end_a0
    .catchall {:try_start_7b .. :try_end_a0} :catchall_9e

    .end local p0  # "this":Lcom/android/server/usage/UsageStatsService;
    .end local p1  # "event":Landroid/app/usage/UsageEvents$Event;
    .end local p2  # "userId":I
    :try_start_a0
    throw v0

    .line 665
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsService;
    .restart local p1  # "event":Landroid/app/usage/UsageEvents$Event;
    .restart local p2  # "userId":I
    :cond_a1
    :goto_a1
    iget-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-nez v0, :cond_b1

    .line 667
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsService$ActivityData;->access$700(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 668
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsService$ActivityData;->access$800(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;
    :try_end_b1
    .catchall {:try_start_a0 .. :try_end_b1} :catchall_24d

    .line 671
    :cond_b1
    :try_start_b1
    iget v0, v1, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    const/4 v9, 0x2

    if-eq v0, v9, :cond_be

    .line 677
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v9, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {v0, v9, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V

    goto :goto_c6

    .line 673
    :cond_be
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v9, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v9, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b1 .. :try_end_c5} :catch_c8
    .catchall {:try_start_b1 .. :try_end_c5} :catchall_24d

    .line 674
    nop

    .line 682
    :goto_c6
    goto/16 :goto_169

    .line 680
    :catch_c8
    move-exception v0

    .line 681
    .restart local v0  # "iae":Ljava/lang/IllegalArgumentException;
    :try_start_c9
    const-string v9, "UsageStatsService"

    const-string v10, "Failed to note usage stop"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d0
    .catchall {:try_start_c9 .. :try_end_d0} :catchall_24d

    goto/16 :goto_169

    .line 648
    .end local v0  # "iae":Ljava/lang/IllegalArgumentException;
    .end local v13  # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_d2
    move-exception v0

    :try_start_d3
    monitor-exit v12
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    .end local p0  # "this":Lcom/android/server/usage/UsageStatsService;
    .end local p1  # "event":Landroid/app/usage/UsageEvents$Event;
    .end local p2  # "userId":I
    :try_start_d4
    throw v0

    .line 620
    .end local v11  # "prevData":Lcom/android/server/usage/UsageStatsService$ActivityData;
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsService;
    .restart local p1  # "event":Landroid/app/usage/UsageEvents$Event;
    .restart local p2  # "userId":I
    :cond_d5
    iget-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-nez v0, :cond_169

    .line 622
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v9, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UsageStatsService$ActivityData;

    .line 623
    .local v0, "prevData":Lcom/android/server/usage/UsageStatsService$ActivityData;
    if-nez v0, :cond_121

    .line 624
    const-string v9, "UsageStatsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected activity event reported! ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " event : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " instanceId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12d

    .line 628
    :cond_121
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService$ActivityData;->access$700(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 629
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService$ActivityData;->access$800(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 631
    .end local v0  # "prevData":Lcom/android/server/usage/UsageStatsService$ActivityData;
    :goto_12d
    goto :goto_169

    .line 602
    :cond_12e
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v9, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_139

    goto :goto_169

    .line 603
    :cond_139
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v9, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    new-instance v10, Lcom/android/server/usage/UsageStatsService$ActivityData;

    iget-object v11, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    iget-object v12, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/android/server/usage/UsageStatsService$ActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/usage/UsageStatsService$1;)V

    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_14a
    .catchall {:try_start_d4 .. :try_end_14a} :catchall_24d

    .line 606
    :try_start_14a
    iget v0, v1, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    const/4 v9, 0x2

    if-eq v0, v9, :cond_157

    .line 612
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v9, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {v0, v9, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;I)V

    goto :goto_15f

    .line 608
    :cond_157
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v9, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v9, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;I)V
    :try_end_15e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14a .. :try_end_15e} :catch_160
    .catchall {:try_start_14a .. :try_end_15e} :catchall_24d

    .line 609
    nop

    .line 617
    :goto_15f
    goto :goto_169

    .line 615
    :catch_160
    move-exception v0

    .line 616
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_161
    const-string v9, "UsageStatsService"

    const-string v10, "Failed to note usage start"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 618
    nop

    .line 686
    .end local v0  # "iae":Ljava/lang/IllegalArgumentException;
    :cond_169
    :goto_169
    nop

    .line 687
    invoke-direct {v1, v3, v5, v6}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    move-object v9, v0

    .line 688
    .local v9, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v9, v2}, Lcom/android/server/usage/UserUsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 690
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, v2, v7, v8, v3}, Lcom/android/server/usage/AppStandbyController;->reportEvent(Landroid/app/usage/UsageEvents$Event;JI)V

    .line 693
    iget v0, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_20a

    .line 694
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mLastBackgroundPackage:Ljava/lang/String;

    iget-object v11, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_185
    .catchall {:try_start_161 .. :try_end_185} :catchall_24d

    if-nez v0, :cond_1c7

    .line 696
    :try_start_187
    iget-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mLastForgroundPackage:Ljava/lang/String;

    .line 697
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v11, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-interface {v0, v11, v10, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 698
    .local v0, "uid":I
    iget-object v11, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-direct {v1, v11, v3}, Lcom/android/server/usage/UsageStatsService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v11
    :try_end_19b
    .catch Landroid/os/RemoteException; {:try_start_187 .. :try_end_19b} :catch_1a5
    .catchall {:try_start_187 .. :try_end_19b} :catchall_24d

    if-eqz v11, :cond_19f

    .line 699
    :try_start_19d
    monitor-exit v4
    :try_end_19e
    .catchall {:try_start_19d .. :try_end_19e} :catchall_24d

    return-void

    .line 701
    :cond_19f
    :try_start_19f
    iget-object v11, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1a4
    .catch Landroid/os/RemoteException; {:try_start_19f .. :try_end_1a4} :catch_1a5
    .catchall {:try_start_19f .. :try_end_1a4} :catchall_24d

    .line 704
    .end local v0  # "uid":I
    goto :goto_1a6

    .line 702
    :catch_1a5
    move-exception v0

    .line 705
    :goto_1a6
    :try_start_1a6
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mNotifyForgroundPackage:Ljava/lang/String;

    iget-object v11, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20a

    .line 706
    iget-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mNotifyForgroundPackage:Ljava/lang/String;

    .line 707
    const-string v0, "com.meizu.flyme.launcher"

    iput-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mNotifyBackgroundPackage:Ljava/lang/String;

    .line 708
    iget-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget v11, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v1, v0, v11}, Lcom/android/server/usage/UsageStatsService;->informAppStatusListeners(Ljava/lang/String;I)V

    .line 709
    iget-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget v11, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v1, v0, v11}, Lcom/android/server/usage/UsageStatsService;->informAppStatusInternalListeners(Ljava/lang/String;I)V

    goto :goto_20a

    .line 712
    :cond_1c7
    iget-boolean v0, v1, Lcom/android/server/usage/UsageStatsService;->isScreenOff:Z
    :try_end_1c9
    .catchall {:try_start_1a6 .. :try_end_1c9} :catchall_24d

    if-eqz v0, :cond_20a

    .line 714
    :try_start_1cb
    iget-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mLastForgroundPackage:Ljava/lang/String;

    .line 715
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v11, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-interface {v0, v11, v10, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 716
    .restart local v0  # "uid":I
    iget-object v11, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-direct {v1, v11, v3}, Lcom/android/server/usage/UsageStatsService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v11
    :try_end_1df
    .catch Landroid/os/RemoteException; {:try_start_1cb .. :try_end_1df} :catch_1e9
    .catchall {:try_start_1cb .. :try_end_1df} :catchall_24d

    if-eqz v11, :cond_1e3

    .line 717
    :try_start_1e1
    monitor-exit v4
    :try_end_1e2
    .catchall {:try_start_1e1 .. :try_end_1e2} :catchall_24d

    return-void

    .line 719
    :cond_1e3
    :try_start_1e3
    iget-object v11, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1e8
    .catch Landroid/os/RemoteException; {:try_start_1e3 .. :try_end_1e8} :catch_1e9
    .catchall {:try_start_1e3 .. :try_end_1e8} :catchall_24d

    .line 722
    .end local v0  # "uid":I
    goto :goto_1ea

    .line 720
    :catch_1e9
    move-exception v0

    .line 723
    :goto_1ea
    :try_start_1ea
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mNotifyForgroundPackage:Ljava/lang/String;

    iget-object v11, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20a

    .line 724
    iget-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mNotifyForgroundPackage:Ljava/lang/String;

    .line 725
    const-string v0, "com.meizu.flyme.launcher"

    iput-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mNotifyBackgroundPackage:Ljava/lang/String;

    .line 726
    iget-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget v11, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v1, v0, v11}, Lcom/android/server/usage/UsageStatsService;->informAppStatusListeners(Ljava/lang/String;I)V

    .line 727
    iget-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget v11, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v1, v0, v11}, Lcom/android/server/usage/UsageStatsService;->informAppStatusInternalListeners(Ljava/lang/String;I)V

    .line 732
    :cond_20a
    :goto_20a
    iget v0, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v11, 0x2

    if-ne v0, v11, :cond_24b

    .line 733
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mLastForgroundPackage:Ljava/lang/String;

    iget-object v11, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_217
    .catchall {:try_start_1ea .. :try_end_217} :catchall_24d

    if-eqz v0, :cond_24b

    .line 736
    :try_start_219
    iget-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mLastBackgroundPackage:Ljava/lang/String;

    .line 737
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v11, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-interface {v0, v11, v10, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 738
    .restart local v0  # "uid":I
    iget-object v10, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-direct {v1, v10, v3}, Lcom/android/server/usage/UsageStatsService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v10
    :try_end_22d
    .catch Landroid/os/RemoteException; {:try_start_219 .. :try_end_22d} :catch_24a
    .catchall {:try_start_219 .. :try_end_22d} :catchall_24d

    if-eqz v10, :cond_231

    .line 739
    :try_start_22f
    monitor-exit v4
    :try_end_230
    .catchall {:try_start_22f .. :try_end_230} :catchall_24d

    return-void

    .line 741
    :cond_231
    :try_start_231
    iget-object v10, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 742
    iget-object v10, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    iget-object v11, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    iget v12, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget-object v13, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v11, v0, v3, v12, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    const-wide/32 v12, 0xea60

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_248
    .catch Landroid/os/RemoteException; {:try_start_231 .. :try_end_248} :catch_24a
    .catchall {:try_start_231 .. :try_end_248} :catchall_24d

    .line 748
    nop

    .end local v0  # "uid":I
    goto :goto_24b

    .line 746
    :catch_24a
    move-exception v0

    .line 752
    .end local v5  # "timeNow":J
    .end local v7  # "elapsedRealtime":J
    .end local v9  # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_24b
    :goto_24b
    :try_start_24b
    monitor-exit v4

    .line 753
    return-void

    .line 752
    :catchall_24d
    move-exception v0

    monitor-exit v4
    :try_end_24f
    .catchall {:try_start_24b .. :try_end_24f} :catchall_24d

    throw v0
.end method

.method reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V
    .registers 7
    .param p1, "event"  # Landroid/app/usage/UsageEvents$Event;

    .line 760
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 761
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 762
    .local v1, "userCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1d

    .line 763
    new-instance v3, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v3, p1}, Landroid/app/usage/UsageEvents$Event;-><init>(Landroid/app/usage/UsageEvents$Event;)V

    .line 764
    .local v3, "copy":Landroid/app/usage/UsageEvents$Event;
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    .line 762
    .end local v3  # "copy":Landroid/app/usage/UsageEvents$Event;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 766
    .end local v1  # "userCount":I
    .end local v2  # "i":I
    :cond_1d
    monitor-exit v0

    .line 767
    return-void

    .line 766
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method shutdown()V
    .registers 6

    .line 559
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 560
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 561
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    const/16 v2, 0x1a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 562
    .local v1, "event":Landroid/app/usage/UsageEvents$Event;
    const-string v2, "android"

    iput-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 564
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    .line 565
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 566
    .end local v1  # "event":Landroid/app/usage/UsageEvents$Event;
    monitor-exit v0

    .line 567
    return-void

    .line 566
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method unregisterAppUsageLimitObserver(III)V
    .registers 5
    .param p1, "callingUid"  # I
    .param p2, "observerId"  # I
    .param p3, "userId"  # I

    .line 1894
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeAppUsageLimitObserver(III)V

    .line 1895
    return-void
.end method

.method unregisterAppUsageObserver(III)V
    .registers 5
    .param p1, "callingUid"  # I
    .param p2, "observerId"  # I
    .param p3, "userId"  # I

    .line 1873
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeAppUsageObserver(III)V

    .line 1874
    return-void
.end method

.method unregisterUsageSessionObserver(III)V
    .registers 5
    .param p1, "callingUid"  # I
    .param p2, "sessionObserverId"  # I
    .param p3, "userId"  # I

    .line 1884
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeUsageSessionObserver(III)V

    .line 1885
    return-void
.end method
