.class public Lcom/android/server/pm/PackageDexOptimizer;
.super Ljava/lang/Object;
.source "PackageDexOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;
    }
.end annotation


# static fields
.field public static final DEX_OPT_FAILED:I = -0x1

.field public static final DEX_OPT_PERFORMED:I = 0x1

.field public static final DEX_OPT_SKIPPED:I = 0x0

.field static final OAT_DIR_NAME:Ljava/lang/String; = "oat"

.field private static final TAG:Ljava/lang/String; = "PackageManager.DexOptimizer"

.field private static final WAKELOCK_TIMEOUT_MS:J = 0xa1220L


# instance fields
.field private final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation
.end field

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation
.end field

.field private volatile mSystemReady:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 101
    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 103
    const-string/jumbo p1, "power"

    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 104
    const/4 p2, 0x1

    invoke-virtual {p1, p2, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 105
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/pm/PackageDexOptimizer;)V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 109
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 110
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 111
    iget-boolean p1, p1, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    iput-boolean p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 112
    return-void
.end method

.method private acquireWakeLockLI(I)J
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    .line 346
    iget-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    if-nez v0, :cond_7

    .line 347
    const-wide/16 v0, -0x1

    return-wide v0

    .line 349
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 350
    iget-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v0, 0xa1220

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method static canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z
    .registers 1

    .line 116
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_a

    .line 117
    const/4 p0, 0x0

    return p0

    .line 120
    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method private createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 654
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->canHaveOatDir()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 655
    return-object v1

    .line 657
    :cond_8
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 662
    invoke-static {v0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 664
    :try_start_19
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_19 .. :try_end_22} :catch_28

    .line 668
    nop

    .line 669
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 665
    :catch_28
    move-exception p1

    .line 666
    const-string p2, "PackageManager.DexOptimizer"

    const-string v0, "Failed to create oat dir"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    return-object v1

    .line 671
    :cond_31
    return-object v1
.end method

.method private dexOptPath(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;I)I
    .registers 38
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v15, p2

    move-object/from16 v9, p3

    move-object/from16 v14, p9

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move/from16 v6, p5

    move/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v5

    .line 268
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_24

    .line 269
    return v2

    .line 275
    :cond_24
    invoke-direct {v0, v8, v9}, Lcom/android/server/pm/PackageDexOptimizer;->createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running dexopt (dexoptNeeded="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") on: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isa="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dexoptFlags="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    move/from16 v7, p7

    invoke-direct {v0, v7}, Lcom/android/server/pm/PackageDexOptimizer;->printDexoptFlags(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " targetFilter="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p4

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " oatDir="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " classLoaderContext="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p6

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    const-string v13, "PackageManager.DexOptimizer"

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :try_start_84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 289
    iget-object v1, v0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v19, 0x1

    if-eqz p12, :cond_9e

    move/from16 v2, v19

    .line 293
    :cond_9e
    move-object/from16 p5, v4

    move/from16 v4, p13

    invoke-direct {v0, v4, v2}, Lcom/android/server/pm/PackageDexOptimizer;->getAugmentedReasonName(IZ)Ljava/lang/String;

    move-result-object v20
    :try_end_a6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_84 .. :try_end_a6} :catch_dd

    .line 289
    move-object v0, v1

    move-object/from16 v1, p2

    move/from16 v2, p8

    move-object/from16 v21, p5

    move-object/from16 v4, p3

    move/from16 v7, p7

    move/from16 v22, v8

    move-object/from16 v8, p4

    move-object v9, v12

    move-object/from16 v10, p6

    move-object/from16 v11, v21

    move/from16 v12, v16

    move-object/from16 v23, v13

    move/from16 v13, v22

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, v20

    :try_start_c6
    invoke-virtual/range {v0 .. v16}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p9

    if-eqz v0, :cond_da

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 297
    sub-long v1, v1, v17

    long-to-int v1, v1

    int-to-long v1, v1

    move-object/from16 v3, p2

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(Ljava/lang/String;J)V
    :try_end_da
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_c6 .. :try_end_da} :catch_db

    .line 299
    :cond_da
    return v19

    .line 300
    :catch_db
    move-exception v0

    goto :goto_e0

    :catch_dd
    move-exception v0

    move-object/from16 v23, v13

    .line 301
    :goto_e0
    const-string v1, "Failed to dexopt"

    move-object/from16 v2, v23

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    const/4 v0, -0x1

    return v0
.end method

.method private dexOptSecondaryDexPathLI(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 34
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    .line 377
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v15, p2

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptOnlySharedDex()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v2

    if-nez v2, :cond_14

    .line 380
    const/4 v0, 0x0

    return v0

    .line 383
    :cond_14
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v2

    .line 384
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v3

    .line 383
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PackageDexOptimizer;->getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 387
    move-object/from16 v14, p4

    invoke-direct {v0, v1, v2, v14}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3

    or-int/lit8 v3, v3, 0x20

    .line 389
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    const/16 v19, -0x1

    const-string v13, "PackageManager.DexOptimizer"

    if-eqz v4, :cond_3c

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 390
    invoke-static {v4, v15}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 391
    or-int/lit16 v3, v3, 0x100

    move v12, v3

    goto :goto_4b

    .line 392
    :cond_3c
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    if-eqz v4, :cond_12c

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 393
    invoke-static {v4, v15}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12a

    .line 394
    or-int/lit16 v3, v3, 0x80

    move v12, v3

    .line 399
    :goto_4b
    const/4 v3, 0x0

    .line 400
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUnknownClassLoaderContext()Z

    move-result v4

    if-nez v4, :cond_60

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isVariableClassLoaderContext()Z

    move-result v4

    if-eqz v4, :cond_59

    goto :goto_60

    .line 405
    :cond_59
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v3

    move-object v11, v2

    move-object v10, v3

    goto :goto_64

    .line 403
    :cond_60
    :goto_60
    const-string v2, "extract"

    move-object v11, v2

    move-object v10, v3

    .line 408
    :goto_64
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v20

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running dexopt on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isa="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dexoptFlags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-direct {v0, v12}, Lcom/android/server/pm/PackageDexOptimizer;->printDexoptFlags(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " target-filter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " class-loader-context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :try_start_ba
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_c2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11d

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 422
    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 425
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->isDowngrade()Z

    move-result v16

    iget v8, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 426
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v22
    :try_end_e8
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_ba .. :try_end_e8} :catch_11f

    .line 422
    move-object/from16 v23, v3

    move-object/from16 v3, p2

    move/from16 v24, v8

    const/4 v8, 0x0

    move-object/from16 v25, v9

    move v9, v12

    move-object/from16 v26, v10

    move-object v10, v11

    move-object/from16 v27, v11

    move-object/from16 v11, v25

    move/from16 v25, v12

    move-object/from16 v12, v26

    move-object/from16 v28, v13

    move-object/from16 v13, v23

    move/from16 v14, v16

    move/from16 v15, v24

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v22

    :try_start_10b
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_10b .. :try_end_10e} :catch_11b

    .line 427
    move-object/from16 v15, p2

    move-object/from16 v14, p4

    move/from16 v12, v25

    move-object/from16 v10, v26

    move-object/from16 v11, v27

    move-object/from16 v13, v28

    goto :goto_c2

    .line 430
    :catch_11b
    move-exception v0

    goto :goto_122

    .line 429
    :cond_11d
    const/4 v0, 0x1

    return v0

    .line 430
    :catch_11f
    move-exception v0

    move-object/from16 v28, v13

    .line 431
    :goto_122
    const-string v1, "Failed to dexopt"

    move-object/from16 v2, v28

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    return v19

    .line 393
    :cond_12a
    move-object v2, v13

    goto :goto_12d

    .line 392
    :cond_12c
    move-object v2, v13

    .line 396
    :goto_12d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not infer CE/DE storage for package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return v19
.end method

.method private getAugmentedReasonName(IZ)Ljava/lang/String;
    .registers 4

    .line 307
    if-eqz p2, :cond_5

    .line 308
    const-string p2, "-dm"

    goto :goto_7

    :cond_5
    const-string p2, ""

    .line 309
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 12

    .line 556
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 557
    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v3

    .line 562
    :goto_b
    invoke-static {p2}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result p2

    .line 563
    if-eqz p2, :cond_1a

    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_1a

    :cond_18
    move v4, v3

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v4, v2

    .line 564
    :goto_1b
    if-eqz p2, :cond_20

    const/16 v5, 0x10

    goto :goto_21

    :cond_20
    move v5, v3

    .line 568
    :goto_21
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v6

    if-nez v6, :cond_29

    .line 569
    move v6, v3

    goto :goto_2b

    .line 570
    :cond_29
    const/16 v6, 0x400

    .line 572
    :goto_2b
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v7

    .line 573
    nop

    .line 574
    if-eqz v7, :cond_38

    if-eq v7, v2, :cond_38

    if-eq v7, v1, :cond_38

    move v7, v2

    goto :goto_39

    .line 578
    :cond_38
    move v7, v3

    .line 586
    :goto_39
    if-eqz p2, :cond_4c

    iget-object p2, p1, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    if-eqz p2, :cond_45

    .line 587
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result p1

    if-nez p1, :cond_4c

    :cond_45
    invoke-direct {p0}, Lcom/android/server/pm/PackageDexOptimizer;->isAppImageEnabled()Z

    move-result p1

    if-eqz p1, :cond_4c

    goto :goto_4d

    :cond_4c
    move v2, v3

    .line 589
    :goto_4d
    if-eqz v4, :cond_50

    goto :goto_51

    :cond_50
    move v1, v3

    .line 590
    :goto_51
    if-eqz v0, :cond_55

    const/4 p1, 0x4

    goto :goto_56

    :cond_55
    move p1, v3

    :goto_56
    or-int/2addr p1, v1

    or-int/2addr p1, v5

    .line 592
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->isBootComplete()Z

    move-result p2

    if-eqz p2, :cond_61

    const/16 p2, 0x8

    goto :goto_62

    :cond_61
    move p2, v3

    :goto_62
    or-int/2addr p1, p2

    .line 593
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptIdleBackgroundJob()Z

    move-result p2

    if-eqz p2, :cond_6c

    const/16 p2, 0x200

    goto :goto_6d

    :cond_6c
    move p2, v3

    :goto_6d
    or-int/2addr p1, p2

    .line 594
    if-eqz v7, :cond_73

    const/16 p2, 0x800

    goto :goto_74

    :cond_73
    move p2, v3

    :goto_74
    or-int/2addr p1, p2

    .line 595
    if-eqz v2, :cond_79

    const/16 v3, 0x1000

    :cond_79
    or-int/2addr p1, v3

    or-int/2addr p1, v6

    .line 597
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptFlags(I)I

    move-result p1

    return p1
.end method

.method private getDexFlags(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 4

    .line 548
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result p1

    return p1
.end method

.method private getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I
    .registers 7

    .line 608
    :try_start_0
    invoke-static/range {p1 .. p6}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_a

    .line 613
    nop

    .line 614
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptNeeded(I)I

    move-result p1

    return p1

    .line 610
    :catch_a
    move-exception p2

    .line 611
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "IOException reading apk: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "PackageManager.DexOptimizer"

    invoke-static {p3, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    const/4 p1, -0x1

    return p1
.end method

.method static getOatDir(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 675
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "oat"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 510
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 511
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 512
    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_3b

    .line 526
    :cond_15
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_24

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_22

    goto :goto_24

    :cond_22
    const/4 p1, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 p1, 0x1

    .line 529
    :goto_25
    if-eqz p1, :cond_2c

    .line 530
    invoke-static {p2}, Ldalvik/system/DexFile;->getSafeModeCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 533
    :cond_2c
    invoke-static {p2}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3a

    if-eqz p3, :cond_3a

    .line 535
    const/4 p1, 0x6

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 539
    :cond_3a
    return-object p2

    .line 513
    :cond_3b
    :goto_3b
    const-string/jumbo p1, "verify"

    return-object p1
.end method

.method private isAppImageEnabled()Z
    .registers 3

    .line 552
    const-string v0, "dalvik.vm.appimageformat"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private isProfileUpdated(Landroid/content/pm/PackageParser$Package;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 628
    invoke-static {p4}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_8

    .line 629
    return v0

    .line 633
    :cond_8
    :try_start_8
    iget-object p4, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p4, p2, p1, p3}, Lcom/android/server/pm/Installer;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_10
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8 .. :try_end_10} :catch_11

    return p1

    .line 634
    :catch_11
    move-exception p1

    .line 635
    const-string p2, "PackageManager.DexOptimizer"

    const-string p3, "Failed to merge profiles"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    return v0
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 38
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    .line 159
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->usesLibraryInfos:Ljava/util/ArrayList;

    .line 160
    if-eqz p2, :cond_b

    .line 161
    move-object/from16 v1, p2

    goto :goto_11

    :cond_b
    iget-object v1, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v1

    .line 162
    :goto_11
    invoke-static {v1}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->getAllCodePaths()Ljava/util/List;

    move-result-object v12

    .line 165
    iget-object v1, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v1

    .line 166
    const/4 v11, -0x1

    if-ne v1, v11, :cond_53

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Well this is awkward; package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " had UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "PackageManager.DexOptimizer"

    invoke-static {v3, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    const/16 v1, 0x270f

    move v10, v1

    goto :goto_54

    .line 166
    :cond_53
    move v10, v1

    .line 175
    :goto_54
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    new-array v9, v1, [Z

    .line 176
    iget-object v1, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v1, :cond_69

    move/from16 v1, v17

    goto :goto_6b

    :cond_69
    move/from16 v1, v16

    :goto_6b
    aput-boolean v1, v9, v16

    .line 177
    move/from16 v1, v17

    :goto_6f
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_89

    .line 178
    iget-object v2, v15, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_82

    move/from16 v2, v17

    goto :goto_84

    :cond_82
    move/from16 v2, v16

    :goto_84
    aput-boolean v2, v9, v1

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 180
    :cond_89
    iget-object v1, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v0, v9}, Lcom/android/server/pm/dex/DexoptUtils;->getClassLoaderContexts(Landroid/content/pm/ApplicationInfo;Ljava/util/List;[Z)[Ljava/lang/String;

    move-result-object v8

    .line 184
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, v8

    if-eq v0, v1, :cond_d3

    .line 185
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent information between PackageParser.Package and its ApplicationInfo. pkg.getAllCodePaths="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " pkg.applicationInfo.getBaseCodePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 189
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pkg.applicationInfo.getSplitCodePaths="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    if-nez v0, :cond_c4

    const-string/jumbo v0, "null"

    goto :goto_c8

    :cond_c4
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_c8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_d3
    nop

    .line 195
    move/from16 v0, v16

    move v7, v0

    :goto_d7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_22f

    .line 197
    aget-boolean v1, v9, v7

    if-nez v1, :cond_e2

    .line 198
    goto :goto_107

    .line 200
    :cond_e2
    aget-object v1, v8, v7

    if-eqz v1, :cond_204

    .line 207
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 208
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_116

    .line 211
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_116

    .line 212
    nop

    .line 195
    :goto_107
    move/from16 p2, v7

    move-object/from16 v22, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    move v15, v11

    move-object/from16 v31, v12

    move-object/from16 v23, v13

    goto/16 :goto_1f1

    .line 216
    :cond_116
    const/4 v1, 0x0

    if-nez v7, :cond_11b

    move-object v2, v1

    goto :goto_121

    :cond_11b
    iget-object v2, v15, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    add-int/lit8 v3, v7, -0x1

    aget-object v2, v2, v3

    :goto_121
    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 218
    nop

    .line 219
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v2

    if-eqz v2, :cond_13f

    .line 220
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 221
    if-nez v2, :cond_138

    .line 222
    goto :goto_13c

    :cond_138
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_13c
    move-object/from16 v18, v1

    goto :goto_141

    .line 219
    :cond_13f
    move-object/from16 v18, v1

    .line 225
    :goto_141
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptAsSharedLibrary()Z

    move-result v1

    if-nez v1, :cond_153

    .line 226
    move-object/from16 v4, p4

    invoke-virtual {v4, v6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isUsedByOtherApps(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_150

    goto :goto_155

    :cond_150
    move/from16 v1, v16

    goto :goto_157

    .line 225
    :cond_153
    move-object/from16 v4, p4

    .line 226
    :goto_155
    move/from16 v1, v17

    .line 227
    :goto_157
    iget-object v2, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 228
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-direct {v14, v2, v3, v1}, Lcom/android/server/pm/PackageDexOptimizer;->getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->isCheckForProfileUpdates()Z

    move-result v1

    if-eqz v1, :cond_170

    .line 230
    invoke-direct {v14, v15, v10, v5, v3}, Lcom/android/server/pm/PackageDexOptimizer;->isProfileUpdated(Landroid/content/pm/PackageParser$Package;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_170

    move/from16 v19, v17

    goto :goto_172

    :cond_170
    move/from16 v19, v16

    .line 234
    :goto_172
    move-object/from16 v2, p5

    invoke-direct {v14, v15, v3, v2}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v20

    .line 236
    array-length v1, v13

    move v14, v0

    move/from16 v0, v16

    :goto_17c
    if-ge v0, v1, :cond_1e3

    aget-object v21, v13, v0

    .line 237
    aget-object v22, v8, v7

    .line 239
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->isDowngrade()Z

    move-result v23

    .line 240
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v24

    .line 237
    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v26, v1

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v27, v3

    move-object/from16 v3, v21

    move-object/from16 v4, v27

    move-object/from16 v21, v5

    move/from16 v5, v19

    move-object/from16 v28, v6

    move-object/from16 v6, v22

    move v15, v7

    move/from16 v7, v20

    move-object/from16 v22, v8

    move v8, v10

    move-object/from16 v29, v9

    move-object/from16 v9, p3

    move/from16 v30, v10

    move/from16 v10, v23

    move/from16 p2, v15

    move v15, v11

    move-object/from16 v11, v21

    move-object/from16 v31, v12

    move-object/from16 v12, v18

    move-object/from16 v23, v13

    move/from16 v13, v24

    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptPath(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 245
    if-eq v14, v15, :cond_1c5

    if-eqz v0, :cond_1c5

    .line 246
    move v14, v0

    .line 236
    :cond_1c5
    add-int/lit8 v0, v25, 0x1

    move/from16 v7, p2

    move-object/from16 v4, p4

    move-object/from16 v2, p5

    move v11, v15

    move-object/from16 v5, v21

    move-object/from16 v8, v22

    move-object/from16 v13, v23

    move/from16 v1, v26

    move-object/from16 v3, v27

    move-object/from16 v6, v28

    move-object/from16 v9, v29

    move/from16 v10, v30

    move-object/from16 v12, v31

    move-object/from16 v15, p1

    goto :goto_17c

    :cond_1e3
    move/from16 p2, v7

    move-object/from16 v22, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    move v15, v11

    move-object/from16 v31, v12

    move-object/from16 v23, v13

    move v0, v14

    .line 195
    :goto_1f1
    add-int/lit8 v7, p2, 0x1

    move-object/from16 v14, p0

    move v11, v15

    move-object/from16 v8, v22

    move-object/from16 v13, v23

    move-object/from16 v9, v29

    move/from16 v10, v30

    move-object/from16 v12, v31

    move-object/from16 v15, p1

    goto/16 :goto_d7

    .line 201
    :cond_204
    move/from16 p2, v7

    move-object/from16 v31, v12

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent information in the package structure. A split is marked to contain code but has no dependency listed. Index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    move-object/from16 v2, v31

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_22f
    return v0
.end method

.method private printDexoptFlags(I)Ljava/lang/String;
    .registers 5

    .line 683
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 685
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_10

    .line 686
    const-string v1, "boot_complete"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    :cond_10
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 689
    const-string v1, "debuggable"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    :cond_1a
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_26

    .line 692
    const-string/jumbo v1, "profile_guided"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    :cond_26
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_31

    .line 695
    const-string/jumbo v1, "public"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    :cond_31
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3d

    .line 698
    const-string/jumbo v1, "secondary"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_3d
    and-int/lit8 v1, p1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_48

    .line 701
    const-string v1, "force"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    :cond_48
    and-int/lit16 v1, p1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_54

    .line 704
    const-string/jumbo v1, "storage_ce"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_54
    and-int/lit16 v1, p1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_60

    .line 707
    const-string/jumbo v1, "storage_de"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_60
    and-int/lit16 v1, p1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_6b

    .line 710
    const-string v1, "idle_background_job"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_6b
    const/16 v1, 0x400

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_75

    .line 713
    const-string p1, "enable_hidden_api_checks"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    :cond_75
    const-string p1, ","

    invoke-static {p1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private releaseWakeLockLI(J)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    .line 356
    const-string v0, "PackageManager.DexOptimizer"

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_9

    .line 357
    return-void

    .line 360
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 361
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 363
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    .line 364
    const-wide/32 p1, 0xa1220

    cmp-long p1, v1, p1

    if-ltz p1, :cond_54

    .line 365
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WakeLock "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " time out. Operation took "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms. Thread: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 365
    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_54} :catch_55

    .line 371
    :cond_54
    goto :goto_75

    .line 369
    :catch_55
    move-exception p1

    .line 370
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while releasing "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lock"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    :goto_75
    return-void
.end method


# virtual methods
.method protected adjustDexoptFlags(I)I
    .registers 2

    .line 448
    return p1
.end method

.method protected adjustDexoptNeeded(I)I
    .registers 2

    .line 441
    return p1
.end method

.method public dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 8

    .line 328
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    .line 331
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_8
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageDexOptimizer;->acquireWakeLockLI(I)J

    move-result-wide v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_1c

    .line 334
    :try_start_e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPathLI(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result p1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_17

    .line 336
    :try_start_12
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    monitor-exit v0

    .line 334
    return p1

    .line 336
    :catchall_17
    move-exception p1

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    throw p1

    .line 338
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_1c

    throw p1

    .line 329
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Dexopt for path "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " has invalid uid."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V
    .registers 12

    .line 456
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-static {v0}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object p2

    .line 461
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_123

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 465
    array-length v2, v0

    const/4 v3, 0x0

    :goto_38
    if-ge v3, v2, :cond_8c

    aget-object v4, v0, v3

    .line 467
    :try_start_3c
    invoke-static {v1, v4}, Ldalvik/system/DexFile;->getDexFileOptimizationInfo(Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile$OptimizationInfo;

    move-result-object v5

    .line 468
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": [status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ldalvik/system/DexFile$OptimizationInfo;->getStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] [reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v5}, Ldalvik/system/DexFile$OptimizationInfo;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 468
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_6c} :catch_6d

    .line 472
    goto :goto_89

    .line 470
    :catch_6d
    move-exception v5

    .line 471
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": [Exception]: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 465
    :goto_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 475
    :cond_8c
    invoke-virtual {p3, v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isUsedByOtherApps(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "used by other apps: "

    if-eqz v2, :cond_ab

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getLoadingPackages(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 479
    :cond_ab
    invoke-virtual {p3}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v1

    .line 481
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11e

    .line 482
    const-string v2, "known secondary dex files:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 484
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 485
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 486
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 487
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "class loader context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v4

    if-eqz v4, :cond_117

    .line 492
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoadingPackages()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 494
    :cond_117
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 495
    goto :goto_c5

    .line 496
    :cond_11b
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 498
    :cond_11e
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 499
    goto/16 :goto_12

    .line 500
    :cond_123
    return-void
.end method

.method performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 9

    .line 133
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2b

    .line 137
    invoke-static {p1}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 138
    const/4 p1, 0x0

    return p1

    .line 140
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_12
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageDexOptimizer;->acquireWakeLockLI(I)J

    move-result-wide v1
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_28

    .line 143
    :try_start_1a
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result p1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_23

    .line 146
    :try_start_1e
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    monitor-exit v0

    .line 143
    return p1

    .line 146
    :catchall_23
    move-exception p1

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    throw p1

    .line 148
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_28

    throw p1

    .line 134
    :cond_2b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Dexopt for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has invalid uid."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method systemReady()V
    .registers 2

    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 680
    return-void
.end method
