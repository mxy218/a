.class public Lcom/android/server/usage/StorageStatsService;
.super Landroid/app/usage/IStorageStatsManager$Stub;
.source "StorageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/StorageStatsService$H;,
        Lcom/android/server/usage/StorageStatsService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEFAULT_QUOTA:J

.field private static final DELAY_IN_MILLIS:J = 0x7530L

.field private static final PROP_DISABLE_QUOTA:Ljava/lang/String; = "fw.disable_quota"

.field private static final PROP_VERIFY_STORAGE:Ljava/lang/String; = "fw.verify_storage"

.field private static final TAG:Ljava/lang/String; = "StorageStatsService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mCacheQuotas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseLongArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/usage/StorageStatsService$H;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mPackage:Landroid/content/pm/PackageManager;

.field private final mStorage:Landroid/os/storage/StorageManager;

.field private final mUser:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 78
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 104
    invoke-direct {p0}, Landroid/app/usage/IStorageStatsManager$Stub;-><init>()V

    .line 105
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 106
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 107
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mUser:Landroid/os/UserManager;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    .line 109
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    .line 110
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    .line 112
    new-instance v0, Lcom/android/server/pm/Installer;

    invoke-direct {v0, p1}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 113
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Lcom/android/server/pm/Installer;->onStart()V

    .line 114
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService;->invalidateMounts()V

    .line 116
    new-instance p1, Lcom/android/server/usage/StorageStatsService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/usage/StorageStatsService$H;-><init>(Lcom/android/server/usage/StorageStatsService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService;->mHandler:Lcom/android/server/usage/StorageStatsService$H;

    .line 117
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService;->mHandler:Lcom/android/server/usage/StorageStatsService$H;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Lcom/android/server/usage/StorageStatsService$H;->sendEmptyMessage(I)Z

    .line 119
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    new-instance v0, Lcom/android/server/usage/StorageStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/StorageStatsService$1;-><init>(Lcom/android/server/usage/StorageStatsService;)V

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usage/StorageStatsService;)V
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService;->invalidateMounts()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/pm/Installer;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/usage/StorageStatsService;)Landroid/util/ArrayMap;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private static checkEquals(Ljava/lang/String;JJ)V
    .registers 6

    .line 446
    cmp-long v0, p1, p3

    if-eqz v0, :cond_25

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " expected "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " actual "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageStatsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_25
    return-void
.end method

.method private static checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    .registers 8

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " codeSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dataSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cacheSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " externalCodeSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->externalCodeSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " externalDataSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->externalDataSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " externalCacheSize"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide p1, p2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 443
    return-void
.end method

.method private static checkEquals(Ljava/lang/String;[J[J)V
    .registers 9

    .line 431
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_27

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 434
    :cond_27
    return-void
.end method

.method private enforcePermission(ILjava/lang/String;)V
    .registers 7

    .line 143
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    .line 145
    if-eqz v0, :cond_3e

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    .line 149
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.PACKAGE_USAGE_STATS"

    const-string v0, "StorageStatsService"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void

    .line 153
    :cond_17
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from UID "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " blocked by mode "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_3e
    return-void
.end method

.method private getAppIds(I)[I
    .registers 5

    .line 411
    nop

    .line 412
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 414
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 415
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 416
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    .line 418
    :cond_2a
    goto :goto_e

    .line 419
    :cond_2b
    return-object v0
.end method

.method private static getDefaultFlags()I
    .registers 2

    .line 423
    const/4 v0, 0x0

    const-string v1, "fw.disable_quota"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 424
    return v0

    .line 426
    :cond_a
    const/16 v0, 0x1000

    return v0
.end method

.method private invalidateMounts()V
    .registers 4

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->invalidateMounts()V
    :try_end_5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_5} :catch_6

    .line 139
    goto :goto_e

    .line 137
    :catch_6
    move-exception v0

    .line 138
    const-string v1, "StorageStatsService"

    const-string v2, "Failed to invalidate mounts"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    :goto_e
    return-void
.end method

.method static isCacheQuotaCalculationsEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 547
    const/4 v0, 0x1

    const-string v1, "enable_cache_quota_calculation"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;
    .registers 6

    .line 452
    new-instance v0, Landroid/app/usage/StorageStats;

    invoke-direct {v0}, Landroid/app/usage/StorageStats;-><init>()V

    .line 453
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/StorageStats;->codeBytes:J

    .line 454
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/StorageStats;->dataBytes:J

    .line 455
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/StorageStats;->cacheBytes:J

    .line 456
    return-object v0
.end method


# virtual methods
.method public getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J
    .registers 7

    .line 225
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 227
    nop

    .line 228
    iget-object p2, p0, Lcom/android/server/usage/StorageStatsService;->mUser:Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-wide/16 v0, 0x0

    :goto_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 229
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/usage/StorageStatsService;->queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v2

    .line 230
    iget-wide v2, v2, Landroid/app/usage/StorageStats;->cacheBytes:J

    add-long/2addr v0, v2

    .line 231
    goto :goto_14

    .line 232
    :cond_2b
    return-wide v0
.end method

.method public getCacheQuotaBytes(Ljava/lang/String;ILjava/lang/String;)J
    .registers 6

    .line 237
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 239
    iget-object p3, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1e

    .line 240
    iget-object p3, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseLongArray;

    .line 241
    sget-wide v0, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide p1

    return-wide p1

    .line 244
    :cond_1e
    sget-wide p1, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    return-wide p1
.end method

.method public getFreeBytes(Ljava/lang/String;Ljava/lang/String;)J
    .registers 10

    .line 197
    const-string p2, "android"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 201
    :try_start_6
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_c} :catch_38
    .catchall {:try_start_6 .. :try_end_c} :catchall_36

    .line 204
    nop

    .line 209
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/StorageStatsService;->isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/StorageStatsService;->getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    .line 211
    iget-object v3, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    move-result-wide v3

    .line 212
    const-wide/16 v5, 0x0

    sub-long/2addr p1, v3

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 214
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_36

    add-long/2addr v2, p1

    .line 219
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    return-wide v2

    .line 216
    :cond_2e
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide p1
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_36

    .line 219
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 216
    return-wide p1

    .line 219
    :catchall_36
    move-exception p1

    goto :goto_3f

    .line 202
    :catch_38
    move-exception p1

    .line 203
    :try_start_39
    new-instance p2, Landroid/os/ParcelableException;

    invoke-direct {p2, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_36

    .line 219
    :goto_3f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getTotalBytes(Ljava/lang/String;Ljava/lang/String;)J
    .registers 6

    .line 181
    sget-object p2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    if-ne p1, p2, :cond_f

    .line 182
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide p1

    return-wide p1

    .line 184
    :cond_f
    iget-object p2, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {p2, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p2

    .line 185
    if-eqz p2, :cond_20

    .line 189
    iget-object p1, p2, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iget-wide p1, p1, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {p1, p2}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide p1

    return-wide p1

    .line 186
    :cond_20
    new-instance p2, Landroid/os/ParcelableException;

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find storage device for UUID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 161
    :try_start_0
    iget-object p2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/Installer;->isQuotaSupported(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 162
    :catch_7
    move-exception p1

    .line 163
    new-instance p2, Landroid/os/ParcelableException;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public isReservedSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 169
    sget-object p2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_14

    .line 170
    const-string/jumbo p1, "vold.has_reserved"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_12

    sget-boolean p1, Landroid/os/Build;->IS_CONTAINER:Z

    if-eqz p1, :cond_13

    :cond_12
    const/4 v0, 0x1

    :cond_13
    return v0

    .line 173
    :cond_14
    return v0
.end method

.method notifySignificantDelta()V
    .registers 5

    .line 556
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 557
    const-string v1, "content://com.android.externalstorage.documents/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 556
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 558
    return-void
.end method

.method public queryExternalStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/ExternalStorageStats;
    .registers 7

    .line 378
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_f

    .line 379
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "StorageStatsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 386
    invoke-direct {p0, p2}, Lcom/android/server/usage/StorageStatsService;->getAppIds(I)[I

    move-result-object p3

    .line 389
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/server/pm/Installer;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v0

    .line 391
    const-string v1, "fw.verify_storage"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 392
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1, p2, v2, p3}, Lcom/android/server/pm/Installer;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object p1

    .line 394
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "External "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;[J[J)V
    :try_end_47
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1a .. :try_end_47} :catch_6b

    .line 398
    :cond_47
    nop

    .line 400
    new-instance p1, Landroid/app/usage/ExternalStorageStats;

    invoke-direct {p1}, Landroid/app/usage/ExternalStorageStats;-><init>()V

    .line 401
    aget-wide p2, v0, v2

    iput-wide p2, p1, Landroid/app/usage/ExternalStorageStats;->totalBytes:J

    .line 402
    const/4 p2, 0x1

    aget-wide p2, v0, p2

    iput-wide p2, p1, Landroid/app/usage/ExternalStorageStats;->audioBytes:J

    .line 403
    const/4 p2, 0x2

    aget-wide p2, v0, p2

    iput-wide p2, p1, Landroid/app/usage/ExternalStorageStats;->videoBytes:J

    .line 404
    const/4 p2, 0x3

    aget-wide p2, v0, p2

    iput-wide p2, p1, Landroid/app/usage/ExternalStorageStats;->imageBytes:J

    .line 405
    const/4 p2, 0x4

    aget-wide p2, v0, p2

    iput-wide p2, p1, Landroid/app/usage/ExternalStorageStats;->appBytes:J

    .line 406
    const/4 p2, 0x5

    aget-wide p2, v0, p2

    iput-wide p2, p1, Landroid/app/usage/ExternalStorageStats;->obbBytes:J

    .line 407
    return-object p1

    .line 396
    :catch_6b
    move-exception p1

    .line 397
    new-instance p2, Landroid/os/ParcelableException;

    new-instance p3, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .registers 16

    .line 250
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const-string v5, "StorageStatsService"

    if-eq p3, v4, :cond_f

    .line 251
    iget-object v4, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_f
    :try_start_f
    iget-object v4, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2000

    invoke-virtual {v4, p2, v6, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_17} :catch_90

    .line 261
    nop

    .line 263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iget v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v7, :cond_21

    goto :goto_28

    .line 266
    :cond_21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p0, v6, p4}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 269
    :goto_28
    iget-object v6, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    iget v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3f

    .line 271
    iget v1, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/usage/StorageStatsService;->queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0

    .line 274
    :cond_3f
    iget v2, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 275
    new-array v2, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v2, v9

    .line 276
    new-array v7, v7, [J

    .line 277
    new-array v1, v9, [Ljava/lang/String;

    .line 279
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v9

    if-eqz v9, :cond_5c

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v9

    if-nez v9, :cond_5c

    move-object v9, v1

    goto :goto_69

    .line 282
    :cond_5c
    const-class v9, Ljava/lang/String;

    .line 283
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v4

    .line 282
    invoke-static {v9, v1, v4}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v9, v1

    .line 286
    :goto_69
    new-instance v10, Landroid/content/pm/PackageStats;

    invoke-direct {v10, v5}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 288
    :try_start_6e
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v4, 0x0

    move-object v1, p1

    move v3, p3

    move v5, v8

    move-object v6, v7

    move-object v7, v9

    move-object v8, v10

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V
    :try_end_7a
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_6e .. :try_end_7a} :catch_80

    .line 292
    nop

    .line 293
    invoke-static {v10}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0

    .line 290
    :catch_80
    move-exception v0

    .line 291
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 259
    :catch_90
    move-exception v0

    .line 260
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .registers 21

    .line 299
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 300
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    .line 302
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const-string v13, "StorageStatsService"

    if-eq v11, v2, :cond_1b

    .line 303
    iget-object v2, v0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v2, v3, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v2, v1, :cond_22

    goto :goto_2b

    .line 310
    :cond_22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v3, p3

    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 313
    :goto_2b
    iget-object v2, v0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 314
    array-length v2, v14

    new-array v15, v2, [J

    .line 315
    const/4 v10, 0x0

    new-array v2, v10, [Ljava/lang/String;

    .line 317
    move-object v9, v2

    move v2, v10

    :goto_3d
    array-length v3, v14

    if-ge v2, v3, :cond_6f

    .line 319
    :try_start_40
    iget-object v3, v0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    aget-object v4, v14, v2

    const/16 v5, 0x2000

    invoke-virtual {v3, v4, v5, v11}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 321
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v4

    if-nez v4, :cond_57

    goto :goto_64

    .line 324
    :cond_57
    const-class v4, Ljava/lang/String;

    .line 325
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-static {v4, v9, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, [Ljava/lang/String;
    :try_end_64
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_40 .. :try_end_64} :catch_68

    .line 329
    :goto_64
    nop

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 327
    :catch_68
    move-exception v0

    .line 328
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 332
    :cond_6f
    new-instance v8, Landroid/content/pm/PackageStats;

    invoke-direct {v8, v13}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 334
    :try_start_74
    iget-object v2, v0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v6

    move-object/from16 v3, p1

    move-object v4, v14

    move v5, v11

    move v7, v12

    move-object/from16 p3, v8

    move-object v8, v15

    move-object/from16 v16, v9

    move v1, v10

    move-object/from16 v10, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 337
    const-string v2, "fw.verify_storage"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 338
    new-instance v1, Landroid/content/pm/PackageStats;

    invoke-direct {v1, v13}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 339
    iget-object v2, v0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object v4, v14

    move v5, v11

    move v7, v12

    move-object v8, v15

    move-object/from16 v9, v16

    move-object v10, v1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    :try_end_be
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_74 .. :try_end_be} :catch_c7

    goto :goto_c1

    .line 337
    :cond_bf
    move-object/from16 v2, p3

    .line 345
    :goto_c1
    nop

    .line 346
    invoke-static {v2}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0

    .line 343
    :catch_c7
    move-exception v0

    .line 344
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .registers 13

    .line 351
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v1, "StorageStatsService"

    if-eq p2, v0, :cond_f

    .line 352
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforcePermission(ILjava/lang/String;)V

    .line 359
    invoke-direct {p0, p2}, Lcom/android/server/usage/StorageStatsService;->getAppIds(I)[I

    move-result-object p3

    .line 360
    new-instance v0, Landroid/content/pm/PackageStats;

    invoke-direct {v0, v1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 362
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v5

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V

    .line 364
    const-string v2, "fw.verify_storage"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 365
    new-instance v8, Landroid/content/pm/PackageStats;

    invoke-direct {v8, v1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 366
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "User "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8, v0}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    :try_end_58
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1f .. :try_end_58} :catch_5e

    .line 371
    :cond_58
    nop

    .line 372
    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object p1

    return-object p1

    .line 369
    :catch_5e
    move-exception p1

    .line 370
    new-instance p2, Landroid/os/ParcelableException;

    new-instance p3, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
