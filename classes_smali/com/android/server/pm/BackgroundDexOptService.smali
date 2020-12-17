.class public Lcom/android/server/pm/BackgroundDexOptService;
.super Landroid/app/job/JobService;
.source "BackgroundDexOptService.java"


# static fields
.field private static final DEBUG:Z

.field private static final IDLE_OPTIMIZATION_PERIOD:J

.field private static final JOB_IDLE_OPTIMIZE:I = 0x320

.field private static final JOB_POST_BOOT_UPDATE:I = 0x321

.field private static final LOW_THRESHOLD_MULTIPLIER_FOR_DOWNGRADE:I = 0x2

.field private static final OPTIMIZE_ABORT_BY_JOB_SCHEDULER:I = 0x2

.field private static final OPTIMIZE_ABORT_NO_SPACE_LEFT:I = 0x3

.field private static final OPTIMIZE_CONTINUE:I = 0x1

.field private static final OPTIMIZE_PROCESSED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BackgroundDexOptService"

.field private static final mDowngradeUnusedAppsThresholdInMillis:J

.field private static sDexoptServiceName:Landroid/content/ComponentName;

.field static final sFailedPackageNamesPrimary:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sFailedPackageNamesSecondary:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mDataDir:Ljava/io/File;

.field private final mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 61
    const-string v0, "BackgroundDexOptService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    .line 66
    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_16

    .line 67
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_1c

    .line 68
    :cond_16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_1c
    sput-wide v0, Lcom/android/server/pm/BackgroundDexOptService;->IDLE_OPTIMIZATION_PERIOD:J

    .line 70
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/pm/BackgroundDexOptService;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    .line 91
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesPrimary:Landroid/util/ArraySet;

    .line 92
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesSecondary:Landroid/util/ArraySet;

    .line 107
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->getDowngradeUnusedAppsThresholdInMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/BackgroundDexOptService;->mDowngradeUnusedAppsThresholdInMillis:J

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 58
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    return-void
.end method

.method private abortIdleOptimizations(J)I
    .registers 7
    .param p1, "lowStorageThreshold"  # J

    .line 528
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 530
    const/4 v0, 0x2

    return v0

    .line 532
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 533
    .local v0, "usableSpace":J
    cmp-long v2, v0, p1

    if-gez v2, :cond_2c

    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aborting background dex opt job due to low storage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackgroundDexOptService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v2, 0x3

    return v2

    .line 539
    :cond_2c
    const/4 v2, 0x1

    return v2
.end method

.method static synthetic access$000(Lcom/android/server/pm/BackgroundDexOptService;Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/pm/BackgroundDexOptService;
    .param p1, "x1"  # Landroid/app/job/JobParameters;
    .param p2, "x2"  # Lcom/android/server/pm/PackageManagerService;
    .param p3, "x3"  # Landroid/util/ArraySet;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/BackgroundDexOptService;->postBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I
    .registers 5
    .param p0, "x0"  # Lcom/android/server/pm/BackgroundDexOptService;
    .param p1, "x1"  # Lcom/android/server/pm/PackageManagerService;
    .param p2, "x2"  # Landroid/util/ArraySet;
    .param p3, "x3"  # Landroid/content/Context;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private downgradePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)Z
    .registers 16
    .param p1, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "isForPrimaryDex"  # Z

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downgrading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundDexOptService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "dex_opt_performed":Z
    const/4 v1, 0x5

    .line 410
    .local v1, "reason":I
    const/16 v2, 0x224

    .line 413
    .local v2, "dexoptFlags":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/BackgroundDexOptService;->getPackageSize(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)J

    move-result-wide v10

    .line 415
    .local v10, "package_size_before":J
    if-eqz p3, :cond_2f

    .line 418
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageManagerService;->canHaveOatDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 421
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Ljava/lang/String;)V

    goto :goto_33

    .line 423
    :cond_2a
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptPrimary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z

    move-result v0

    goto :goto_33

    .line 426
    :cond_2f
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptSecondary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z

    move-result v0

    .line 429
    :goto_33
    if-eqz v0, :cond_41

    .line 430
    const/16 v3, 0x80

    .line 431
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/BackgroundDexOptService;->getPackageSize(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x0

    .line 430
    move-object v4, p2

    move-wide v5, v10

    invoke-static/range {v3 .. v9}, Landroid/util/StatsLog;->write(ILjava/lang/String;JJZ)I

    .line 433
    :cond_41
    return v0
.end method

.method private getBatteryLevel()I
    .registers 7

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "filter":Landroid/content/IntentFilter;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/BackgroundDexOptService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 152
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, -0x1

    const-string/jumbo v3, "level"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 153
    .local v3, "level":I
    const-string/jumbo v4, "scale"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 154
    .local v2, "scale":I
    const-string/jumbo v4, "present"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 156
    .local v4, "present":Z
    if-nez v4, :cond_28

    .line 158
    const/16 v5, 0x64

    return v5

    .line 161
    :cond_28
    if-ltz v3, :cond_31

    if-gtz v2, :cond_2d

    goto :goto_31

    .line 166
    :cond_2d
    mul-int/lit8 v5, v3, 0x64

    div-int/2addr v5, v2

    return v5

    .line 163
    :cond_31
    :goto_31
    const/4 v5, 0x0

    return v5
.end method

.method private getDirectorySize(Ljava/io/File;)J
    .registers 10
    .param p1, "f"  # Ljava/io/File;

    .line 318
    const-wide/16 v0, 0x0

    .line 319
    .local v0, "size":J
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 320
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_1e

    aget-object v5, v2, v4

    .line 321
    .local v5, "file":Ljava/io/File;
    invoke-direct {p0, v5}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 320
    .end local v5  # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 324
    :cond_1a
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 326
    :cond_1e
    return-wide v0
.end method

.method private static getDowngradeUnusedAppsThresholdInMillis()J
    .registers 5

    .line 659
    const-string/jumbo v0, "pm.dexopt.downgrade_after_inactive_days"

    .line 660
    .local v0, "sysPropKey":Ljava/lang/String;
    const-string/jumbo v1, "pm.dexopt.downgrade_after_inactive_days"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, "sysPropValue":Ljava/lang/String;
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_1e

    .line 665
    :cond_13
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    return-wide v2

    .line 662
    :cond_1e
    :goto_1e
    const-string v2, "BackgroundDexOptService"

    const-string v3, "SysProp pm.dexopt.downgrade_after_inactive_days not set"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const-wide v2, 0x7fffffffffffffffL

    return-wide v2
.end method

.method private getLowStorageThreshold(Landroid/content/Context;)J
    .registers 6
    .param p1, "context"  # Landroid/content/Context;

    .line 171
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v0

    .line 172
    .local v0, "lowThreshold":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_17

    .line 173
    const-string v2, "BackgroundDexOptService"

    const-string v3, "Invalid low storage threshold"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_17
    return-wide v0
.end method

.method private getPackageSize(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)J
    .registers 14
    .param p1, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .param p2, "pkg"  # Ljava/lang/String;

    .line 334
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 335
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const-wide/16 v2, 0x0

    .line 336
    .local v2, "size":J
    if-eqz v1, :cond_5d

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_5d

    .line 337
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    .line 338
    .local v4, "path":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 339
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 341
    :cond_25
    invoke-direct {p0, v4}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v2, v5

    .line 342
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    .line 343
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v6, v5

    move-wide v7, v2

    move v2, v0

    .end local v2  # "size":J
    .local v7, "size":J
    :goto_3b
    if-ge v2, v6, :cond_5b

    aget-object v3, v5, v2

    .line 344
    .local v3, "splitSourceDir":Ljava/lang/String;
    new-array v9, v0, [Ljava/lang/String;

    invoke-static {v3, v9}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v9

    invoke-interface {v9}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    .line 345
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_53

    .line 346
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 348
    :cond_53
    invoke-direct {p0, v4}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v9

    add-long/2addr v7, v9

    .line 343
    .end local v3  # "splitSourceDir":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_5b
    move-wide v2, v7

    .line 351
    .end local v7  # "size":J
    .restart local v2  # "size":J
    :cond_5c
    return-wide v2

    .line 353
    .end local v4  # "path":Ljava/io/File;
    :cond_5d
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method private idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I
    .registers 5
    .param p1, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .param p3, "context"  # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    .line 273
    .local p2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method private idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;Z)I
    .registers 15
    .param p1, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .param p3, "context"  # Landroid/content/Context;
    .param p4, "forceDexOpt"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Z)I"
        }
    .end annotation

    .line 280
    .local p2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v0, "BackgroundDexOptService"

    const-string v1, "Performing idle optimizations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 285
    invoke-direct {p0, p3}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold(Landroid/content/Context;)J

    move-result-wide v0

    .line 289
    .local v0, "lowStorageThreshold":J
    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, v0

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;JZZ)I

    move-result v2

    .line 293
    .local v2, "result":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    .line 294
    return v2

    .line 296
    :cond_25
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->supportSecondaryDex()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 297
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/pm/BackgroundDexOptService;->reconcileSecondaryDexFiles(Lcom/android/server/pm/dex/DexManager;)I

    move-result v9

    .line 298
    .end local v2  # "result":I
    .local v9, "result":I
    if-ne v9, v3, :cond_36

    .line 299
    return v9

    .line 305
    :cond_36
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, v0

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;JZZ)I

    move-result v2

    .line 309
    .end local v9  # "result":I
    .restart local v2  # "result":I
    :cond_40
    return v2
.end method

.method private static isBackgroundDexoptDisabled()Z
    .registers 2

    .line 669
    const-string/jumbo v0, "pm.dexopt.disable_bg_dexopt"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$performDexOptPrimary$0(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Ljava/lang/Integer;
    .registers 5
    .param p0, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "reason"  # I
    .param p3, "dexoptFlags"  # I

    .line 483
    new-instance v0, Lcom/android/server/pm/dex/DexoptOptions;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->performDexOptWithStatus(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$performDexOptSecondary$1(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;
    .registers 3
    .param p0, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .param p1, "dexoptOptions"  # Lcom/android/server/pm/dex/DexoptOptions;

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 493
    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    .line 492
    :goto_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static notifyPackageChanged(Ljava/lang/String;)V
    .registers 3
    .param p0, "packageName"  # Ljava/lang/String;

    .line 140
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesPrimary:Landroid/util/ArraySet;

    monitor-enter v0

    .line 141
    :try_start_3
    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesPrimary:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 142
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_16

    .line 143
    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesSecondary:Landroid/util/ArraySet;

    monitor-enter v1

    .line 144
    :try_start_c
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesSecondary:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 145
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v0

    .line 142
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private notifyPinService(Landroid/util/ArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 651
    .local p1, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-class v0, Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService;

    .line 652
    .local v0, "pinnerService":Lcom/android/server/PinnerService;
    if-eqz v0, :cond_24

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pinning optimized code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackgroundDexOptService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/PinnerService;->update(Landroid/util/ArraySet;Z)V

    .line 656
    :cond_24
    return-void
.end method

.method private optimizePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZ)Z
    .registers 8
    .param p1, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "isForPrimaryDex"  # Z
    .param p4, "forceDexOpt"  # Z

    .line 462
    const/4 v0, 0x3

    .line 463
    .local v0, "reason":I
    const/16 v1, 0x205

    .line 468
    .local v1, "dexoptFlags":I
    if-nez p4, :cond_8

    .line 469
    or-int/lit16 v1, v1, 0x200

    goto :goto_a

    .line 471
    :cond_8
    or-int/lit8 v1, v1, 0x2

    .line 475
    :goto_a
    if-eqz p3, :cond_11

    .line 476
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptPrimary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z

    move-result v2

    goto :goto_15

    .line 477
    :cond_11
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptSecondary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z

    move-result v2

    .line 475
    :goto_15
    return v2
.end method

.method private optimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;JZZ)I
    .registers 22
    .param p1, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .param p3, "lowStorageThreshold"  # J
    .param p5, "isForPrimaryDex"  # Z
    .param p6, "forceDexOpt"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;JZZ)I"
        }
    .end annotation

    .line 361
    .local p2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move/from16 v4, p5

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 362
    .local v5, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    sget-wide v6, Lcom/android/server/pm/BackgroundDexOptService;->mDowngradeUnusedAppsThresholdInMillis:J

    invoke-virtual {v1, v6, v7}, Lcom/android/server/pm/PackageManagerService;->getUnusedPackages(J)Ljava/util/Set;

    move-result-object v6

    .line 363
    .local v6, "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsused Packages "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-static {v8, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BackgroundDexOptService"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-wide/16 v9, 0x2

    mul-long/2addr v9, v2

    .line 369
    .local v9, "lowStorageThresholdForDowngrade":J
    invoke-direct {p0, v9, v10}, Lcom/android/server/pm/BackgroundDexOptService;->shouldDowngrade(J)Z

    move-result v7

    .line 370
    .local v7, "shouldDowngrade":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Should Downgrade "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v8, 0x0

    .line 372
    .local v8, "dex_opt_performed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_81

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 373
    .local v12, "pkg":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/BackgroundDexOptService;->abortIdleOptimizations(J)I

    move-result v13

    .line 374
    .local v13, "abort_code":I
    const/4 v14, 0x2

    if-ne v13, v14, :cond_62

    .line 375
    return v13

    .line 378
    :cond_62
    invoke-interface {v6, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_71

    if-eqz v7, :cond_71

    .line 379
    invoke-direct {p0, v1, v12, v4}, Lcom/android/server/pm/BackgroundDexOptService;->downgradePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)Z

    move-result v8

    move/from16 v14, p6

    goto :goto_7b

    .line 381
    :cond_71
    const/4 v14, 0x3

    if-ne v13, v14, :cond_75

    .line 383
    goto :goto_4e

    .line 385
    :cond_75
    move/from16 v14, p6

    invoke-direct {p0, v1, v12, v4, v14}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZ)Z

    move-result v8

    .line 387
    :goto_7b
    if-eqz v8, :cond_80

    .line 388
    invoke-virtual {v5, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 390
    .end local v12  # "pkg":Ljava/lang/String;
    .end local v13  # "abort_code":I
    :cond_80
    goto :goto_4e

    .line 392
    :cond_81
    move/from16 v14, p6

    invoke-direct {p0, v5}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 393
    const/4 v11, 0x0

    return v11
.end method

.method private performDexOptPrimary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z
    .registers 8
    .param p1, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "reason"  # I
    .param p4, "dexoptFlags"  # I

    .line 482
    new-instance v0, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$-KiE2NsUP--OYmoSDt9BwEQICZw;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$-KiE2NsUP--OYmoSDt9BwEQICZw;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Lcom/android/server/pm/BackgroundDexOptService;->trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I

    move-result v0

    .line 484
    .local v0, "result":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    move v1, v2

    :cond_e
    return v1
.end method

.method private performDexOptSecondary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z
    .registers 8
    .param p1, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "reason"  # I
    .param p4, "dexoptFlags"  # I

    .line 489
    new-instance v0, Lcom/android/server/pm/dex/DexoptOptions;

    or-int/lit8 v1, p4, 0x8

    invoke-direct {v0, p2, p3, v1}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 491
    .local v0, "dexoptOptions":Lcom/android/server/pm/dex/DexoptOptions;
    new-instance v1, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$TAsfDUuoxt92xKFoSCfpMUmY2Es;

    invoke-direct {v1, p1, v0}, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$TAsfDUuoxt92xKFoSCfpMUmY2Es;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/dex/DexoptOptions;)V

    const/4 v2, 0x1

    invoke-direct {p0, p2, v2, v1}, Lcom/android/server/pm/BackgroundDexOptService;->trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I

    move-result v1

    .line 495
    .local v1, "result":I
    if-ne v1, v2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return v2
.end method

.method private postBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V
    .registers 16
    .param p1, "jobParams"  # Landroid/app/job/JobParameters;
    .param p2, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 198
    .local p3, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 200
    .local v0, "lowBatteryThreshold":I
    invoke-direct {p0, p0}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold(Landroid/content/Context;)J

    move-result-wide v1

    .line 202
    .local v1, "lowThreshold":J
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 204
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 205
    .local v3, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 206
    .local v6, "pkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_33

    .line 208
    return-void

    .line 210
    :cond_33
    iget-object v7, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 212
    goto :goto_8d

    .line 214
    :cond_3c
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getBatteryLevel()I

    move-result v7

    if-ge v7, v0, :cond_43

    .line 216
    goto :goto_8d

    .line 218
    :cond_43
    iget-object v7, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v7

    .line 219
    .local v7, "usableSpace":J
    cmp-long v9, v7, v1

    const-string v10, "BackgroundDexOptService"

    if-gez v9, :cond_64

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Aborting background dex opt job due to low storage: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    goto :goto_8d

    .line 226
    :cond_64
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v9, :cond_7c

    .line 227
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updating package "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_7c
    new-instance v9, Lcom/android/server/pm/dex/DexoptOptions;

    const/4 v10, 0x4

    const/4 v11, 0x1

    invoke-direct {v9, v6, v11, v10}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p2, v9}, Lcom/android/server/pm/PackageManagerService;->performDexOptWithStatus(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v9

    .line 242
    .local v9, "result":I
    if-ne v9, v11, :cond_8c

    .line 243
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v6  # "pkg":Ljava/lang/String;
    .end local v7  # "usableSpace":J
    .end local v9  # "result":I
    :cond_8c
    goto :goto_1e

    .line 246
    :cond_8d
    :goto_8d
    invoke-direct {p0, v3}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 248
    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 249
    return-void
.end method

.method private reconcileSecondaryDexFiles(Lcom/android/server/pm/dex/DexManager;)I
    .registers 5
    .param p1, "dm"  # Lcom/android/server/pm/dex/DexManager;

    .line 442
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexManager;->getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 443
    .local v1, "p":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 444
    const/4 v0, 0x2

    return v0

    .line 446
    :cond_1e
    invoke-virtual {p1, v1}, Lcom/android/server/pm/dex/DexManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    .line 447
    .end local v1  # "p":Ljava/lang/String;
    goto :goto_8

    .line 448
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public static runFlymeIdleOptimizationsNow(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Ljava/util/List;)Z
    .registers 7
    .param p0, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .param p1, "context"  # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 582
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService;

    invoke-direct {v0}, Lcom/android/server/pm/BackgroundDexOptService;-><init>()V

    .line 584
    .local v0, "bdos":Lcom/android/server/pm/BackgroundDexOptService;
    if-nez p2, :cond_c

    .line 585
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getOptimizablePackages()Landroid/util/ArraySet;

    move-result-object v1

    .local v1, "packagesToOptimize":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_11

    .line 587
    .end local v1  # "packagesToOptimize":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_c
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 589
    .restart local v1  # "packagesToOptimize":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_11
    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;Z)I

    move-result v3

    .line 590
    .local v3, "result":I
    if-nez v3, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    return v2
.end method

.method private runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
    .registers 11
    .param p1, "jobParams"  # Landroid/app/job/JobParameters;
    .param p2, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 253
    .local p3, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v6, Lcom/android/server/pm/BackgroundDexOptService$2;

    const-string v2, "BackgroundDexOptService_IdleOptimization"

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/BackgroundDexOptService$2;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/app/job/JobParameters;)V

    .line 264
    invoke-virtual {v6}, Lcom/android/server/pm/BackgroundDexOptService$2;->start()V

    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public static runIdleOptimizationsNow(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Ljava/util/List;)Z
    .registers 7
    .param p0, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .param p1, "context"  # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 561
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService;

    invoke-direct {v0}, Lcom/android/server/pm/BackgroundDexOptService;-><init>()V

    .line 563
    .local v0, "bdos":Lcom/android/server/pm/BackgroundDexOptService;
    if-nez p2, :cond_c

    .line 564
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getOptimizablePackages()Landroid/util/ArraySet;

    move-result-object v1

    .local v1, "packagesToOptimize":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_11

    .line 566
    .end local v1  # "packagesToOptimize":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_c
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 568
    .restart local v1  # "packagesToOptimize":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_11
    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I

    move-result v2

    .line 569
    .local v2, "result":I
    if-nez v2, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    return v3
.end method

.method private runPostBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
    .registers 11
    .param p1, "jobParams"  # Landroid/app/job/JobParameters;
    .param p2, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 181
    .local p3, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 183
    const/4 v0, 0x0

    return v0

    .line 185
    :cond_a
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$1;

    const-string v3, "BackgroundDexOptService_PostBootUpdate"

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/BackgroundDexOptService$1;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V

    .line 191
    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$1;->start()V

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"  # Landroid/content/Context;

    .line 110
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->isBackgroundDexoptDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    return-void

    .line 114
    :cond_7
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 118
    .local v0, "js":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const/16 v2, 0x321

    sget-object v3, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 119
    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 120
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 125
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const/16 v2, 0x320

    sget-object v3, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 126
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/pm/BackgroundDexOptService;->IDLE_OPTIMIZATION_PERIOD:J

    .line 128
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 131
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v1, :cond_60

    .line 132
    const-string v1, "BackgroundDexOptService"

    const-string v2, "Jobs scheduled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_60
    return-void
.end method

.method private shouldDowngrade(J)Z
    .registers 6
    .param p1, "lowStorageThresholdForDowngrade"  # J

    .line 544
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 545
    .local v0, "usableSpace":J
    cmp-long v2, v0, p1

    if-gez v2, :cond_c

    .line 546
    const/4 v2, 0x1

    return v2

    .line 549
    :cond_c
    const/4 v2, 0x0

    return v2
.end method

.method private supportSecondaryDex()Z
    .registers 3

    .line 437
    const-string v0, "dalvik.vm.dexopt.secondary"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I
    .registers 7
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "isForPrimaryDex"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 509
    .local p3, "performDexOptWrapper":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_5

    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesPrimary:Landroid/util/ArraySet;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesSecondary:Landroid/util/ArraySet;

    .line 510
    .local v0, "sFailedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_7
    monitor-enter v0

    .line 511
    :try_start_8
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 513
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 515
    :cond_11
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 516
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_2c

    .line 517
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 518
    .local v1, "result":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2b

    .line 519
    monitor-enter v0

    .line 520
    :try_start_23
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 521
    monitor-exit v0

    goto :goto_2b

    :catchall_28
    move-exception v2

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_28

    throw v2

    .line 523
    :cond_2b
    :goto_2b
    return v1

    .line 516
    .end local v1  # "result":I
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 7
    .param p1, "params"  # Landroid/app/job/JobParameters;

    .line 596
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    const-string v1, "BackgroundDexOptService"

    if-eqz v0, :cond_c

    .line 597
    const-string/jumbo v0, "onStartJob"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_c
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 604
    .local v0, "pm":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    .line 605
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v2, :cond_25

    .line 606
    const-string v2, "Low storage, skipping this run"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_25
    return v3

    .line 611
    :cond_26
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getOptimizablePackages()Landroid/util/ArraySet;

    move-result-object v2

    .line 612
    .local v2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 613
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v4, :cond_39

    .line 614
    const-string v4, "No packages to optimize"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_39
    return v3

    .line 620
    :cond_3a
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    const/16 v3, 0x321

    if-ne v1, v3, :cond_47

    .line 621
    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/pm/BackgroundDexOptService;->runPostBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_4b

    .line 623
    .end local v1  # "result":Z
    :cond_47
    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z

    move-result v1

    .line 626
    .restart local v1  # "result":Z
    :goto_4b
    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 5
    .param p1, "params"  # Landroid/app/job/JobParameters;

    .line 631
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v0, :cond_c

    .line 632
    const-string v0, "BackgroundDexOptService"

    const-string/jumbo v1, "onStopJob"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_c
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v1, 0x321

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1c

    .line 636
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 640
    const/4 v0, 0x0

    return v0

    .line 642
    :cond_1c
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 646
    return v2
.end method
