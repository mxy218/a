.class public Lcom/android/server/pm/dex/DexManager;
.super Ljava/lang/Object;
.source "DexManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/DexManager$DexSearchResult;,
        Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;,
        Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_USE_INFO:Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

.field private static DEX_SEARCH_FOUND_PRIMARY:I = 0x0

.field private static DEX_SEARCH_FOUND_SECONDARY:I = 0x0

.field private static DEX_SEARCH_FOUND_SPLIT:I = 0x0

.field private static DEX_SEARCH_NOT_FOUND:I = 0x0

.field private static final PRIV_APPS_OOB_ENABLED:Ljava/lang/String; = "priv_apps_oob_enabled"

.field private static final PRIV_APPS_OOB_WHITELIST:Ljava/lang/String; = "priv_apps_oob_whitelist"

.field private static final PROPERTY_NAME_PM_DEXOPT_PRIV_APPS_OOB:Ljava/lang/String; = "pm.dexopt.priv-apps-oob"

.field private static final PROPERTY_NAME_PM_DEXOPT_PRIV_APPS_OOB_LIST:Ljava/lang/String; = "pm.dexopt.priv-apps-oob-list"

.field private static final TAG:Ljava/lang/String; = "DexManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation
.end field

.field private final mPackageCodeLocationsCache:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackageCodeLocationsCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

.field private final mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

.field private final mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 79
    const/4 v0, 0x3

    const-string v1, "DexManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    .line 106
    const/4 v1, 0x0

    sput v1, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    .line 107
    const/4 v1, 0x1

    sput v1, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    .line 108
    const/4 v1, 0x2

    sput v1, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    .line 109
    sput v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SECONDARY:I

    .line 122
    new-instance v0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>()V

    sput-object v0, Lcom/android/server/pm/dex/DexManager;->DEFAULT_USE_INFO:Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/android/server/pm/PackageDexOptimizer;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .registers 6

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mContext:Landroid/content/Context;

    .line 127
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    .line 128
    new-instance p1, Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-direct {p1}, Lcom/android/server/pm/dex/PackageDexUsage;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 129
    iput-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 130
    iput-object p3, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 131
    iput-object p4, p0, Lcom/android/server/pm/dex/DexManager;->mInstaller:Lcom/android/server/pm/Installer;

    .line 132
    iput-object p5, p0, Lcom/android/server/pm/dex/DexManager;->mInstallLock:Ljava/lang/Object;

    .line 133
    new-instance p1, Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-direct {p1, p2, p4}, Lcom/android/server/pm/dex/DynamicCodeLogger;-><init>(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;)V

    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 134
    return-void
.end method

.method static synthetic access$300(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 68
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()I
    .registers 1

    .line 68
    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    return v0
.end method

.method static synthetic access$500()I
    .registers 1

    .line 68
    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    return v0
.end method

.method static synthetic access$600()I
    .registers 1

    .line 68
    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    return v0
.end method

.method static synthetic access$700()I
    .registers 1

    .line 68
    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SECONDARY:I

    return v0
.end method

.method public static auditUncompressedDexInApk(Ljava/lang/String;)Z
    .registers 13

    .line 754
    const-string v0, "DexManager"

    .line 756
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    new-instance v3, Landroid/util/jar/StrictJarFile;

    invoke-direct {v3, p0, v1, v1}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_8e
    .catchall {:try_start_4 .. :try_end_9} :catchall_8b

    .line 758
    :try_start_9
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 759
    const/4 v4, 0x1

    .line 760
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 761
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 762
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dex"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 763
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v6
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2a} :catch_88
    .catchall {:try_start_9 .. :try_end_2a} :catchall_86

    const-string v7, "APK "

    if-eqz v6, :cond_4f

    .line 764
    nop

    .line 765
    :try_start_2f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has compressed dex code "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 765
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    goto :goto_7c

    .line 767
    :cond_4f
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v8

    const-wide/16 v10, 0x3

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_7c

    .line 768
    nop

    .line 769
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has unaligned dex code "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 769
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_7b} :catch_88
    .catchall {:try_start_2f .. :try_end_7b} :catchall_86

    move v4, v1

    .line 773
    :cond_7c
    :goto_7c
    goto :goto_e

    .line 774
    :cond_7d
    nop

    .line 780
    nop

    .line 781
    :try_start_7f
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    .line 783
    :goto_82
    goto :goto_85

    :catch_83
    move-exception p0

    goto :goto_82

    .line 774
    :goto_85
    return v4

    .line 779
    :catchall_86
    move-exception p0

    goto :goto_ad

    .line 775
    :catch_88
    move-exception v2

    move-object v2, v3

    goto :goto_8f

    .line 779
    :catchall_8b
    move-exception p0

    move-object v3, v2

    goto :goto_ad

    .line 775
    :catch_8e
    move-exception v3

    .line 776
    :goto_8f
    :try_start_8f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when parsing APK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_8f .. :try_end_a3} :catchall_8b

    .line 777
    nop

    .line 780
    if-eqz v2, :cond_ab

    .line 781
    :try_start_a6
    invoke-virtual {v2}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    goto :goto_ab

    .line 783
    :catch_aa
    move-exception p0

    :cond_ab
    :goto_ab
    nop

    .line 777
    return v1

    .line 780
    :goto_ad
    if-eqz v3, :cond_b4

    .line 781
    :try_start_af
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    goto :goto_b4

    .line 783
    :catch_b3
    move-exception v0

    :cond_b4
    :goto_b4
    throw p0
.end method

.method private cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 9

    .line 349
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    monitor-enter v0

    .line 350
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    new-instance v2, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    .line 355
    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->updateCodeLocation(Ljava/lang/String;[Ljava/lang/String;)V

    .line 356
    if-eqz p4, :cond_23

    .line 357
    array-length p2, p4

    const/4 p3, 0x0

    :goto_17
    if-ge p3, p2, :cond_23

    aget-object v1, p4, p3

    .line 362
    if-eqz v1, :cond_20

    .line 363
    invoke-virtual {p1, v1, p5}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mergeAppDataDirs(Ljava/lang/String;I)V

    .line 357
    :cond_20
    add-int/lit8 p3, p3, 0x1

    goto :goto_17

    .line 367
    :cond_23
    monitor-exit v0

    .line 368
    return-void

    .line 367
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1
.end method

.method private cachePackageInfo(Landroid/content/pm/PackageInfo;I)V
    .registers 11

    .line 340
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 341
    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v6, v2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v6, v2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v6, v2

    .line 343
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    move-object v2, p0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/dex/DexManager;->cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 345
    return-void
.end method

.method private getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .registers 8

    .line 644
    const-string v0, "/system/framework/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 645
    new-instance p1, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    sget p2, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    const-string p3, "framework"

    invoke-direct {p1, p0, p3, p2}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object p1

    .line 650
    :cond_12
    new-instance v0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    invoke-direct {v0, p1, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 652
    invoke-virtual {v0, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->searchDex(Ljava/lang/String;I)I

    move-result p1

    .line 653
    sget v1, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq p1, v1, :cond_29

    .line 655
    new-instance p2, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->access$200(Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p0, p3, p1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object p2

    .line 661
    :cond_29
    iget-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    monitor-enter p1

    .line 662
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    .line 663
    invoke-virtual {v1, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->searchDex(Ljava/lang/String;I)I

    move-result v2

    .line 664
    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v2, v3, :cond_55

    .line 665
    new-instance p2, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    invoke-static {v1}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->access$200(Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p0, p3, v2}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    monitor-exit p1

    return-object p2

    .line 667
    :cond_55
    goto :goto_36

    .line 668
    :cond_56
    monitor-exit p1
    :try_end_57
    .catchall {:try_start_2c .. :try_end_57} :catchall_93

    .line 670
    sget-boolean p1, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz p1, :cond_8a

    .line 675
    :try_start_5b
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->realpath(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 676
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_88

    .line 677
    const-string p3, "DexManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dex loaded with symlink. dexPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " dexPathReal="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_88} :catch_89

    .line 682
    :cond_88
    goto :goto_8a

    .line 680
    :catch_89
    move-exception p1

    .line 686
    :cond_8a
    :goto_8a
    new-instance p1, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    const/4 p2, 0x0

    sget p3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object p1

    .line 668
    :catchall_93
    move-exception p2

    :try_start_94
    monitor-exit p1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw p2
.end method

.method public static isPackageSelectedToRunOob(Ljava/lang/String;)Z
    .registers 3

    .line 708
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static isPackageSelectedToRunOob(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 717
    nop

    .line 718
    const-string/jumbo v0, "pm.dexopt.priv-apps-oob"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 719
    const-string/jumbo v1, "pm.dexopt.priv-apps-oob-list"

    const-string v2, "ALL"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 720
    const-string v2, "dex_boot"

    const-string/jumbo v3, "priv_apps_oob_enabled"

    invoke-static {v2, v3}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 721
    const-string/jumbo v4, "priv_apps_oob_whitelist"

    invoke-static {v2, v4}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 717
    invoke-static {v0, v1, v3, v2, p0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOobInternal(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method static isPackageSelectedToRunOobInternal(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 730
    if-eqz p2, :cond_a

    const-string/jumbo p0, "true"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_b

    .line 731
    :cond_a
    nop

    .line 732
    :goto_b
    const/4 p2, 0x0

    if-nez p0, :cond_f

    .line 733
    return p2

    .line 737
    :cond_f
    if-eqz p3, :cond_12

    move-object p1, p3

    .line 738
    :cond_12
    const-string p0, "ALL"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p3, 0x1

    if-eqz p0, :cond_1c

    .line 739
    return p3

    .line 741
    :cond_1c
    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    move v0, p2

    :goto_24
    if-ge v0, p1, :cond_32

    aget-object v1, p0, v0

    .line 742
    invoke-interface {p4, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 743
    return p3

    .line 741
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 746
    :cond_32
    return p2
.end method

.method private loadInternal(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 371
    const-string v0, "DexManager"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 372
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 376
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 377
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 378
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 379
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 381
    invoke-direct {p0, v5, v3}, Lcom/android/server/pm/dex/DexManager;->cachePackageInfo(Landroid/content/pm/PackageInfo;I)V

    .line 388
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1, v6, v7}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 390
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2, v6, v7}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 394
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v7, :cond_78

    .line 396
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v6, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 398
    :cond_78
    goto :goto_34

    .line 399
    :cond_79
    goto :goto_14

    .line 402
    :cond_7a
    :try_start_7a
    iget-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {p1}, Lcom/android/server/pm/dex/PackageDexUsage;->read()V

    .line 403
    iget-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/dex/PackageDexUsage;->syncData(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_84} :catch_85

    .line 408
    goto :goto_90

    .line 404
    :catch_85
    move-exception p1

    .line 405
    iget-object v2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage;->clear()V

    .line 406
    const-string v2, "Exception while loading package dex usage. Starting with a fresh state."

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    :goto_90
    :try_start_90
    iget-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {p1, v1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->readAndSync(Ljava/util/Map;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_95} :catch_96

    .line 416
    goto :goto_a1

    .line 412
    :catch_96
    move-exception p1

    .line 413
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->clear()V

    .line 414
    const-string v1, "Exception while loading package dynamic code usage. Starting with a fresh state."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    :goto_a1
    return-void
.end method

.method private static putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    .line 690
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 691
    if-nez p0, :cond_7

    move-object p0, p2

    :cond_7
    return-object p0
.end method


# virtual methods
.method public dexoptSecondaryDex(Lcom/android/server/pm/dex/DexoptOptions;)Z
    .registers 13

    .line 459
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->isForce()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 460
    new-instance v0, Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;

    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;-><init>(Lcom/android/server/pm/PackageDexOptimizer;)V

    goto :goto_10

    .line 461
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 462
    :goto_10
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-virtual {p0, v1}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v2

    .line 464
    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    const-string v4, "DexManager"

    const/4 v5, 0x1

    if-eqz v3, :cond_3e

    .line 465
    sget-boolean p1, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz p1, :cond_3d

    .line 466
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No secondary dex use for package:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_3d
    return v5

    .line 471
    :cond_3e
    nop

    .line 472
    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v5

    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 473
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 474
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 478
    :try_start_64
    iget-object v8, p0, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 479
    invoke-virtual {v6}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v9

    .line 478
    const/4 v10, 0x0

    invoke-interface {v8, v1, v10, v9}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v8
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_6f} :catch_ab

    .line 482
    nop

    .line 487
    if-nez v8, :cond_9c

    .line 488
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find package when compiling secondary dex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v6}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 488
    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v7, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v6}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v6

    invoke-virtual {v7, v1, v6}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    .line 491
    goto :goto_4c

    .line 494
    :cond_9c
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v8, v7, v6, p1}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v6

    .line 496
    if-eqz v3, :cond_a9

    const/4 v3, -0x1

    if-eq v6, v3, :cond_a9

    move v3, v5

    goto :goto_aa

    :cond_a9
    move v3, v10

    .line 497
    :goto_aa
    goto :goto_4c

    .line 480
    :catch_ab
    move-exception p1

    .line 481
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 498
    :cond_b2
    return v3
.end method

.method public getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    return-object v0
.end method

.method public getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .registers 3

    .line 430
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object p1

    .line 431
    if-nez p1, :cond_a

    sget-object p1, Lcom/android/server/pm/dex/DexManager;->DEFAULT_USE_INFO:Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    :cond_a
    return-object p1
.end method

.method hasInfoOnPackage(Ljava/lang/String;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public load(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 273
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/DexManager;->loadInternal(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 278
    goto :goto_16

    .line 274
    :catch_4
    move-exception p1

    .line 275
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->clear()V

    .line 276
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->clear()V

    .line 277
    const-string v0, "DexManager"

    const-string v1, "Exception while loading. Starting with a fresh state."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    :goto_16
    return-void
.end method

.method public notifyDexLoad(Landroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 161
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/dex/DexManager;->notifyDexLoadInternal(Landroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 166
    goto :goto_1d

    .line 163
    :catch_4
    move-exception p2

    .line 164
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Exception while notifying dex load for package "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "DexManager"

    invoke-static {p3, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    :goto_1d
    return-void
.end method

.method notifyDexLoadInternal(Landroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    .registers 27
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 173
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v11, p5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    const-string v12, "DexManager"

    if-eq v3, v4, :cond_1a

    .line 174
    const-string v0, "Bad call to noitfyDexLoad: args have different size"

    invoke-static {v12, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void

    .line 177
    :cond_1a
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 178
    const-string v0, "Bad call to notifyDexLoad: class loaders list is empty"

    invoke-static {v12, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 181
    :cond_26
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkISA(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading dex files "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in unsupported ISA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p4

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 189
    :cond_50
    move-object/from16 v13, p4

    const/4 v14, 0x0

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 190
    if-nez v3, :cond_5c

    .line 191
    return-void

    .line 194
    :cond_5c
    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 197
    invoke-static/range {p2 .. p3}, Lcom/android/server/pm/dex/DexoptUtils;->processContextForDexLoad(Ljava/util/List;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v16

    .line 202
    if-nez v16, :cond_87

    .line 203
    sget-boolean v2, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v2, :cond_87

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uses unsupported class loader in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_87
    nop

    .line 210
    array-length v10, v15

    move v9, v14

    move/from16 v17, v9

    :goto_8c
    if-ge v9, v10, :cond_14f

    aget-object v4, v15, v9

    .line 212
    invoke-direct {v0, v1, v4, v11}, Lcom/android/server/pm/dex/DexManager;->getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    move-result-object v2

    .line 214
    sget-boolean v3, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v3, :cond_bf

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " loads from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_bf
    invoke-static {v2}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v3

    sget v5, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v3, v5, :cond_12b

    .line 223
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 224
    invoke-static {v2}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v5

    .line 223
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 225
    const/4 v5, 0x1

    xor-int/lit8 v7, v3, 0x1

    invoke-static {v2}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v3

    sget v6, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    if-eq v3, v6, :cond_e7

    .line 226
    invoke-static {v2}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v3

    sget v6, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    if-ne v3, v6, :cond_e5

    goto :goto_e7

    :cond_e5
    move v8, v14

    goto :goto_e8

    :cond_e7
    :goto_e7
    move v8, v5

    .line 228
    :goto_e8
    if-eqz v8, :cond_f1

    if-nez v7, :cond_f1

    .line 232
    move/from16 v20, v9

    move/from16 v19, v10

    goto :goto_149

    .line 235
    :cond_f1
    if-nez v8, :cond_fe

    .line 237
    iget-object v3, v0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 238
    invoke-static {v2}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 237
    invoke-virtual {v3, v11, v4, v5, v6}, Lcom/android/server/pm/dex/DynamicCodeLogger;->recordDex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_fe
    if-eqz v16, :cond_126

    .line 247
    aget-object v18, v16, v17

    .line 248
    iget-object v3, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-static {v2}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v2, v3

    move-object v3, v5

    move/from16 v5, p5

    move-object/from16 v19, v6

    move-object/from16 v6, p4

    move/from16 v20, v9

    move-object/from16 v9, v19

    move/from16 v19, v10

    move-object/from16 v10, v18

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/dex/PackageDexUsage;->record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 251
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    goto :goto_12a

    .line 241
    :cond_126
    move/from16 v20, v9

    move/from16 v19, v10

    .line 254
    :cond_12a
    :goto_12a
    goto :goto_147

    .line 257
    :cond_12b
    move/from16 v20, v9

    move/from16 v19, v10

    sget-boolean v2, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v2, :cond_147

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find owning package for dex file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_147
    :goto_147
    add-int/lit8 v17, v17, 0x1

    .line 210
    :goto_149
    add-int/lit8 v9, v20, 0x1

    move/from16 v10, v19

    goto/16 :goto_8c

    .line 263
    :cond_14f
    return-void
.end method

.method public notifyPackageDataDestroyed(Ljava/lang/String;I)V
    .registers 4

    .line 323
    const/4 v0, -0x1

    if-ne p2, v0, :cond_16

    .line 324
    iget-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->removePackage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 325
    iget-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {p2}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 327
    :cond_10
    iget-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->removePackage(Ljava/lang/String;)V

    goto :goto_28

    .line 329
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 330
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 332
    :cond_23
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/dex/DynamicCodeLogger;->removeUserPackage(Ljava/lang/String;I)V

    .line 334
    :goto_28
    return-void
.end method

.method public notifyPackageInstalled(Landroid/content/pm/PackageInfo;I)V
    .registers 4

    .line 288
    const/4 v0, -0x1

    if-eq p2, v0, :cond_7

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/dex/DexManager;->cachePackageInfo(Landroid/content/pm/PackageInfo;I)V

    .line 293
    return-void

    .line 289
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "notifyPackageInstalled called with USER_ALL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyPackageUpdated(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10

    .line 301
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexManager;->cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 306
    iget-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->clearUsedByOtherApps(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 307
    iget-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {p1}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 309
    :cond_16
    return-void
.end method

.method public reconcileSecondaryDexFiles(Ljava/lang/String;)V
    .registers 16

    .line 507
    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v0

    .line 508
    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 509
    sget-boolean v0, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No secondary dex use for package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DexManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_28
    return-void

    .line 516
    :cond_29
    nop

    .line 517
    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 518
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 519
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 520
    const/4 v5, 0x0

    .line 526
    :try_start_51
    iget-object v6, p0, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 527
    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v7

    .line 526
    invoke-interface {v6, p1, v1, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_5b} :catch_5c

    .line 530
    goto :goto_5d

    .line 528
    :catch_5c
    move-exception v6

    .line 531
    :goto_5d
    const/4 v12, 0x1

    if-nez v5, :cond_95

    .line 534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find package when compiling secondary dex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 534
    const-string v5, "DexManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v4, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 538
    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    .line 537
    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_93

    if-eqz v2, :cond_91

    goto :goto_93

    :cond_91
    move v2, v1

    goto :goto_94

    :cond_93
    :goto_93
    move v2, v12

    .line 539
    :goto_94
    goto :goto_38

    .line 541
    :cond_95
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 542
    nop

    .line 543
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    if-eqz v6, :cond_a6

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 544
    invoke-static {v6, v4}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a6

    .line 545
    move v11, v12

    goto :goto_b4

    .line 546
    :cond_a6
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    if-eqz v6, :cond_111

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 547
    invoke-static {v6, v4}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_111

    .line 548
    const/4 v6, 0x2

    move v11, v6

    .line 556
    :goto_b4
    nop

    .line 557
    iget-object v13, p0, Lcom/android/server/pm/dex/DexManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v13

    .line 559
    :try_start_b8
    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, [Ljava/lang/String;

    .line 560
    iget-object v6, p0, Lcom/android/server/pm/dex/DexManager;->mInstaller:Lcom/android/server/pm/Installer;

    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    move-object v5, v6

    move-object v6, v4

    move-object v7, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/Installer;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5
    :try_end_d2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_b8 .. :try_end_d2} :catch_d5
    .catchall {:try_start_b8 .. :try_end_d2} :catchall_d3

    .line 565
    goto :goto_f9

    .line 566
    :catchall_d3
    move-exception p1

    goto :goto_10f

    .line 562
    :catch_d5
    move-exception v5

    .line 563
    :try_start_d6
    const-string v6, "DexManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got InstallerException when reconciling dex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {v5}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 563
    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v12

    .line 566
    :goto_f9
    monitor-exit v13
    :try_end_fa
    .catchall {:try_start_d6 .. :try_end_fa} :catchall_d3

    .line 567
    if-nez v5, :cond_10d

    .line 568
    iget-object v5, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 569
    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    .line 568
    invoke-virtual {v5, p1, v4, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_10c

    if-eqz v2, :cond_10b

    goto :goto_10c

    :cond_10b
    move v12, v1

    :cond_10c
    :goto_10c
    move v2, v12

    .line 572
    :cond_10d
    goto/16 :goto_38

    .line 566
    :goto_10f
    :try_start_10f
    monitor-exit v13
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_d3

    throw p1

    .line 550
    :cond_111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not infer CE/DE storage for path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DexManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v5, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 552
    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    .line 551
    invoke-virtual {v5, p1, v4, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_138

    if-eqz v2, :cond_136

    goto :goto_138

    :cond_136
    move v2, v1

    goto :goto_139

    :cond_138
    :goto_138
    move v2, v12

    .line 553
    :goto_139
    goto/16 :goto_38

    .line 573
    :cond_13b
    if-eqz v2, :cond_142

    .line 574
    iget-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {p1}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 576
    :cond_142
    return-void
.end method

.method public registerDexModule(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZI)Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;
    .registers 25

    .line 583
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    move/from16 v12, p4

    invoke-direct {v0, v1, v11, v12}, Lcom/android/server/pm/dex/DexManager;->getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    move-result-object v13

    .line 585
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    const/4 v14, 0x0

    if-ne v2, v3, :cond_1d

    .line 586
    new-instance v0, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v1, "Package not found"

    invoke-direct {v0, v14, v1}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 588
    :cond_1d
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 589
    new-instance v0, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v1, "Dex path does not belong to package"

    invoke-direct {v0, v14, v1}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 591
    :cond_31
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    if-eq v2, v3, :cond_c1

    .line 592
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    if-ne v2, v3, :cond_43

    goto/16 :goto_c1

    .line 597
    :cond_43
    nop

    .line 598
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v15

    array-length v10, v15

    move v9, v14

    move/from16 v16, v9

    :goto_4c
    if-ge v9, v10, :cond_76

    aget-object v6, v15, v9

    .line 599
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    .line 601
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v17

    .line 599
    const-string v18, "=UnknownClassLoaderContext="

    move-object/from16 v4, p2

    move/from16 v5, p4

    move/from16 v7, p3

    move/from16 v19, v9

    move-object/from16 v9, v17

    move/from16 v17, v10

    move-object/from16 v10, v18

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/dex/PackageDexUsage;->record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 603
    or-int v16, v16, v2

    .line 598
    add-int/lit8 v9, v19, 0x1

    move/from16 v10, v17

    goto :goto_4c

    .line 605
    :cond_76
    if-eqz v16, :cond_7d

    .line 606
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 609
    :cond_7d
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v2

    .line 610
    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 613
    new-instance v3, Lcom/android/server/pm/dex/DexoptOptions;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v14}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 616
    iget-object v0, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {v0, v1, v11, v2, v3}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    .line 624
    const/4 v1, -0x1

    if-eq v0, v1, :cond_b8

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to optimize dex module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_b8
    new-instance v0, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const/4 v1, 0x1

    const-string v2, "Dex module registered successfully"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 593
    :cond_c1
    :goto_c1
    new-instance v0, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v1, "Main apks cannot be registered"

    invoke-direct {v0, v14, v1}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public writePackageDexUsageNow()V
    .registers 2

    .line 698
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->writeNow()V

    .line 699
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->writeNow()V

    .line 700
    return-void
.end method
