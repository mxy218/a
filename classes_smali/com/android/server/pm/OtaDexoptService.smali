.class public Lcom/android/server/pm/OtaDexoptService;
.super Landroid/content/pm/IOtaDexopt$Stub;
.source "OtaDexoptService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;
    }
.end annotation


# static fields
.field private static final BULK_DELETE_THRESHOLD:J = 0x40000000L

.field private static final DEBUG_DEXOPT:Z = true

.field private static final TAG:Ljava/lang/String; = "OTADexopt"


# instance fields
.field private availableSpaceAfterBulkDelete:J

.field private availableSpaceAfterDexopt:J

.field private availableSpaceBefore:J

.field private completeSize:I

.field private dexoptCommandCountExecuted:I

.field private dexoptCommandCountTotal:I

.field private importantPackageCount:I

.field private final mContext:Landroid/content/Context;

.field private mDexoptCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private final metricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private otaDexoptTimeStart:J

.field private otherPackageCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    .line 92
    invoke-direct {p0}, Landroid/content/pm/IOtaDexopt$Stub;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 95
    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 96
    return-void
.end method

.method private declared-synchronized generatePackageDexopts(Landroid/content/pm/PackageParser$Package;I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 268
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    new-instance v1, Lcom/android/server/pm/OtaDexoptService$1;

    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/server/pm/OtaDexoptService$1;-><init>(Lcom/android/server/pm/OtaDexoptService;Landroid/content/Context;ZLjava/util/List;)V

    .line 333
    new-instance v4, Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;

    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;)V

    .line 336
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 339
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v8

    new-instance v9, Lcom/android/server/pm/dex/DexoptOptions;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-direct {v9, v1, p2, v2}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 336
    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 343
    monitor-exit p0

    return-object v0

    .line 267
    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getAvailableSpace()J
    .registers 5

    .line 254
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getMainLowSpaceThreshold()J

    move-result-wide v0

    .line 256
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 257
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    .line 259
    sub-long/2addr v2, v0

    return-wide v2
.end method

.method private getMainLowSpaceThreshold()J
    .registers 5

    .line 238
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v0

    .line 241
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_15

    .line 244
    return-wide v0

    .line 242
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid low memory threshold"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static inMegabytes(J)I
    .registers 4

    .line 428
    const-wide/32 v0, 0x100000

    div-long/2addr p0, v0

    .line 429
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_2a

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recording "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "MB of free space, overflowing range"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OTADexopt"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const p0, 0x7fffffff

    return p0

    .line 433
    :cond_2a
    long-to-int p0, p0

    return p0
.end method

.method static synthetic lambda$prepare$0(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I
    .registers 4

    .line 165
    nop

    .line 166
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    .line 167
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide p0

    .line 165
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    .registers 3

    .line 100
    new-instance v0, Lcom/android/server/pm/OtaDexoptService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/OtaDexoptService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    .line 101
    const-string/jumbo p0, "otadexopt"

    invoke-static {p0, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 104
    iget-object p0, p1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-direct {v0, p0}, Lcom/android/server/pm/OtaDexoptService;->moveAbArtifacts(Lcom/android/server/pm/Installer;)V

    .line 106
    return-object v0
.end method

.method private moveAbArtifacts(Lcom/android/server/pm/Installer;)V
    .registers 18

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-nez v1, :cond_100

    .line 356
    iget-object v1, v0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v1

    const-string v2, "OTADexopt"

    if-nez v1, :cond_16

    .line 357
    const-string v0, "No upgrade, skipping A/B artifacts check."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 362
    :cond_16
    iget-object v0, v0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPackages()Ljava/util/Collection;

    move-result-object v0

    .line 363
    nop

    .line 364
    nop

    .line 365
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move v0, v3

    move v4, v0

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 366
    if-nez v5, :cond_36

    .line 367
    move-object/from16 v15, p1

    goto :goto_25

    .line 371
    :cond_36
    invoke-static {v5}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 372
    move-object/from16 v15, p1

    goto :goto_25

    .line 374
    :cond_3f
    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    if-nez v6, :cond_5f

    .line 375
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " can be optimized but has null codePath"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    move-object/from16 v15, p1

    goto :goto_25

    .line 381
    :cond_5f
    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    const-string v7, "/system"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_df

    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 382
    const-string v7, "/vendor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_db

    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 383
    const-string v7, "/product"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d7

    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 384
    const-string v7, "/product_services"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 385
    move-object/from16 v15, p1

    goto :goto_25

    .line 388
    :cond_8a
    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v6

    .line 389
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v7

    .line 390
    invoke-static {v6}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 391
    array-length v8, v6

    move v9, v0

    move v0, v4

    move v4, v3

    :goto_9c
    if-ge v4, v8, :cond_d1

    aget-object v10, v6, v4

    .line 392
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_cc

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 393
    new-instance v13, Ljava/io/File;

    iget-object v14, v5, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v13

    .line 394
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 398
    add-int/lit8 v14, v0, 0x1

    .line 400
    move-object/from16 v15, p1

    :try_start_c3
    invoke-virtual {v15, v12, v10, v13}, Lcom/android/server/pm/Installer;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_c3 .. :try_end_c6} :catch_c9

    .line 401
    add-int/lit8 v9, v9, 0x1

    .line 403
    goto :goto_ca

    .line 402
    :catch_c9
    move-exception v0

    .line 404
    :goto_ca
    move v0, v14

    goto :goto_a4

    .line 391
    :cond_cc
    move-object/from16 v15, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_9c

    .line 406
    :cond_d1
    move-object/from16 v15, p1

    move v4, v0

    move v0, v9

    goto/16 :goto_25

    .line 383
    :cond_d7
    move-object/from16 v15, p1

    goto/16 :goto_25

    .line 382
    :cond_db
    move-object/from16 v15, p1

    goto/16 :goto_25

    .line 381
    :cond_df
    move-object/from16 v15, p1

    goto/16 :goto_25

    .line 407
    :cond_e3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moved "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void

    .line 353
    :cond_100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be ota-dexopting when trying to move."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private performMetricsLogging()V
    .registers 6

    .line 437
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 439
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceBefore:J

    .line 440
    invoke-static {v3, v4}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    move-result v3

    .line 439
    const-string/jumbo v4, "ota_dexopt_available_space_before_mb"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 441
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterBulkDelete:J

    .line 442
    invoke-static {v3, v4}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    move-result v3

    .line 441
    const-string/jumbo v4, "ota_dexopt_available_space_after_bulk_delete_mb"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 443
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 444
    invoke-static {v3, v4}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    move-result v3

    .line 443
    const-string/jumbo v4, "ota_dexopt_available_space_after_dexopt_mb"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 446
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->importantPackageCount:I

    const-string/jumbo v4, "ota_dexopt_num_important_packages"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 447
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->otherPackageCount:I

    const-string/jumbo v4, "ota_dexopt_num_other_packages"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 449
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountTotal:I

    const-string/jumbo v4, "ota_dexopt_num_commands"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 450
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    const-string/jumbo v4, "ota_dexopt_num_commands_executed"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 452
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->otaDexoptTimeStart:J

    sub-long/2addr v0, v3

    .line 453
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 454
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v2, "ota_dexopt_time_s"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 455
    return-void
.end method

.method private prepareMetricsLogging(IIJJ)V
    .registers 7

    .line 414
    iput-wide p3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceBefore:J

    .line 415
    iput-wide p5, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterBulkDelete:J

    .line 416
    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 418
    iput p1, p0, Lcom/android/server/pm/OtaDexoptService;->importantPackageCount:I

    .line 419
    iput p2, p0, Lcom/android/server/pm/OtaDexoptService;->otherPackageCount:I

    .line 421
    iget-object p1, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountTotal:I

    .line 422
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    .line 424
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/pm/OtaDexoptService;->otaDexoptTimeStart:J

    .line 425
    return-void
.end method


# virtual methods
.method public declared-synchronized cleanup()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 183
    :try_start_1
    const-string v0, "OTADexopt"

    const-string v1, "Cleaning up OTA Dexopt state."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 186
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 188
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->performMetricsLogging()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 189
    monitor-exit p0

    return-void

    .line 182
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dexoptNextPackage()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 348
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 203
    :try_start_1
    iget v0, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_19

    if-nez v0, :cond_9

    .line 204
    const/high16 v0, 0x3f800000  # 1.0f

    monitor-exit p0

    return v0

    .line 206
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 207
    iget v1, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_19

    int-to-float v1, v1

    div-float/2addr v0, v1

    monitor-exit p0

    return v0

    .line 202
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 193
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 197
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_15

    monitor-exit p0

    return v0

    .line 194
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "done() called before prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_15

    .line 192
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextDexoptCommand()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 212
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-eqz v0, :cond_6e

    .line 216
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 217
    const-string v0, "(all done)"
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_76

    monitor-exit p0

    return-object v0

    .line 220
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_42

    .line 223
    iget v1, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    .line 225
    const-string v1, "OTADexopt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_11 .. :try_end_40} :catchall_76

    .line 226
    monitor-exit p0

    return-object v0

    .line 229
    :cond_42
    :try_start_42
    const-string v0, "OTADexopt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space for OTA dexopt, stopping with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 230
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " commands left."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 233
    const-string v0, "(no free space)"
    :try_end_6c
    .catchall {:try_start_42 .. :try_end_6c} :catchall_76

    monitor-exit p0

    return-object v0

    .line 213
    :cond_6e
    :try_start_6e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dexoptNextPackage() called before prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_76

    .line 211
    :catchall_76
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 112
    new-instance v0, Lcom/android/server/pm/OtaDexoptShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/pm/OtaDexoptShellCommand;-><init>(Lcom/android/server/pm/OtaDexoptService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/OtaDexoptShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 114
    return-void
.end method

.method public declared-synchronized prepare()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 118
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-nez v0, :cond_139

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_141

    .line 125
    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    .line 126
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x1

    .line 125
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;Z)Ljava/util/List;

    move-result-object v1

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 130
    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 133
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 134
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_136

    .line 136
    :try_start_3d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 137
    iget-object v4, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    const/4 v5, 0x4

    invoke-direct {p0, v3, v5}, Lcom/android/server/pm/OtaDexoptService;->generatePackageDexopts(Landroid/content/pm/PackageParser$Package;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    goto :goto_41

    .line 139
    :cond_58
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 141
    iget-boolean v4, v3, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    if-nez v4, :cond_77

    .line 144
    iget-object v4, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    const/4 v5, 0x0

    .line 145
    invoke-direct {p0, v3, v5}, Lcom/android/server/pm/OtaDexoptService;->generatePackageDexopts(Landroid/content/pm/PackageParser$Package;I)Ljava/util/List;

    move-result-object v3

    .line 144
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    goto :goto_5c

    .line 142
    :cond_77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Found a core app that\'s not important"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_7f
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I

    .line 149
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v6

    .line 150
    const-wide/32 v3, 0x40000000

    cmp-long v0, v6, v3

    if-gez v0, :cond_c4

    .line 151
    const-string v0, "OTADexopt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Low on space, deleting oat files in an attempt to free up space: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->packagesToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 154
    iget-object v4, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Ljava/lang/String;)V

    .line 155
    goto :goto_b0

    .line 157
    :cond_c4
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v8

    .line 159
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/OtaDexoptService;->prepareMetricsLogging(IIJJ)V
    :try_end_d4
    .catchall {:try_start_3d .. :try_end_d4} :catchall_141

    .line 164
    :try_start_d4
    sget-object v0, Lcom/android/server/pm/-$$Lambda$OtaDexoptService$ZaCsBw0Yn3yN1RRrIRZV-KyDrWE;->INSTANCE:Lcom/android/server/pm/-$$Lambda$OtaDexoptService$ZaCsBw0Yn3yN1RRrIRZV-KyDrWE;

    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 168
    const-string v1, "OTADexopt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A/B OTA: lastUsed time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v0, "OTADexopt"

    const-string v1, "A/B OTA: deprioritized packages:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_101
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_132

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 172
    const-string v2, "OTADexopt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_131} :catch_133
    .catchall {:try_start_d4 .. :try_end_131} :catchall_141

    .line 174
    goto :goto_101

    .line 176
    :cond_132
    goto :goto_134

    .line 175
    :catch_133
    move-exception v0

    .line 178
    :goto_134
    monitor-exit p0

    return-void

    .line 134
    :catchall_136
    move-exception v1

    :try_start_137
    monitor-exit v0
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_136

    :try_start_138
    throw v1

    .line 119
    :cond_139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already called prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_141
    .catchall {:try_start_138 .. :try_end_141} :catchall_141

    .line 117
    :catchall_141
    move-exception v0

    monitor-exit p0

    throw v0
.end method
