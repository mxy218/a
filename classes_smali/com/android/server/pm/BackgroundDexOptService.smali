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
    .registers 5

    .line 499
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 501
    const/4 p1, 0x2

    return p1

    .line 503
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 504
    cmp-long p1, v0, p1

    if-gez p1, :cond_2c

    .line 506
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Aborting background dex opt job due to low storage: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackgroundDexOptService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 p1, 0x3

    return p1

    .line 510
    :cond_2c
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic access$000(Lcom/android/server/pm/BackgroundDexOptService;Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V
    .registers 4

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/BackgroundDexOptService;->postBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I
    .registers 4

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private downgradePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)Z
    .registers 13

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downgrading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundDexOptService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    nop

    .line 388
    nop

    .line 389
    nop

    .line 392
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/BackgroundDexOptService;->getPackageSize(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)J

    move-result-wide v4

    .line 394
    const/4 v0, 0x5

    const/16 v1, 0x224

    if-eqz p3, :cond_32

    .line 397
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageManagerService;->canHaveOatDir(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2d

    .line 400
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Ljava/lang/String;)V

    const/4 p3, 0x0

    goto :goto_36

    .line 402
    :cond_2d
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptPrimary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z

    move-result p3

    goto :goto_36

    .line 405
    :cond_32
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptSecondary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z

    move-result p3

    .line 408
    :goto_36
    if-eqz p3, :cond_43

    .line 409
    const/16 v2, 0x80

    .line 410
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/BackgroundDexOptService;->getPackageSize(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x0

    .line 409
    move-object v3, p2

    invoke-static/range {v2 .. v8}, Landroid/util/StatsLog;->write(ILjava/lang/String;JJZ)I

    .line 412
    :cond_43
    return p3
.end method

.method private getBatteryLevel()I
    .registers 6

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 151
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/BackgroundDexOptService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 152
    const/4 v1, -0x1

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 153
    const-string/jumbo v3, "scale"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 154
    const-string/jumbo v3, "present"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 156
    const/16 v3, 0x64

    if-nez v0, :cond_27

    .line 158
    return v3

    .line 161
    :cond_27
    if-ltz v2, :cond_2f

    if-gtz v1, :cond_2c

    goto :goto_2f

    .line 166
    :cond_2c
    mul-int/2addr v2, v3

    div-int/2addr v2, v1

    return v2

    .line 163
    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    return v0
.end method

.method private getDirectorySize(Ljava/io/File;)J
    .registers 8

    .line 300
    nop

    .line 301
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 302
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_f
    if-ge v1, v0, :cond_1f

    aget-object v4, p1, v1

    .line 303
    invoke-direct {p0, v4}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 306
    :cond_1b
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 308
    :cond_1f
    return-wide v2
.end method

.method private static getDowngradeUnusedAppsThresholdInMillis()J
    .registers 4

    .line 609
    const-string/jumbo v0, "pm.dexopt.downgrade_after_inactive_days"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_1b

    .line 614
    :cond_10
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 611
    :cond_1b
    :goto_1b
    const-string v0, "BackgroundDexOptService"

    const-string v1, "SysProp pm.dexopt.downgrade_after_inactive_days not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method private getLowStorageThreshold(Landroid/content/Context;)J
    .registers 6

    .line 171
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v0

    .line 172
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_17

    .line 173
    const-string p1, "BackgroundDexOptService"

    const-string v2, "Invalid low storage threshold"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_17
    return-wide v0
.end method

.method private getPackageSize(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)J
    .registers 9

    .line 316
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 317
    nop

    .line 318
    const-wide/16 v1, 0x0

    if-eqz p1, :cond_5e

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_5e

    .line 319
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/String;

    invoke-static {p2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-interface {p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p2

    .line 320
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 321
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    .line 323
    :cond_26
    invoke-direct {p0, p2}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 324
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5d

    .line 325
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length p2, p1

    move-wide v2, v1

    move v1, v0

    :goto_3c
    if-ge v1, p2, :cond_5c

    aget-object v4, p1, v1

    .line 326
    new-array v5, v0, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    .line 327
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 328
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 330
    :cond_54
    invoke-direct {p0, v4}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_5c
    move-wide v1, v2

    .line 333
    :cond_5d
    return-wide v1

    .line 335
    :cond_5e
    return-wide v1
.end method

.method private idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I
    .registers 12
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

    .line 271
    const-string v0, "BackgroundDexOptService"

    const-string v1, "Performing idle optimizations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 276
    invoke-direct {p0, p3}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold(Landroid/content/Context;)J

    move-result-wide v0

    .line 278
    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;JZ)I

    move-result p3

    .line 280
    const/4 v2, 0x2

    if-ne p3, v2, :cond_24

    .line 281
    return p3

    .line 283
    :cond_24
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->supportSecondaryDex()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 284
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/server/pm/BackgroundDexOptService;->reconcileSecondaryDexFiles(Lcom/android/server/pm/dex/DexManager;)I

    move-result p3

    .line 285
    if-ne p3, v2, :cond_35

    .line 286
    return p3

    .line 288
    :cond_35
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;JZ)I

    move-result p3

    .line 291
    :cond_3e
    return p3
.end method

.method private static isBackgroundDexoptDisabled()Z
    .registers 2

    .line 618
    const-string/jumbo v0, "pm.dexopt.disable_bg_dexopt"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$performDexOptPrimary$0(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Ljava/lang/Integer;
    .registers 5

    .line 454
    new-instance v0, Lcom/android/server/pm/dex/DexoptOptions;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->performDexOptWithStatus(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$performDexOptSecondary$1(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;
    .registers 2

    .line 463
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 464
    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, -0x1

    .line 463
    :goto_9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static notifyPackageChanged(Ljava/lang/String;)V
    .registers 3

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
    move-exception p0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw p0

    .line 142
    :catchall_16
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
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

    .line 600
    const-class v0, Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService;

    .line 601
    if-eqz v0, :cond_24

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pinning optimized code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackgroundDexOptService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/PinnerService;->update(Landroid/util/ArraySet;Z)V

    .line 605
    :cond_24
    return-void
.end method

.method private optimizePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)Z
    .registers 6

    .line 441
    nop

    .line 442
    nop

    .line 446
    const/4 v0, 0x3

    const/16 v1, 0x205

    if-eqz p3, :cond_c

    .line 447
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptPrimary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z

    move-result p1

    goto :goto_10

    .line 448
    :cond_c
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptSecondary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z

    move-result p1

    .line 446
    :goto_10
    return p1
.end method

.method private optimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;JZ)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;JZ)I"
        }
    .end annotation

    .line 340
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 341
    sget-wide v1, Lcom/android/server/pm/BackgroundDexOptService;->mDowngradeUnusedAppsThresholdInMillis:J

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/PackageManagerService;->getUnusedPackages(J)Ljava/util/Set;

    move-result-object v1

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsused Packages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-static {v3, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackgroundDexOptService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-wide/16 v4, 0x2

    mul-long/2addr v4, p3

    .line 348
    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->shouldDowngrade(J)Z

    move-result v2

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Should Downgrade "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    nop

    .line 351
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_47
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 352
    invoke-direct {p0, p3, p4}, Lcom/android/server/pm/BackgroundDexOptService;->abortIdleOptimizations(J)I

    move-result v4

    .line 353
    const/4 v5, 0x2

    if-ne v4, v5, :cond_5b

    .line 354
    return v4

    .line 357
    :cond_5b
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    if-eqz v2, :cond_68

    .line 358
    invoke-direct {p0, p1, v3, p5}, Lcom/android/server/pm/BackgroundDexOptService;->downgradePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_70

    .line 360
    :cond_68
    const/4 v5, 0x3

    if-ne v4, v5, :cond_6c

    .line 362
    goto :goto_47

    .line 364
    :cond_6c
    invoke-direct {p0, p1, v3, p5}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)Z

    move-result v4

    .line 366
    :goto_70
    if-eqz v4, :cond_75

    .line 367
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_75
    goto :goto_47

    .line 371
    :cond_76
    invoke-direct {p0, v0}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 372
    const/4 p1, 0x0

    return p1
.end method

.method private performDexOptPrimary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z
    .registers 6

    .line 453
    new-instance v0, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$-KiE2NsUP--OYmoSDt9BwEQICZw;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$-KiE2NsUP--OYmoSDt9BwEQICZw;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/pm/BackgroundDexOptService;->trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I

    move-result p2

    .line 455
    const/4 p3, 0x1

    if-ne p2, p3, :cond_e

    move p1, p3

    :cond_e
    return p1
.end method

.method private performDexOptSecondary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z
    .registers 6

    .line 460
    new-instance v0, Lcom/android/server/pm/dex/DexoptOptions;

    or-int/lit8 p4, p4, 0x8

    invoke-direct {v0, p2, p3, p4}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 462
    new-instance p3, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$TAsfDUuoxt92xKFoSCfpMUmY2Es;

    invoke-direct {p3, p1, v0}, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$TAsfDUuoxt92xKFoSCfpMUmY2Es;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/dex/DexoptOptions;)V

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/pm/BackgroundDexOptService;->trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I

    move-result p2

    .line 466
    if-ne p2, p1, :cond_14

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method private postBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V
    .registers 13
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
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 200
    invoke-direct {p0, p0}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold(Landroid/content/Context;)J

    move-result-wide v1

    .line 202
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 204
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 205
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 206
    iget-object v6, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 208
    return-void

    .line 210
    :cond_33
    iget-object v6, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 212
    goto :goto_75

    .line 214
    :cond_3c
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getBatteryLevel()I

    move-result v6

    if-ge v6, v0, :cond_43

    .line 216
    goto :goto_75

    .line 218
    :cond_43
    iget-object v6, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    .line 219
    cmp-long v8, v6, v1

    if-gez v8, :cond_64

    .line 221
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Aborting background dex opt job due to low storage: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BackgroundDexOptService"

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    goto :goto_75

    .line 238
    :cond_64
    new-instance v6, Lcom/android/server/pm/dex/DexoptOptions;

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-direct {v6, v5, v8, v7}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p2, v6}, Lcom/android/server/pm/PackageManagerService;->performDexOptWithStatus(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v6

    .line 242
    if-ne v6, v8, :cond_74

    .line 243
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_74
    goto :goto_1e

    .line 246
    :cond_75
    :goto_75
    invoke-direct {p0, v3}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 248
    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 249
    return-void
.end method

.method private reconcileSecondaryDexFiles(Lcom/android/server/pm/dex/DexManager;)I
    .registers 5

    .line 421
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

    .line 422
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 423
    const/4 p1, 0x2

    return p1

    .line 425
    :cond_1e
    invoke-virtual {p1, v1}, Lcom/android/server/pm/dex/DexManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    .line 426
    goto :goto_8

    .line 427
    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method private runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
    .registers 11
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
    const/4 p1, 0x1

    return p1
.end method

.method public static runIdleOptimizationsNow(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Ljava/util/List;)Z
    .registers 5
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

    .line 532
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService;

    invoke-direct {v0}, Lcom/android/server/pm/BackgroundDexOptService;-><init>()V

    .line 534
    if-nez p2, :cond_c

    .line 535
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getOptimizablePackages()Landroid/util/ArraySet;

    move-result-object p2

    goto :goto_12

    .line 537
    :cond_c
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object p2, v1

    .line 539
    :goto_12
    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I

    move-result p0

    .line 540
    if-nez p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private runPostBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
    .registers 11
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
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 183
    const/4 p1, 0x0

    return p1

    .line 185
    :cond_a
    new-instance v6, Lcom/android/server/pm/BackgroundDexOptService$1;

    const-string v2, "BackgroundDexOptService_PostBootUpdate"

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/BackgroundDexOptService$1;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V

    .line 191
    invoke-virtual {v6}, Lcom/android/server/pm/BackgroundDexOptService$1;->start()V

    .line 192
    const/4 p1, 0x1

    return p1
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 7

    .line 110
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->isBackgroundDexoptDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    return-void

    .line 114
    :cond_7
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 118
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    const/16 v1, 0x321

    sget-object v2, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 119
    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 120
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 125
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    const/16 v1, 0x320

    sget-object v2, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    sget-wide v1, Lcom/android/server/pm/BackgroundDexOptService;->IDLE_OPTIMIZATION_PERIOD:J

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 125
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 134
    return-void
.end method

.method private shouldDowngrade(J)Z
    .registers 5

    .line 515
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 516
    cmp-long p1, v0, p1

    if-gez p1, :cond_c

    .line 517
    const/4 p1, 0x1

    return p1

    .line 520
    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private supportSecondaryDex()Z
    .registers 3

    .line 416
    const-string v0, "dalvik.vm.dexopt.secondary"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I
    .registers 5
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

    .line 480
    if-eqz p2, :cond_5

    sget-object p2, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesPrimary:Landroid/util/ArraySet;

    goto :goto_7

    :cond_5
    sget-object p2, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesSecondary:Landroid/util/ArraySet;

    .line 481
    :goto_7
    monitor-enter p2

    .line 482
    :try_start_8
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 484
    const/4 p1, 0x0

    monitor-exit p2

    return p1

    .line 486
    :cond_11
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 487
    monitor-exit p2
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_2c

    .line 488
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 489
    const/4 v0, -0x1

    if-eq p3, v0, :cond_2b

    .line 490
    monitor-enter p2

    .line 491
    :try_start_23
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 492
    monitor-exit p2

    goto :goto_2b

    :catchall_28
    move-exception p1

    monitor-exit p2
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_28

    throw p1

    .line 494
    :cond_2b
    :goto_2b
    return p3

    .line 487
    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p1
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 6

    .line 552
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 553
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 557
    return v2

    .line 560
    :cond_11
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getOptimizablePackages()Landroid/util/ArraySet;

    move-result-object v1

    .line 561
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 565
    return v2

    .line 569
    :cond_1c
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    const/16 v3, 0x321

    if-ne v2, v3, :cond_29

    .line 570
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->runPostBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z

    move-result p1

    goto :goto_2d

    .line 572
    :cond_29
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z

    move-result p1

    .line 575
    :goto_2d
    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 584
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0x321

    if-ne p1, v1, :cond_10

    .line 585
    iget-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 589
    const/4 p1, 0x0

    return p1

    .line 591
    :cond_10
    iget-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 595
    return v0
.end method
