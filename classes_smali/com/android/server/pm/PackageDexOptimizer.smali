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
    .registers 7
    .param p1, "installer"  # Lcom/android/server/pm/Installer;
    .param p2, "installLock"  # Ljava/lang/Object;
    .param p3, "context"  # Landroid/content/Context;
    .param p4, "wakeLockTag"  # Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 101
    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 103
    const-string/jumbo v0, "power"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 104
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 105
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/pm/PackageDexOptimizer;)V
    .registers 3
    .param p1, "from"  # Lcom/android/server/pm/PackageDexOptimizer;

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
    iget-boolean v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 112
    return-void
.end method

.method private acquireWakeLockLI(I)J
    .registers 5
    .param p1, "uid"  # I
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
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xa1220

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method static canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z
    .registers 2
    .param p0, "pkg"  # Landroid/content/pm/PackageParser$Package;

    .line 116
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_a

    .line 117
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method private createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "dexInstructionSet"  # Ljava/lang/String;

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

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 658
    .local v0, "codePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 662
    invoke-static {v0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 664
    .local v2, "oatDir":Ljava/io/File;
    :try_start_19
    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_19 .. :try_end_22} :catch_28

    .line 668
    nop

    .line 669
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 665
    :catch_28
    move-exception v3

    .line 666
    .local v3, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v4, "PackageManager.DexOptimizer"

    const-string v5, "Failed to create oat dir"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    return-object v1

    .line 671
    .end local v2  # "oatDir":Ljava/io/File;
    .end local v3  # "e":Lcom/android/server/pm/Installer$InstallerException;
    :cond_31
    return-object v1
.end method

.method private dexOptPath(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;I)I
    .registers 44
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "path"  # Ljava/lang/String;
    .param p3, "isa"  # Ljava/lang/String;
    .param p4, "compilerFilter"  # Ljava/lang/String;
    .param p5, "profileUpdated"  # Z
    .param p6, "classLoaderContext"  # Ljava/lang/String;
    .param p7, "dexoptFlags"  # I
    .param p8, "uid"  # I
    .param p9, "packageStats"  # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p10, "downgrade"  # Z
    .param p11, "profileName"  # Ljava/lang/String;
    .param p12, "dexMetadataPath"  # Ljava/lang/String;
    .param p13, "compilationReason"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    .line 266
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move-object/from16 v13, p9

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move/from16 v6, p5

    move/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v1

    .line 268
    .local v1, "dexoptNeeded":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_24

    .line 269
    return v2

    .line 275
    :cond_24
    invoke-direct {v8, v9, v14}, Lcom/android/server/pm/PackageDexOptimizer;->createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "oatDir":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running dexopt (dexoptNeeded="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") on: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isa="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " dexoptFlags="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    move/from16 v4, p7

    invoke-direct {v8, v4}, Lcom/android/server/pm/PackageDexOptimizer;->printDexoptFlags(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " targetFilter="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " oatDir="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " classLoaderContext="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    const-string v7, "PackageManager.DexOptimizer"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :try_start_84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-wide/from16 v27, v10

    .line 289
    .local v27, "startTime":J
    iget-object v10, v8, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v12, v9, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const/16 v22, 0x0

    iget-object v2, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v29, 0x1

    if-eqz p12, :cond_a1

    move/from16 v4, v29

    goto :goto_a2

    :cond_a1
    const/4 v4, 0x0

    .line 293
    :goto_a2
    move/from16 v5, p13

    invoke-direct {v8, v5, v4}, Lcom/android/server/pm/PackageDexOptimizer;->getAugmentedReasonName(IZ)Ljava/lang/String;

    move-result-object v26
    :try_end_a8
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_84 .. :try_end_a8} :catch_d8

    .line 289
    move-object v4, v11

    move-object/from16 v11, p2

    move-object/from16 v19, v12

    move/from16 v12, p8

    move-object v5, v13

    move-object v13, v0

    move-object/from16 v14, p3

    move-object v6, v15

    move v15, v1

    move-object/from16 v16, v3

    move/from16 v17, p7

    move-object/from16 v18, p4

    move-object/from16 v20, p6

    move-object/from16 v21, v4

    move/from16 v23, v2

    move-object/from16 v24, p11

    move-object/from16 v25, p12

    :try_start_c5
    invoke-virtual/range {v10 .. v26}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    if-eqz v5, :cond_d5

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 297
    .local v10, "endTime":J
    sub-long v12, v10, v27

    long-to-int v0, v12

    int-to-long v12, v0

    invoke-virtual {v5, v6, v12, v13}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(Ljava/lang/String;J)V
    :try_end_d5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_c5 .. :try_end_d5} :catch_d6

    .line 299
    .end local v10  # "endTime":J
    :cond_d5
    return v29

    .line 300
    .end local v27  # "startTime":J
    :catch_d6
    move-exception v0

    goto :goto_db

    :catch_d8
    move-exception v0

    move-object v5, v13

    move-object v6, v15

    .line 301
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_db
    const-string v2, "Failed to dexopt"

    invoke-static {v7, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    const/4 v2, -0x1

    return v2
.end method

.method private dexOptSecondaryDexPathLI(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 34
    .param p1, "info"  # Landroid/content/pm/ApplicationInfo;
    .param p2, "path"  # Ljava/lang/String;
    .param p3, "dexUseInfo"  # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p4, "options"  # Lcom/android/server/pm/dex/DexoptOptions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    .line 377
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p2

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptOnlySharedDex()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v0

    if-nez v0, :cond_14

    .line 380
    const/4 v0, 0x0

    return v0

    .line 383
    :cond_14
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v3

    .line 383
    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/pm/PackageDexOptimizer;->getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "compilerFilter":Ljava/lang/String;
    move-object/from16 v14, p4

    invoke-direct {v1, v2, v0, v14}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3

    or-int/lit8 v3, v3, 0x20

    .line 389
    .local v3, "dexoptFlags":I
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    const/16 v20, -0x1

    const-string v13, "PackageManager.DexOptimizer"

    if-eqz v4, :cond_3c

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

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
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    if-eqz v4, :cond_133

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 393
    invoke-static {v4, v15}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_131

    .line 394
    or-int/lit16 v3, v3, 0x80

    move v12, v3

    .line 399
    .end local v3  # "dexoptFlags":I
    .local v12, "dexoptFlags":I
    :goto_4b
    const/4 v3, 0x0

    .line 400
    .local v3, "classLoaderContext":Ljava/lang/String;
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

    move-object v11, v0

    move-object v10, v3

    goto :goto_64

    .line 403
    :cond_60
    :goto_60
    const-string v0, "extract"

    move-object v11, v0

    move-object v10, v3

    .line 408
    .end local v0  # "compilerFilter":Ljava/lang/String;
    .end local v3  # "classLoaderContext":Ljava/lang/String;
    .local v10, "classLoaderContext":Ljava/lang/String;
    .local v11, "compilerFilter":Ljava/lang/String;
    :goto_64
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v21

    .line 409
    .local v21, "reason":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running dexopt on: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isa="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dexoptFlags="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-direct {v1, v12}, Lcom/android/server/pm/PackageDexOptimizer;->printDexoptFlags(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " target-filter="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " class-loader-context="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :try_start_ba
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 422
    .local v7, "isa":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v9, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 425
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->isDowngrade()Z

    move-result v17

    move-object/from16 v18, v9

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v19, 0x0

    const/16 v22, 0x0

    .line 426
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v23
    :try_end_ea
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_ba .. :try_end_ea} :catch_120

    .line 422
    move-object/from16 v24, v4

    move-object/from16 v4, p2

    move-object/from16 v16, v18

    move/from16 v18, v9

    const/4 v9, 0x0

    move-object/from16 v25, v10

    .end local v10  # "classLoaderContext":Ljava/lang/String;
    .local v25, "classLoaderContext":Ljava/lang/String;
    move v10, v12

    move-object/from16 v26, v11

    .end local v11  # "compilerFilter":Ljava/lang/String;
    .local v26, "compilerFilter":Ljava/lang/String;
    move/from16 v27, v12

    .end local v12  # "dexoptFlags":I
    .local v27, "dexoptFlags":I
    move-object/from16 v12, v24

    move-object/from16 v28, v13

    move-object/from16 v13, v25

    move-object/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    :try_start_10c
    invoke-virtual/range {v3 .. v19}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_10c .. :try_end_10f} :catch_11c

    .line 427
    .end local v7  # "isa":Ljava/lang/String;
    move-object/from16 v15, p2

    move-object/from16 v14, p4

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    move-object/from16 v13, v28

    goto :goto_c2

    .line 430
    :catch_11c
    move-exception v0

    goto :goto_129

    .line 429
    .end local v25  # "classLoaderContext":Ljava/lang/String;
    .end local v26  # "compilerFilter":Ljava/lang/String;
    .end local v27  # "dexoptFlags":I
    .restart local v10  # "classLoaderContext":Ljava/lang/String;
    .restart local v11  # "compilerFilter":Ljava/lang/String;
    .restart local v12  # "dexoptFlags":I
    :cond_11e
    const/4 v0, 0x1

    return v0

    .line 430
    :catch_120
    move-exception v0

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move/from16 v27, v12

    move-object/from16 v28, v13

    .line 431
    .end local v10  # "classLoaderContext":Ljava/lang/String;
    .end local v11  # "compilerFilter":Ljava/lang/String;
    .end local v12  # "dexoptFlags":I
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v25  # "classLoaderContext":Ljava/lang/String;
    .restart local v26  # "compilerFilter":Ljava/lang/String;
    .restart local v27  # "dexoptFlags":I
    :goto_129
    const-string v3, "Failed to dexopt"

    move-object/from16 v4, v28

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    return v20

    .line 393
    .end local v21  # "reason":I
    .end local v25  # "classLoaderContext":Ljava/lang/String;
    .end local v26  # "compilerFilter":Ljava/lang/String;
    .end local v27  # "dexoptFlags":I
    .local v0, "compilerFilter":Ljava/lang/String;
    .local v3, "dexoptFlags":I
    :cond_131
    move-object v4, v13

    goto :goto_134

    .line 392
    :cond_133
    move-object v4, v13

    .line 396
    :goto_134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not infer CE/DE storage for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return v20
.end method

.method private getAugmentedReasonName(IZ)Ljava/lang/String;
    .registers 6
    .param p1, "compilationReason"  # I
    .param p2, "useDexMetadata"  # Z

    .line 307
    if-eqz p2, :cond_5

    .line 308
    const-string v0, "-dm"

    goto :goto_7

    :cond_5
    const-string v0, ""

    .line 309
    .local v0, "annotation":Ljava/lang/String;
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 16
    .param p1, "info"  # Landroid/content/pm/ApplicationInfo;
    .param p2, "compilerFilter"  # Ljava/lang/String;
    .param p3, "options"  # Lcom/android/server/pm/dex/DexoptOptions;

    .line 556
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 557
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    move v1, v3

    .line 562
    .local v1, "debuggable":Z
    :goto_b
    invoke-static {p2}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v4

    .line 563
    .local v4, "isProfileGuidedFilter":Z
    if-eqz v4, :cond_1a

    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_1a

    :cond_18
    move v5, v3

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v5, v2

    .line 564
    .local v5, "isPublic":Z
    :goto_1b
    if-eqz v4, :cond_20

    const/16 v6, 0x10

    goto :goto_21

    :cond_20
    move v6, v3

    .line 568
    .local v6, "profileFlag":I
    :goto_21
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v7

    if-nez v7, :cond_29

    .line 569
    move v7, v3

    goto :goto_2b

    .line 570
    :cond_29
    const/16 v7, 0x400

    :goto_2b
    nop

    .line 572
    .local v7, "hiddenApiFlag":I
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v8

    .line 573
    .local v8, "compilationReason":I
    const/4 v9, 0x1

    .line 574
    .local v9, "generateCompactDex":Z
    const/4 v10, 0x2

    if-eqz v8, :cond_39

    if-eq v8, v2, :cond_39

    if-eq v8, v10, :cond_39

    goto :goto_3a

    .line 578
    :cond_39
    const/4 v9, 0x0

    .line 586
    :goto_3a
    if-eqz v4, :cond_4d

    iget-object v11, p1, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    if-eqz v11, :cond_46

    .line 587
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v11

    if-nez v11, :cond_4d

    :cond_46
    invoke-direct {p0}, Lcom/android/server/pm/PackageDexOptimizer;->isAppImageEnabled()Z

    move-result v11

    if-eqz v11, :cond_4d

    goto :goto_4e

    :cond_4d
    move v2, v3

    .line 589
    .local v2, "generateAppImage":Z
    :goto_4e
    if-eqz v5, :cond_51

    goto :goto_52

    :cond_51
    move v10, v3

    .line 590
    :goto_52
    if-eqz v1, :cond_56

    const/4 v11, 0x4

    goto :goto_57

    :cond_56
    move v11, v3

    :goto_57
    or-int/2addr v10, v11

    or-int/2addr v10, v6

    .line 592
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->isBootComplete()Z

    move-result v11

    if-eqz v11, :cond_62

    const/16 v11, 0x8

    goto :goto_63

    :cond_62
    move v11, v3

    :goto_63
    or-int/2addr v10, v11

    .line 593
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptIdleBackgroundJob()Z

    move-result v11

    if-eqz v11, :cond_6d

    const/16 v11, 0x200

    goto :goto_6e

    :cond_6d
    move v11, v3

    :goto_6e
    or-int/2addr v10, v11

    .line 594
    if-eqz v9, :cond_74

    const/16 v11, 0x800

    goto :goto_75

    :cond_74
    move v11, v3

    :goto_75
    or-int/2addr v10, v11

    .line 595
    if-eqz v2, :cond_7a

    const/16 v3, 0x1000

    :cond_7a
    or-int/2addr v3, v10

    or-int/2addr v3, v7

    .line 597
    .local v3, "dexFlags":I
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptFlags(I)I

    move-result v10

    return v10
.end method

.method private getDexFlags(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 5
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "compilerFilter"  # Ljava/lang/String;
    .param p3, "options"  # Lcom/android/server/pm/dex/DexoptOptions;

    .line 548
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    return v0
.end method

.method private getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I
    .registers 10
    .param p1, "path"  # Ljava/lang/String;
    .param p2, "isa"  # Ljava/lang/String;
    .param p3, "compilerFilter"  # Ljava/lang/String;
    .param p4, "classLoaderContext"  # Ljava/lang/String;
    .param p5, "newProfile"  # Z
    .param p6, "downgrade"  # Z

    .line 608
    :try_start_0
    invoke-static/range {p1 .. p6}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_a

    .line 613
    .local v0, "dexoptNeeded":I
    nop

    .line 614
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptNeeded(I)I

    move-result v1

    return v1

    .line 610
    .end local v0  # "dexoptNeeded":I
    :catch_a
    move-exception v0

    .line 611
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException reading apk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager.DexOptimizer"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    const/4 v1, -0x1

    return v1
.end method

.method static getOatDir(Ljava/io/File;)Ljava/io/File;
    .registers 3
    .param p0, "codePath"  # Ljava/io/File;

    .line 675
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "oat"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p1, "info"  # Landroid/content/pm/ApplicationInfo;
    .param p2, "targetCompilerFilter"  # Ljava/lang/String;
    .param p3, "isUsedByOtherApps"  # Z

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

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v0, 0x1

    .line 529
    .local v0, "vmSafeModeOrDebuggable":Z
    :goto_25
    if-eqz v0, :cond_2c

    .line 530
    invoke-static {p2}, Ldalvik/system/DexFile;->getSafeModeCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 533
    :cond_2c
    invoke-static {p2}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    if-eqz p3, :cond_3a

    .line 535
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 539
    :cond_3a
    return-object p2

    .line 513
    .end local v0  # "vmSafeModeOrDebuggable":Z
    :cond_3b
    :goto_3b
    const-string/jumbo v0, "verify"

    return-object v0
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
    .registers 9
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "uid"  # I
    .param p3, "profileName"  # Ljava/lang/String;
    .param p4, "compilerFilter"  # Ljava/lang/String;

    .line 628
    invoke-static {p4}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 629
    return v1

    .line 633
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2, v2, p3}, Lcom/android/server/pm/Installer;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8 .. :try_end_10} :catch_11

    return v0

    .line 634
    :catch_11
    move-exception v0

    .line 635
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "PackageManager.DexOptimizer"

    const-string v3, "Failed to merge profiles"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    .end local v0  # "e":Lcom/android/server/pm/Installer$InstallerException;
    return v1
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 43
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "targetInstructionSets"  # [Ljava/lang/String;
    .param p3, "packageStats"  # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p4, "packageUseInfo"  # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p5, "options"  # Lcom/android/server/pm/dex/DexoptOptions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    .line 159
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    iget-object v13, v15, Landroid/content/pm/PackageParser$Package;->usesLibraryInfos:Ljava/util/ArrayList;

    .line 160
    .local v13, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    if-eqz p2, :cond_b

    .line 161
    move-object/from16 v0, p2

    goto :goto_11

    :cond_b
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v0

    :goto_11
    move-object/from16 v16, v0

    .line 162
    .local v16, "instructionSets":[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 163
    .local v12, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->getAllCodePaths()Ljava/util/List;

    move-result-object v11

    .line 165
    .local v11, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 166
    .local v0, "sharedGid":I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_55

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
    const/16 v0, 0x270f

    move v9, v0

    goto :goto_56

    .line 166
    :cond_55
    move v9, v0

    .line 175
    .end local v0  # "sharedGid":I
    .local v9, "sharedGid":I
    :goto_56
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Z

    .line 176
    .local v8, "pathsWithCode":[Z
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-eqz v0, :cond_6b

    move/from16 v0, v18

    goto :goto_6d

    :cond_6b
    move/from16 v0, v17

    :goto_6d
    aput-boolean v0, v8, v17

    .line 177
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_70
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8a

    .line 178
    iget-object v1, v15, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_83

    move/from16 v1, v18

    goto :goto_85

    :cond_83
    move/from16 v1, v17

    :goto_85
    aput-boolean v1, v8, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 180
    .end local v0  # "i":I
    :cond_8a
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v13, v8}, Lcom/android/server/pm/dex/DexoptUtils;->getClassLoaderContexts(Landroid/content/pm/ApplicationInfo;Ljava/util/List;[Z)[Ljava/lang/String;

    move-result-object v7

    .line 184
    .local v7, "classLoaderContexts":[Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, v7

    if-eq v0, v1, :cond_d4

    .line 185
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "splitCodePaths":[Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent information between PackageParser.Package and its ApplicationInfo. pkg.getAllCodePaths="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    if-nez v0, :cond_c5

    const-string/jumbo v3, "null"

    goto :goto_c9

    :cond_c5
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_c9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    .end local v0  # "splitCodePaths":[Ljava/lang/String;
    :cond_d4
    const/4 v0, 0x0

    .line 195
    .local v0, "result":I
    const/4 v1, 0x0

    move v6, v1

    .local v6, "i":I
    :goto_d7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_246

    .line 197
    aget-boolean v1, v8, v6

    if-nez v1, :cond_e2

    .line 198
    goto :goto_107

    .line 200
    :cond_e2
    aget-object v1, v7, v6

    if-eqz v1, :cond_21d

    .line 207
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 208
    .local v4, "path":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_118

    .line 211
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_118

    .line 212
    nop

    .line 195
    .end local v4  # "path":Ljava/lang/String;
    :goto_107
    move/from16 v34, v6

    move-object/from16 v24, v7

    move-object/from16 v32, v8

    move/from16 v33, v9

    move v14, v10

    move-object/from16 v35, v11

    move-object/from16 v25, v12

    move-object/from16 v36, v13

    goto/16 :goto_208

    .line 216
    .restart local v4  # "path":Ljava/lang/String;
    :cond_118
    const/4 v1, 0x0

    if-nez v6, :cond_11d

    move-object v2, v1

    goto :goto_123

    :cond_11d
    iget-object v2, v15, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    add-int/lit8 v3, v6, -0x1

    aget-object v2, v2, v3

    :goto_123
    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "profileName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 219
    .local v2, "dexMetadataPath":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v5

    if-eqz v5, :cond_141

    .line 220
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 221
    .local v5, "dexMetadataFile":Ljava/io/File;
    if-nez v5, :cond_13a

    .line 222
    goto :goto_13e

    :cond_13a
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_13e
    move-object/from16 v19, v1

    .end local v2  # "dexMetadataPath":Ljava/lang/String;
    .local v1, "dexMetadataPath":Ljava/lang/String;
    goto :goto_143

    .line 219
    .end local v1  # "dexMetadataPath":Ljava/lang/String;
    .end local v5  # "dexMetadataFile":Ljava/io/File;
    .restart local v2  # "dexMetadataPath":Ljava/lang/String;
    :cond_141
    move-object/from16 v19, v2

    .line 225
    .end local v2  # "dexMetadataPath":Ljava/lang/String;
    .local v19, "dexMetadataPath":Ljava/lang/String;
    :goto_143
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptAsSharedLibrary()Z

    move-result v1

    if-nez v1, :cond_155

    .line 226
    move-object/from16 v2, p4

    invoke-virtual {v2, v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isUsedByOtherApps(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_152

    goto :goto_157

    :cond_152
    move/from16 v1, v17

    goto :goto_159

    .line 225
    :cond_155
    move-object/from16 v2, p4

    .line 226
    :goto_157
    move/from16 v1, v18

    .line 227
    .local v1, "isUsedByOtherApps":Z
    :goto_159
    iget-object v5, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 228
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v10

    .line 227
    invoke-direct {v14, v5, v10, v1}, Lcom/android/server/pm/PackageDexOptimizer;->getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 229
    .local v10, "compilerFilter":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->isCheckForProfileUpdates()Z

    move-result v5

    if-eqz v5, :cond_172

    .line 230
    invoke-direct {v14, v15, v9, v3, v10}, Lcom/android/server/pm/PackageDexOptimizer;->isProfileUpdated(Landroid/content/pm/PackageParser$Package;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_172

    move/from16 v5, v18

    goto :goto_174

    :cond_172
    move/from16 v5, v17

    .line 234
    .local v5, "profileUpdated":Z
    :goto_174
    move/from16 v21, v5

    move-object/from16 v5, p5

    .end local v5  # "profileUpdated":Z
    .local v21, "profileUpdated":Z
    invoke-direct {v14, v15, v10, v5}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v22

    .line 236
    .local v22, "dexoptFlags":I
    array-length v14, v12

    move v15, v0

    move/from16 v0, v17

    .end local v0  # "result":I
    .local v15, "result":I
    :goto_180
    if-ge v0, v14, :cond_1ee

    aget-object v23, v12, v0

    .line 237
    .local v23, "dexCodeIsa":Ljava/lang/String;
    aget-object v24, v7, v6

    .line 239
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->isDowngrade()Z

    move-result v25

    .line 240
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v26

    .line 237
    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v28, v1

    .end local v1  # "isUsedByOtherApps":Z
    .local v28, "isUsedByOtherApps":Z
    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v29, v3

    .end local v3  # "profileName":Ljava/lang/String;
    .local v29, "profileName":Ljava/lang/String;
    move-object/from16 v3, v23

    move-object/from16 v30, v4

    .end local v4  # "path":Ljava/lang/String;
    .local v30, "path":Ljava/lang/String;
    move-object v4, v10

    move/from16 v31, v14

    move v14, v6

    .end local v6  # "i":I
    .local v14, "i":I
    move-object/from16 v6, v24

    move-object/from16 v24, v7

    .end local v7  # "classLoaderContexts":[Ljava/lang/String;
    .local v24, "classLoaderContexts":[Ljava/lang/String;
    move/from16 v7, v22

    move-object/from16 v32, v8

    .end local v8  # "pathsWithCode":[Z
    .local v32, "pathsWithCode":[Z
    move v8, v9

    move/from16 v33, v9

    .end local v9  # "sharedGid":I
    .local v33, "sharedGid":I
    move-object/from16 v9, p3

    move-object/from16 v20, v10

    move/from16 v34, v14

    const/4 v14, -0x1

    .end local v10  # "compilerFilter":Ljava/lang/String;
    .end local v14  # "i":I
    .local v20, "compilerFilter":Ljava/lang/String;
    .local v34, "i":I
    move/from16 v10, v25

    move-object/from16 v35, v11

    .end local v11  # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v35, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v11, v29

    move-object/from16 v25, v12

    .end local v12  # "dexCodeInstructionSets":[Ljava/lang/String;
    .local v25, "dexCodeInstructionSets":[Ljava/lang/String;
    move-object/from16 v12, v19

    move-object/from16 v36, v13

    .end local v13  # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v36, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    move/from16 v13, v26

    move/from16 v5, v21

    .end local v21  # "profileUpdated":Z
    .restart local v5  # "profileUpdated":Z
    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptPath(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 245
    .local v0, "newResult":I
    if-eq v15, v14, :cond_1cd

    if-eqz v0, :cond_1cd

    .line 246
    move v1, v0

    move v15, v1

    .line 236
    .end local v0  # "newResult":I
    .end local v23  # "dexCodeIsa":Ljava/lang/String;
    :cond_1cd
    add-int/lit8 v0, v27, 0x1

    move-object/from16 v2, p4

    move/from16 v21, v5

    move-object/from16 v10, v20

    move-object/from16 v7, v24

    move-object/from16 v12, v25

    move/from16 v1, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    move/from16 v14, v31

    move-object/from16 v8, v32

    move/from16 v9, v33

    move/from16 v6, v34

    move-object/from16 v11, v35

    move-object/from16 v13, v36

    move-object/from16 v5, p5

    goto :goto_180

    .end local v5  # "profileUpdated":Z
    .end local v20  # "compilerFilter":Ljava/lang/String;
    .end local v24  # "classLoaderContexts":[Ljava/lang/String;
    .end local v25  # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v28  # "isUsedByOtherApps":Z
    .end local v29  # "profileName":Ljava/lang/String;
    .end local v30  # "path":Ljava/lang/String;
    .end local v32  # "pathsWithCode":[Z
    .end local v33  # "sharedGid":I
    .end local v34  # "i":I
    .end local v35  # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36  # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v1  # "isUsedByOtherApps":Z
    .restart local v3  # "profileName":Ljava/lang/String;
    .restart local v4  # "path":Ljava/lang/String;
    .restart local v6  # "i":I
    .restart local v7  # "classLoaderContexts":[Ljava/lang/String;
    .restart local v8  # "pathsWithCode":[Z
    .restart local v9  # "sharedGid":I
    .restart local v10  # "compilerFilter":Ljava/lang/String;
    .restart local v11  # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12  # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v13  # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v21  # "profileUpdated":Z
    :cond_1ee
    move/from16 v28, v1

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move/from16 v34, v6

    move-object/from16 v24, v7

    move-object/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v20, v10

    move-object/from16 v35, v11

    move-object/from16 v25, v12

    move-object/from16 v36, v13

    move/from16 v5, v21

    const/4 v14, -0x1

    .end local v1  # "isUsedByOtherApps":Z
    .end local v3  # "profileName":Ljava/lang/String;
    .end local v4  # "path":Ljava/lang/String;
    .end local v6  # "i":I
    .end local v7  # "classLoaderContexts":[Ljava/lang/String;
    .end local v8  # "pathsWithCode":[Z
    .end local v9  # "sharedGid":I
    .end local v10  # "compilerFilter":Ljava/lang/String;
    .end local v11  # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12  # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v13  # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v21  # "profileUpdated":Z
    .restart local v5  # "profileUpdated":Z
    .restart local v20  # "compilerFilter":Ljava/lang/String;
    .restart local v24  # "classLoaderContexts":[Ljava/lang/String;
    .restart local v25  # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v28  # "isUsedByOtherApps":Z
    .restart local v29  # "profileName":Ljava/lang/String;
    .restart local v30  # "path":Ljava/lang/String;
    .restart local v32  # "pathsWithCode":[Z
    .restart local v33  # "sharedGid":I
    .restart local v34  # "i":I
    .restart local v35  # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v36  # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    move v0, v15

    .line 195
    .end local v5  # "profileUpdated":Z
    .end local v15  # "result":I
    .end local v19  # "dexMetadataPath":Ljava/lang/String;
    .end local v20  # "compilerFilter":Ljava/lang/String;
    .end local v22  # "dexoptFlags":I
    .end local v28  # "isUsedByOtherApps":Z
    .end local v29  # "profileName":Ljava/lang/String;
    .end local v30  # "path":Ljava/lang/String;
    .local v0, "result":I
    :goto_208
    add-int/lit8 v6, v34, 0x1

    move-object/from16 v15, p1

    move v10, v14

    move-object/from16 v7, v24

    move-object/from16 v12, v25

    move-object/from16 v8, v32

    move/from16 v9, v33

    move-object/from16 v11, v35

    move-object/from16 v13, v36

    move-object/from16 v14, p0

    .end local v34  # "i":I
    .restart local v6  # "i":I
    goto/16 :goto_d7

    .line 201
    .end local v24  # "classLoaderContexts":[Ljava/lang/String;
    .end local v25  # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v32  # "pathsWithCode":[Z
    .end local v33  # "sharedGid":I
    .end local v35  # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36  # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v7  # "classLoaderContexts":[Ljava/lang/String;
    .restart local v8  # "pathsWithCode":[Z
    .restart local v9  # "sharedGid":I
    .restart local v11  # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12  # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v13  # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :cond_21d
    move-object/from16 v35, v11

    .end local v11  # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v35  # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent information in the package structure. A split is marked to contain code but has no dependency listed. Index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    move-object/from16 v3, v35

    .end local v35  # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    .end local v3  # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6  # "i":I
    .restart local v11  # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_246
    return v0
.end method

.method private printDexoptFlags(I)Ljava/lang/String;
    .registers 5
    .param p1, "flags"  # I

    .line 683
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v0, "flagsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
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

    if-ne v1, v2, :cond_6c

    .line 710
    const-string/jumbo v1, "idle_background_job"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_6c
    and-int/lit16 v1, p1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_77

    .line 713
    const-string v1, "enable_hidden_api_checks"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    :cond_77
    const-string v1, ","

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private releaseWakeLockLI(J)V
    .registers 8
    .param p1, "acquireTime"  # J
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
    .local v1, "duration":J
    const-wide/32 v3, 0xa1220

    cmp-long v3, v1, v3

    if-ltz v3, :cond_54

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WakeLock "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " time out. Operation took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms. Thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 365
    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_54} :catch_55

    .line 371
    .end local v1  # "duration":J
    :cond_54
    goto :goto_75

    .line 369
    :catch_55
    move-exception v1

    .line 370
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while releasing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_75
    return-void
.end method


# virtual methods
.method protected adjustDexoptFlags(I)I
    .registers 2
    .param p1, "dexoptFlags"  # I

    .line 448
    return p1
.end method

.method protected adjustDexoptNeeded(I)I
    .registers 2
    .param p1, "dexoptNeeded"  # I

    .line 441
    return p1
.end method

.method public dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 9
    .param p1, "info"  # Landroid/content/pm/ApplicationInfo;
    .param p2, "path"  # Ljava/lang/String;
    .param p3, "dexUseInfo"  # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p4, "options"  # Lcom/android/server/pm/dex/DexoptOptions;

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
    .local v1, "acquireTime":J
    :try_start_e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPathLI(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_17

    .line 336
    :try_start_12
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    monitor-exit v0

    .line 334
    return v3

    .line 336
    :catchall_17
    move-exception v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    .end local p0  # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .end local p1  # "info":Landroid/content/pm/ApplicationInfo;
    .end local p2  # "path":Ljava/lang/String;
    .end local p3  # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local p4  # "options":Lcom/android/server/pm/dex/DexoptOptions;
    throw v3

    .line 338
    .end local v1  # "acquireTime":J
    .restart local p0  # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .restart local p1  # "info":Landroid/content/pm/ApplicationInfo;
    .restart local p2  # "path":Ljava/lang/String;
    .restart local p3  # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .restart local p4  # "options":Lcom/android/server/pm/dex/DexoptOptions;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_1c

    throw v1

    .line 329
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dexopt for path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has invalid uid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V
    .registers 20
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p3, "useInfo"  # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 456
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    iget-object v0, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, "instructionSets":[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 459
    .local v5, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v6

    .line 461
    .local v6, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_18
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 462
    .local v8, "path":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "path: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 465
    array-length v9, v5

    const/4 v0, 0x0

    move v10, v0

    :goto_40
    if-ge v10, v9, :cond_94

    aget-object v11, v5, v10

    .line 467
    .local v11, "isa":Ljava/lang/String;
    :try_start_44
    invoke-static {v8, v11}, Ldalvik/system/DexFile;->getDexFileOptimizationInfo(Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile$OptimizationInfo;

    move-result-object v0

    .line 468
    .local v0, "info":Ldalvik/system/DexFile$OptimizationInfo;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": [status="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ldalvik/system/DexFile$OptimizationInfo;->getStatus()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "] [reason="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v0}, Ldalvik/system/DexFile$OptimizationInfo;->getReason()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 468
    invoke-virtual {v1, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_74} :catch_75

    .line 472
    .end local v0  # "info":Ldalvik/system/DexFile$OptimizationInfo;
    goto :goto_91

    .line 470
    :catch_75
    move-exception v0

    .line 471
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": [Exception]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 465
    .end local v0  # "ioe":Ljava/io/IOException;
    .end local v11  # "isa":Ljava/lang/String;
    :goto_91
    add-int/lit8 v10, v10, 0x1

    goto :goto_40

    .line 475
    :cond_94
    invoke-virtual {v2, v8}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isUsedByOtherApps(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v9, "used by other apps: "

    if-eqz v0, :cond_b3

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getLoadingPackages(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 479
    :cond_b3
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v0

    .line 481
    .local v0, "dexUseInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_127

    .line 482
    const-string/jumbo v10, "known secondary dex files:"

    invoke-virtual {v1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 484
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_ce
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_124

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 485
    .local v11, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 486
    .local v12, "dex":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 487
    .local v13, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-virtual {v1, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 490
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "class loader context: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v14

    if-eqz v14, :cond_120

    .line 492
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoadingPackages()Ljava/util/Set;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 494
    :cond_120
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 495
    .end local v11  # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v12  # "dex":Ljava/lang/String;
    .end local v13  # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    goto :goto_ce

    .line 496
    :cond_124
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 498
    :cond_127
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 499
    .end local v0  # "dexUseInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v8  # "path":Ljava/lang/String;
    goto/16 :goto_18

    .line 500
    :cond_12c
    return-void
.end method

.method performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 10
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "instructionSets"  # [Ljava/lang/String;
    .param p3, "packageStats"  # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p4, "packageUseInfo"  # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p5, "options"  # Lcom/android/server/pm/dex/DexoptOptions;

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
    const/4 v0, 0x0

    return v0

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
    .local v1, "acquireTime":J
    :try_start_1a
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_23

    .line 146
    :try_start_1e
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    monitor-exit v0

    .line 143
    return v3

    .line 146
    :catchall_23
    move-exception v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    .end local p0  # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .end local p1  # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local p2  # "instructionSets":[Ljava/lang/String;
    .end local p3  # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .end local p4  # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local p5  # "options":Lcom/android/server/pm/dex/DexoptOptions;
    throw v3

    .line 148
    .end local v1  # "acquireTime":J
    .restart local p0  # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .restart local p1  # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local p2  # "instructionSets":[Ljava/lang/String;
    .restart local p3  # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .restart local p4  # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local p5  # "options":Lcom/android/server/pm/dex/DexoptOptions;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_28

    throw v1

    .line 134
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dexopt for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has invalid uid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method systemReady()V
    .registers 2

    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 680
    return-void
.end method
