.class public Lcom/android/settings/fuelgauge/BatteryUtils;
.super Ljava/lang/Object;
.source "BatteryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryUtils$StatusType;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "appops"

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 110
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;
    .registers 2

    .line 99
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    if-eqz v0, :cond_a

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->isDataCorrupted()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 100
    :cond_a
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 102
    :cond_15
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-object p0
.end method

.method private getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;I)J
    .registers 6

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    const/4 v2, 0x3

    .line 159
    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v0

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "background time(us): "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J
    .registers 7

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    .line 169
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;IJ)J

    move-result-wide v2

    .line 170
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getForegroundServiceTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide p0

    add-long/2addr v2, p0

    return-wide v2
.end method

.method private getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;I)J
    .registers 5

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    .line 154
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;IJ)J
    .registers 16

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BatteryUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    array-length v2, v0

    const-wide/16 v4, 0x0

    :goto_2a
    if-ge v1, v2, :cond_53

    aget v6, v0, v1

    .line 140
    invoke-virtual {p1, v6, p3, p4, p2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v7

    .line 141
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " time(us): "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-long/2addr v4, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 144
    :cond_53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "foreground time(us): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide p0

    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    .line 148
    invoke-static {p0, p1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private hasLauncherEntry([Ljava/lang/String;)Z
    .registers 6

    .line 621
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 622
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x1c0200

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 635
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v2, v0, :cond_33

    .line 636
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 637
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 p0, 0x1

    return p0

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_33
    return v1
.end method

.method private isDataCorrupted()Z
    .registers 2

    .line 528
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method private isExcessiveBackgroundAnomaly(Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;)Z
    .registers 2

    .line 595
    iget-object p0, p1, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->anomalyType:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private isSystemApp(Landroid/content/pm/PackageManager;[Ljava/lang/String;)Z
    .registers 9

    .line 605
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_2c

    aget-object v2, p2, v1

    .line 607
    :try_start_7
    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 609
    iget v2, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_d} :catch_12

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_29

    return v3

    :catch_12
    move-exception v3

    .line 613
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BatteryUtils"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2c
    return v0
.end method

.method private isSystemUid(I)Z
    .registers 2

    .line 600
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    if-ltz p0, :cond_c

    const/16 p1, 0x2710

    if-ge p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static logRuntime(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public calculateBatteryPercent(DDDI)D
    .registers 10

    const-wide/16 v0, 0x0

    cmpl-double p0, p3, v0

    if-nez p0, :cond_7

    return-wide v0

    :cond_7
    sub-double/2addr p3, p5

    div-double/2addr p1, p3

    int-to-double p3, p7

    mul-double/2addr p1, p3

    return-wide p1
.end method

.method public calculateLastFullChargeTime(Lcom/android/internal/os/BatteryStatsHelper;J)J
    .registers 4

    .line 386
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide p0

    sub-long/2addr p2, p0

    return-wide p2
.end method

.method public calculateScreenUsageTime(Lcom/android/internal/os/BatteryStatsHelper;)J
    .registers 3

    .line 398
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 397
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->findBatterySipperByType(Ljava/util/List;Lcom/android/internal/os/BatterySipper$DrainType;)Lcom/android/internal/os/BatterySipper;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 399
    iget-wide p0, p0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    goto :goto_11

    :cond_f
    const-wide/16 p0, 0x0

    :goto_11
    return-wide p0
.end method

.method public clearForceAppStandby(Ljava/lang/String;)Z
    .registers 5

    .line 451
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_13

    .line 452
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->isForceAppStandbyEnabled(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 453
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_13
    return v1
.end method

.method public findBatterySipperByType(Ljava/util/List;Lcom/android/internal/os/BatterySipper$DrainType;)Lcom/android/internal/os/BatterySipper;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Lcom/android/internal/os/BatterySipper$DrainType;",
            ")",
            "Lcom/android/internal/os/BatterySipper;"
        }
    .end annotation

    .line 518
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_15

    .line 519
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    .line 520
    iget-object v2, v1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v2, p2, :cond_12

    return-object v1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppLongVersionCode(Ljava/lang/String;)J
    .registers 4

    .line 651
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 653
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return-wide p0

    :catch_c
    move-exception p0

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BatteryUtils"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getBatteryInfo(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Lcom/android/settings/fuelgauge/BatteryInfo;
    .registers 22
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 472
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v8

    .line 475
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 474
    invoke-static {v4, v5}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v11

    .line 476
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v9

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getEnhancedEstimate()Lcom/android/settingslib/fuelgauge/Estimate;

    move-result-object v4

    if-nez v4, :cond_3a

    .line 482
    new-instance v4, Lcom/android/settingslib/fuelgauge/Estimate;

    .line 483
    invoke-virtual {v9, v11, v12}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v14

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JZJ)V

    :cond_3a
    move-object v10, v4

    const-string v4, "BatteryInfoLoader post query"

    .line 488
    invoke-static {v1, v4, v2, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 489
    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v0

    const-string v4, "BatteryInfoLoader.loadInBackground"

    .line 491
    invoke-static {v1, v4, v2, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method getEnhancedEstimate()Lcom/android/settingslib/fuelgauge/Estimate;
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/Estimate;->getLastCacheUpdateTime(Landroid/content/Context;)Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0xa

    .line 501
    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-gez v0, :cond_21

    .line 502
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/fuelgauge/Estimate;->getCachedEstimateIfAvailable(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/Estimate;

    move-result-object p0

    goto :goto_3f

    .line 503
    :cond_21
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    if-eqz v0, :cond_3e

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    .line 504
    invoke-interface {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 505
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEnhancedBatteryPrediction(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/Estimate;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 507
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/settingslib/fuelgauge/Estimate;->storeCachedEstimate(Landroid/content/Context;Lcom/android/settingslib/fuelgauge/Estimate;)V

    :cond_3c
    move-object p0, v0

    goto :goto_3f

    :cond_3e
    const/4 p0, 0x0

    :goto_3f
    return-object p0
.end method

.method getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 533
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p1, 0x0

    .line 535
    invoke-virtual {p0, p2, p3, p1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0

    :cond_c
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method getForegroundServiceTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 543
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p1, 0x0

    .line 545
    invoke-virtual {p0, p2, p3, p1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0

    :cond_c
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getPackageName(I)Ljava/lang/String;
    .registers 2

    .line 329
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 331
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p0, 0x0

    goto :goto_11

    :cond_e
    const/4 p1, 0x0

    aget-object p0, p0, p1

    :goto_11
    return-object p0
.end method

.method public getPackageUid(Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    if-nez p1, :cond_4

    goto :goto_c

    .line 415
    :cond_4
    :try_start_4
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_c} :catch_c

    :catch_c
    :goto_c
    return v0
.end method

.method public getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J
    .registers 7
    .param p2  # Landroid/os/BatteryStats$Uid;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    if-nez p2, :cond_5

    return-wide v0

    :cond_5
    if-eqz p1, :cond_25

    const/4 v2, 0x1

    if-eq p1, v2, :cond_20

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1b

    const/4 v2, 0x3

    if-eq p1, v2, :cond_11

    return-wide v0

    .line 128
    :cond_11
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v0

    .line 129
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide p0

    add-long/2addr v0, p0

    return-wide v0

    .line 126
    :cond_1b
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide p0

    return-wide p0

    .line 124
    :cond_20
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide p0

    return-wide p0

    .line 122
    :cond_25
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public initBatteryStatsHelper(Lcom/android/internal/os/BatteryStatsHelper;Landroid/os/Bundle;Landroid/os/UserManager;)V
    .registers 4

    .line 462
    invoke-virtual {p1, p2}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 463
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 464
    invoke-virtual {p3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    return-void
.end method

.method public isForceAppStandbyEnabled(ILjava/lang/String;)Z
    .registers 4

    .line 446
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v0, 0x46

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_c

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public isHiddenSystemModule(Lcom/android/internal/os/BatterySipper;)Z
    .registers 7

    .line 267
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 270
    :cond_6
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 271
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 272
    array-length v0, v0

    move v2, v1

    :goto_18
    if-ge v2, v0, :cond_2b

    .line 273
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lcom/android/settingslib/applications/AppUtils;->isHiddenSystemModule(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2b
    return v1
.end method

.method public isPreOApp(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 553
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 556
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_11

    const/16 p1, 0x1a

    if-ge p0, p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    :catch_11
    move-exception p0

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BatteryUtils"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isPreOApp([Ljava/lang/String;)Z
    .registers 6

    .line 565
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 569
    :cond_8
    array-length v0, p1

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_19

    aget-object v3, p1, v2

    .line 570
    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->isPreOApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_19
    return v1
.end method

.method public synthetic lambda$setForceAppStandby$0$BatteryUtils(IILjava/lang/String;)V
    .registers 10

    .line 433
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    .line 434
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    move-result-object v0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_14

    const/4 v1, 0x0

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v2, p2

    move-object v3, p3

    .line 436
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->insertAction(IILjava/lang/String;J)Z

    goto :goto_1a

    :cond_14
    if-nez p1, :cond_1a

    const/4 p0, 0x0

    .line 439
    invoke-virtual {v0, p0, p2, p3}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->deleteAction(IILjava/lang/String;)Z

    :cond_1a
    :goto_1a
    return-void
.end method

.method public removeHiddenBatterySippers(Ljava/util/List;)D
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)D"
        }
    .end annotation

    .line 184
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ltz v0, :cond_47

    .line 185
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    .line 186
    invoke-virtual {p0, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 187
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 188
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_3d

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_3d

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_3d

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_3d

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_3d

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_3d

    .line 194
    invoke-virtual {p0, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->isHiddenSystemModule(Lcom/android/internal/os/BatterySipper;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 197
    iget-wide v5, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v1, v5

    .line 201
    :cond_3d
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_44

    move-object v3, v4

    :cond_44
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 206
    :cond_47
    invoke-virtual {p0, p1, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->smearScreenBatterySipper(Ljava/util/List;Lcom/android/internal/os/BatterySipper;)V

    return-wide v1
.end method

.method public setForceAppStandby(ILjava/lang/String;I)V
    .registers 6

    .line 424
    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->isPreOApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 427
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 430
    :cond_d
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 432
    new-instance v0, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryUtils$ShxxVG-haRDdL8cjipNso8s_v8Y;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryUtils$ShxxVG-haRDdL8cjipNso8s_v8Y;-><init>(Lcom/android/settings/fuelgauge/BatteryUtils;IILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public shouldHideAnomaly(Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;ILcom/android/settings/fuelgauge/batterytip/AnomalyInfo;)Z
    .registers 7

    .line 583
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    return v2

    .line 589
    :cond_e
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->isSystemUid(I)Z

    move-result p2

    if-nez p2, :cond_36

    invoke-virtual {p1, v0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_36

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 590
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->isSystemApp(Landroid/content/pm/PackageManager;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->hasLauncherEntry([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 591
    :cond_28
    invoke-direct {p0, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->isExcessiveBackgroundAnomaly(Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;)Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->isPreOApp([Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_35

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :cond_36
    :goto_36
    return v2
.end method

.method public shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z
    .registers 6

    .line 248
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 250
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_45

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_45

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_45

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_45

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_45

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_45

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_45

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide v2, 0x40ac200000000000L  # 3600.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L  # 5.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_45

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 258
    invoke-interface {v0, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isTypeService(Lcom/android/internal/os/BatterySipper;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 259
    invoke-interface {v0, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->isHiddenSystemModule(Lcom/android/internal/os/BatterySipper;)Z

    move-result p0

    if-eqz p0, :cond_43

    goto :goto_45

    :cond_43
    const/4 p0, 0x0

    goto :goto_46

    :cond_45
    :goto_45
    const/4 p0, 0x1

    :goto_46
    return p0
.end method

.method smearScreenBatterySipper(Ljava/util/List;Lcom/android/internal/os/BatterySipper;)V
    .registers 19
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Lcom/android/internal/os/BatterySipper;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 218
    new-instance v2, Landroid/util/SparseLongArray;

    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    .line 219
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v8, v4

    move v7, v6

    :goto_12
    if-ge v7, v3, :cond_2f

    .line 220
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BatterySipper;

    iget-object v10, v10, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v11, p0

    if-eqz v10, :cond_2c

    .line 222
    invoke-virtual {v11, v6, v10, v6}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v12

    .line 224
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-virtual {v2, v10, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    add-long/2addr v8, v12

    :cond_2c
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_2f
    const-wide/32 v10, 0x927c0

    cmp-long v3, v8, v10

    if-ltz v3, :cond_65

    if-nez v1, :cond_41

    const-string v0, "BatteryUtils"

    const-string/jumbo v1, "screen sipper is null even when app screen time is not zero"

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 235
    :cond_41
    iget-wide v10, v1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 236
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_47
    if-ge v6, v1, :cond_65

    .line 237
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    .line 238
    iget-wide v12, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v3}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-virtual {v2, v7, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v14

    long-to-double v14, v14

    mul-double/2addr v14, v10

    long-to-double v4, v8

    div-double/2addr v14, v4

    add-double/2addr v12, v14

    iput-wide v12, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-int/lit8 v6, v6, 0x1

    const-wide/16 v4, 0x0

    goto :goto_47

    :cond_65
    return-void
.end method

.method public sortUsageList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)V"
        }
    .end annotation

    .line 369
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryUtils$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryUtils$1;-><init>(Lcom/android/settings/fuelgauge/BatteryUtils;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
