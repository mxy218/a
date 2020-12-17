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
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "pms"  # Landroid/content/pm/IPackageManager;
    .param p3, "pdo"  # Lcom/android/server/pm/PackageDexOptimizer;
    .param p4, "installer"  # Lcom/android/server/pm/Installer;
    .param p5, "installLock"  # Ljava/lang/Object;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mContext:Landroid/content/Context;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    .line 128
    new-instance v0, Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-direct {v0}, Lcom/android/server/pm/dex/PackageDexUsage;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 129
    iput-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 130
    iput-object p3, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 131
    iput-object p4, p0, Lcom/android/server/pm/dex/DexManager;->mInstaller:Lcom/android/server/pm/Installer;

    .line 132
    iput-object p5, p0, Lcom/android/server/pm/dex/DexManager;->mInstallLock:Ljava/lang/Object;

    .line 133
    new-instance v0, Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-direct {v0, p2, p4}, Lcom/android/server/pm/dex/DynamicCodeLogger;-><init>(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 134
    return-void
.end method

.method static synthetic access$300(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "x0"  # Ljava/util/Map;
    .param p1, "x1"  # Ljava/lang/Object;
    .param p2, "x2"  # Ljava/lang/Object;

    .line 68
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .param p0, "fileName"  # Ljava/lang/String;

    .line 754
    const-string v0, "DexManager"

    const/4 v1, 0x0

    .line 756
    .local v1, "jarFile":Landroid/util/jar/StrictJarFile;
    const/4 v2, 0x0

    :try_start_4
    new-instance v3, Landroid/util/jar/StrictJarFile;

    invoke-direct {v3, p0, v2, v2}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    move-object v1, v3

    .line 758
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 759
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    const/4 v4, 0x1

    .line 760
    .local v4, "allCorrect":Z
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 761
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 762
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dex"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 763
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v6
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_2b} :catch_87
    .catchall {:try_start_4 .. :try_end_2b} :catchall_85

    const-string v7, "APK "

    if-eqz v6, :cond_4f

    .line 764
    const/4 v4, 0x0

    .line 765
    :try_start_30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has compressed dex code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 765
    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 767
    :cond_4f
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v8

    const-wide/16 v10, 0x3

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_7b

    .line 768
    const/4 v4, 0x0

    .line 769
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has unaligned dex code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 769
    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_7b} :catch_87
    .catchall {:try_start_30 .. :try_end_7b} :catchall_85

    .line 773
    .end local v5  # "entry":Ljava/util/zip/ZipEntry;
    :cond_7b
    :goto_7b
    goto :goto_f

    .line 774
    :cond_7c
    nop

    .line 780
    nop

    .line 781
    :try_start_7e
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    .line 783
    :goto_81
    goto :goto_84

    :catch_82
    move-exception v0

    goto :goto_81

    .line 774
    :goto_84
    return v4

    .line 779
    .end local v3  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .end local v4  # "allCorrect":Z
    :catchall_85
    move-exception v0

    goto :goto_a6

    .line 775
    :catch_87
    move-exception v3

    .line 776
    .local v3, "ignore":Ljava/io/IOException;
    :try_start_88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when parsing APK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_88 .. :try_end_9c} :catchall_85

    .line 777
    nop

    .line 780
    if-eqz v1, :cond_a4

    .line 781
    :try_start_9f
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3

    goto :goto_a4

    .line 783
    :catch_a3
    move-exception v0

    :cond_a4
    :goto_a4
    nop

    .line 777
    return v2

    .line 780
    .end local v3  # "ignore":Ljava/io/IOException;
    :goto_a6
    if-eqz v1, :cond_ad

    .line 781
    :try_start_a8
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_ad

    .line 783
    :catch_ac
    move-exception v2

    :cond_ad
    :goto_ad
    throw v0
.end method

.method private cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "baseCodePath"  # Ljava/lang/String;
    .param p3, "splitCodePaths"  # [Ljava/lang/String;
    .param p4, "dataDirs"  # [Ljava/lang/String;
    .param p5, "userId"  # I

    .line 349
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    monitor-enter v0

    .line 350
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    new-instance v2, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    .line 355
    .local v1, "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    invoke-virtual {v1, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->updateCodeLocation(Ljava/lang/String;[Ljava/lang/String;)V

    .line 356
    if-eqz p4, :cond_23

    .line 357
    array-length v2, p4

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_23

    aget-object v4, p4, v3

    .line 362
    .local v4, "dataDir":Ljava/lang/String;
    if-eqz v4, :cond_20

    .line 363
    invoke-virtual {v1, v4, p5}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mergeAppDataDirs(Ljava/lang/String;I)V

    .line 357
    .end local v4  # "dataDir":Ljava/lang/String;
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 367
    .end local v1  # "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    :cond_23
    monitor-exit v0

    .line 368
    return-void

    .line 367
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private cachePackageInfo(Landroid/content/pm/PackageInfo;I)V
    .registers 11
    .param p1, "pi"  # Landroid/content/pm/PackageInfo;
    .param p2, "userId"  # I

    .line 340
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 341
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
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
    .local v6, "dataDirs":[Ljava/lang/String;
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
    .registers 10
    .param p1, "loadingAppInfo"  # Landroid/content/pm/ApplicationInfo;
    .param p2, "dexPath"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 644
    const-string v0, "/system/framework/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 645
    new-instance v0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    sget v1, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    const-string v2, "framework"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object v0

    .line 650
    :cond_12
    new-instance v0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    invoke-direct {v0, p1, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 652
    .local v0, "loadingPackageCodeLocations":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->searchDex(Ljava/lang/String;I)I

    move-result v1

    .line 653
    .local v1, "outcome":I
    sget v2, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v1, v2, :cond_29

    .line 655
    new-instance v2, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->access$200(Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object v2

    .line 661
    :cond_29
    iget-object v2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    monitor-enter v2

    .line 662
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    .line 663
    .local v4, "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    invoke-virtual {v4, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->searchDex(Ljava/lang/String;I)I

    move-result v5

    move v1, v5

    .line 664
    sget v5, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v1, v5, :cond_56

    .line 665
    new-instance v3, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    invoke-static {v4}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->access$200(Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v5, v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    monitor-exit v2

    return-object v3

    .line 667
    .end local v4  # "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    :cond_56
    goto :goto_36

    .line 668
    :cond_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_2c .. :try_end_58} :catchall_94

    .line 670
    sget-boolean v2, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v2, :cond_8b

    .line 675
    :try_start_5c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->realpath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 676
    .local v2, "dexPathReal":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    .line 677
    const-string v3, "DexManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dex loaded with symlink. dexPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " dexPathReal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_89} :catch_8a

    .line 682
    .end local v2  # "dexPathReal":Ljava/lang/String;
    :cond_89
    goto :goto_8b

    .line 680
    :catch_8a
    move-exception v2

    .line 686
    :cond_8b
    :goto_8b
    new-instance v2, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    const/4 v3, 0x0

    sget v4, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object v2

    .line 668
    :catchall_94
    move-exception v3

    :try_start_95
    monitor-exit v2
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v3
.end method

.method public static isPackageSelectedToRunOob(Ljava/lang/String;)Z
    .registers 3
    .param p0, "packageName"  # Ljava/lang/String;

    .line 708
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/util/Collection;)Z

    move-result v0

    return v0
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
    .local p0, "packageNamesInSameProcess":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
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

    move-result v0

    return v0
.end method

.method static isPackageSelectedToRunOobInternal(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Z
    .registers 14
    .param p0, "isDefaultEnabled"  # Z
    .param p1, "defaultWhitelist"  # Ljava/lang/String;
    .param p2, "overrideEnabled"  # Ljava/lang/String;
    .param p3, "overrideWhitelist"  # Ljava/lang/String;
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
    .local p4, "packageNamesInSameProcess":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p2, :cond_a

    const-string/jumbo v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_b

    .line 731
    :cond_a
    move v0, p0

    :goto_b
    nop

    .line 732
    .local v0, "enabled":Z
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 733
    return v1

    .line 737
    :cond_10
    if-eqz p3, :cond_14

    move-object v2, p3

    goto :goto_15

    :cond_14
    move-object v2, p1

    .line 738
    .local v2, "whitelist":Ljava/lang/String;
    :goto_15
    const-string v3, "ALL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1f

    .line 739
    return v4

    .line 741
    :cond_1f
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    move v6, v1

    :goto_27
    if-ge v6, v5, :cond_35

    aget-object v7, v3, v6

    .line 742
    .local v7, "oobPkgName":Ljava/lang/String;
    invoke-interface {p4, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 743
    return v4

    .line 741
    .end local v7  # "oobPkgName":Ljava/lang/String;
    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 746
    :cond_35
    return v1
.end method

.method private loadInternal(Ljava/util/Map;)V
    .registers 14
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
    .local p1, "existingPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    const-string v0, "DexManager"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 372
    .local v1, "packageToUsersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 376
    .local v2, "packageToCodePaths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 377
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 378
    .local v5, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 379
    .local v6, "userId":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_34
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_79

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 381
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v8, v6}, Lcom/android/server/pm/dex/DexManager;->cachePackageInfo(Landroid/content/pm/PackageInfo;I)V

    .line 388
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1, v9, v10}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 390
    .local v9, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2, v10, v11}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 394
    .local v10, "codePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v11, :cond_78

    .line 396
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 398
    .end local v8  # "pi":Landroid/content/pm/PackageInfo;
    .end local v9  # "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v10  # "codePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_78
    goto :goto_34

    .line 399
    .end local v4  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    .end local v5  # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v6  # "userId":I
    :cond_79
    goto :goto_14

    .line 402
    :cond_7a
    :try_start_7a
    iget-object v3, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage;->read()V

    .line 403
    iget-object v3, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/pm/dex/PackageDexUsage;->syncData(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_84} :catch_85

    .line 408
    goto :goto_90

    .line 404
    :catch_85
    move-exception v3

    .line 405
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v4}, Lcom/android/server/pm/dex/PackageDexUsage;->clear()V

    .line 406
    const-string v4, "Exception while loading package dex usage. Starting with a fresh state."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_90
    :try_start_90
    iget-object v3, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->readAndSync(Ljava/util/Map;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_95} :catch_96

    .line 416
    goto :goto_a1

    .line 412
    :catch_96
    move-exception v3

    .line 413
    .restart local v3  # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v4}, Lcom/android/server/pm/dex/DynamicCodeLogger;->clear()V

    .line 414
    const-string v4, "Exception while loading package dynamic code usage. Starting with a fresh state."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_a1
    return-void
.end method

.method private static putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
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
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 691
    .local v0, "existingValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_8

    move-object v1, p2

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method


# virtual methods
.method public dexoptSecondaryDex(Lcom/android/server/pm/dex/DexoptOptions;)Z
    .registers 16
    .param p1, "options"  # Lcom/android/server/pm/dex/DexoptOptions;

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

    :goto_10
    nop

    .line 462
    .local v0, "pdo":Lcom/android/server/pm/PackageDexOptimizer;
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v2

    .line 464
    .local v2, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    const-string v4, "DexManager"

    const/4 v5, 0x1

    if-eqz v3, :cond_3f

    .line 465
    sget-boolean v3, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v3, :cond_3e

    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No secondary dex use for package:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_3e
    return v5

    .line 471
    :cond_3f
    const/4 v3, 0x1

    .line 472
    .local v3, "success":Z
    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 473
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 474
    .local v8, "dexPath":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 478
    .local v9, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :try_start_64
    iget-object v10, p0, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 479
    invoke-virtual {v9}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v11

    .line 478
    const/4 v12, 0x0

    invoke-interface {v10, v1, v12, v11}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_6f} :catch_aa

    .line 482
    .local v10, "pkg":Landroid/content/pm/PackageInfo;
    nop

    .line 487
    if-nez v10, :cond_9c

    .line 488
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not find package when compiling secondary dex "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " for user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v9}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 488
    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v11, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v9}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v12

    invoke-virtual {v11, v1, v12}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    .line 491
    goto :goto_4c

    .line 494
    :cond_9c
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v11, v8, v9, p1}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v11

    .line 496
    .local v11, "result":I
    if-eqz v3, :cond_a8

    const/4 v13, -0x1

    if-eq v11, v13, :cond_a8

    move v12, v5

    :cond_a8
    move v3, v12

    .line 497
    .end local v7  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v8  # "dexPath":Ljava/lang/String;
    .end local v9  # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v10  # "pkg":Landroid/content/pm/PackageInfo;
    .end local v11  # "result":I
    goto :goto_4c

    .line 480
    .restart local v7  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .restart local v8  # "dexPath":Ljava/lang/String;
    .restart local v9  # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :catch_aa
    move-exception v4

    .line 481
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 498
    .end local v4  # "e":Landroid/os/RemoteException;
    .end local v7  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v8  # "dexPath":Ljava/lang/String;
    .end local v9  # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_b1
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
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v0

    .line 431
    .local v0, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-nez v0, :cond_b

    sget-object v1, Lcom/android/server/pm/dex/DexManager;->DEFAULT_USE_INFO:Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    goto :goto_c

    :cond_b
    move-object v1, v0

    :goto_c
    return-object v1
.end method

.method hasInfoOnPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public load(Ljava/util/Map;)V
    .registers 5
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
    .local p1, "existingPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/DexManager;->loadInternal(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 278
    goto :goto_16

    .line 274
    :catch_4
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v1}, Lcom/android/server/pm/dex/PackageDexUsage;->clear()V

    .line 276
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->clear()V

    .line 277
    const-string v1, "DexManager"

    const-string v2, "Exception while loading. Starting with a fresh state."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_16
    return-void
.end method

.method public notifyDexLoad(Landroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    .registers 9
    .param p1, "loadingAppInfo"  # Landroid/content/pm/ApplicationInfo;
    .param p4, "loaderIsa"  # Ljava/lang/String;
    .param p5, "loaderUserId"  # I
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
    .local p2, "classLoadersNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "classPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/dex/DexManager;->notifyDexLoadInternal(Landroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 166
    goto :goto_1d

    .line 163
    :catch_4
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while notifying dex load for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_1d
    return-void
.end method

.method notifyDexLoadInternal(Landroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    .registers 30
    .param p1, "loadingAppInfo"  # Landroid/content/pm/ApplicationInfo;
    .param p4, "loaderIsa"  # Ljava/lang/String;
    .param p5, "loaderUserId"  # I
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
    .local p2, "classLoaderNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "classPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v12, p5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    const-string v13, "DexManager"

    if-eq v3, v4, :cond_1a

    .line 174
    const-string v3, "Bad call to noitfyDexLoad: args have different size"

    invoke-static {v13, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void

    .line 177
    :cond_1a
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 178
    const-string v3, "Bad call to notifyDexLoad: class loaders list is empty"

    invoke-static {v13, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 181
    :cond_26
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkISA(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading dex files "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in unsupported ISA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p4

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 189
    :cond_50
    move-object/from16 v14, p4

    const/4 v15, 0x0

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    .line 190
    .local v11, "firstClassPath":Ljava/lang/String;
    if-nez v11, :cond_5d

    .line 191
    return-void

    .line 194
    :cond_5d
    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 197
    .local v10, "dexPathsToRegister":[Ljava/lang/String;
    invoke-static/range {p2 .. p3}, Lcom/android/server/pm/dex/DexoptUtils;->processContextForDexLoad(Ljava/util/List;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v16

    .line 202
    .local v16, "classLoaderContexts":[Ljava/lang/String;
    if-nez v16, :cond_8c

    .line 203
    sget-boolean v3, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v3, :cond_89

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uses unsupported class loader in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p2

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 203
    :cond_89
    move-object/from16 v9, p2

    goto :goto_8e

    .line 202
    :cond_8c
    move-object/from16 v9, p2

    .line 209
    :goto_8e
    const/4 v3, 0x0

    .line 210
    .local v3, "dexPathIndex":I
    array-length v8, v10

    move/from16 v17, v3

    move v7, v15

    .end local v3  # "dexPathIndex":I
    .local v17, "dexPathIndex":I
    :goto_93
    if-ge v7, v8, :cond_178

    aget-object v6, v10, v7

    .line 212
    .local v6, "dexPath":Ljava/lang/String;
    invoke-direct {v0, v1, v6, v12}, Lcom/android/server/pm/dex/DexManager;->getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    move-result-object v5

    .line 214
    .local v5, "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    sget-boolean v3, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v3, :cond_c6

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " loads from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_c6
    invoke-static {v5}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v3

    sget v4, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v3, v4, :cond_144

    .line 223
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 224
    invoke-static {v5}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    move/from16 v18, v3

    .line 225
    .local v18, "isUsedByOtherApps":Z
    invoke-static {v5}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v3

    sget v4, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    if-eq v3, v4, :cond_f0

    .line 226
    invoke-static {v5}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v3

    sget v4, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    if-ne v3, v4, :cond_ed

    goto :goto_f0

    :cond_ed
    move/from16 v19, v15

    goto :goto_f2

    :cond_f0
    :goto_f0
    const/16 v19, 0x1

    .line 228
    .local v19, "primaryOrSplit":Z
    :goto_f2
    if-eqz v19, :cond_ff

    if-nez v18, :cond_ff

    .line 232
    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v10

    move-object v2, v11

    goto/16 :goto_168

    .line 235
    :cond_ff
    if-nez v19, :cond_10c

    .line 237
    iget-object v3, v0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 238
    invoke-static {v5}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v4

    iget-object v15, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 237
    invoke-virtual {v3, v12, v6, v4, v15}, Lcom/android/server/pm/dex/DynamicCodeLogger;->recordDex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_10c
    if-eqz v16, :cond_139

    .line 247
    aget-object v15, v16, v17

    .line 248
    .local v15, "classLoaderContext":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-static {v5}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v5

    .end local v5  # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .local v20, "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    move-object v5, v6

    move-object v1, v6

    .end local v6  # "dexPath":Ljava/lang/String;
    .local v1, "dexPath":Ljava/lang/String;
    move/from16 v6, p5

    move/from16 v21, v7

    move-object/from16 v7, p4

    move/from16 v22, v8

    move/from16 v8, v18

    move/from16 v9, v19

    move-object/from16 v23, v10

    .end local v10  # "dexPathsToRegister":[Ljava/lang/String;
    .local v23, "dexPathsToRegister":[Ljava/lang/String;
    move-object v10, v2

    move-object v2, v11

    .end local v11  # "firstClassPath":Ljava/lang/String;
    .local v2, "firstClassPath":Ljava/lang/String;
    move-object v11, v15

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/dex/PackageDexUsage;->record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_143

    .line 251
    iget-object v3, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    goto :goto_143

    .line 241
    .end local v1  # "dexPath":Ljava/lang/String;
    .end local v2  # "firstClassPath":Ljava/lang/String;
    .end local v15  # "classLoaderContext":Ljava/lang/String;
    .end local v20  # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .end local v23  # "dexPathsToRegister":[Ljava/lang/String;
    .restart local v5  # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v6  # "dexPath":Ljava/lang/String;
    .restart local v10  # "dexPathsToRegister":[Ljava/lang/String;
    .restart local v11  # "firstClassPath":Ljava/lang/String;
    :cond_139
    move-object/from16 v20, v5

    move-object v1, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v10

    move-object v2, v11

    .line 254
    .end local v5  # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .end local v6  # "dexPath":Ljava/lang/String;
    .end local v10  # "dexPathsToRegister":[Ljava/lang/String;
    .end local v11  # "firstClassPath":Ljava/lang/String;
    .end local v18  # "isUsedByOtherApps":Z
    .end local v19  # "primaryOrSplit":Z
    .restart local v1  # "dexPath":Ljava/lang/String;
    .restart local v2  # "firstClassPath":Ljava/lang/String;
    .restart local v20  # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v23  # "dexPathsToRegister":[Ljava/lang/String;
    :cond_143
    :goto_143
    goto :goto_166

    .line 257
    .end local v1  # "dexPath":Ljava/lang/String;
    .end local v2  # "firstClassPath":Ljava/lang/String;
    .end local v20  # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .end local v23  # "dexPathsToRegister":[Ljava/lang/String;
    .restart local v5  # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v6  # "dexPath":Ljava/lang/String;
    .restart local v10  # "dexPathsToRegister":[Ljava/lang/String;
    .restart local v11  # "firstClassPath":Ljava/lang/String;
    :cond_144
    move-object/from16 v20, v5

    move-object v1, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v10

    move-object v2, v11

    .end local v5  # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .end local v6  # "dexPath":Ljava/lang/String;
    .end local v10  # "dexPathsToRegister":[Ljava/lang/String;
    .end local v11  # "firstClassPath":Ljava/lang/String;
    .restart local v1  # "dexPath":Ljava/lang/String;
    .restart local v2  # "firstClassPath":Ljava/lang/String;
    .restart local v20  # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v23  # "dexPathsToRegister":[Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v3, :cond_166

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find owning package for dex file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_166
    :goto_166
    add-int/lit8 v17, v17, 0x1

    .line 210
    .end local v1  # "dexPath":Ljava/lang/String;
    .end local v20  # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    :goto_168
    add-int/lit8 v7, v21, 0x1

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move-object v11, v2

    move/from16 v8, v22

    move-object/from16 v10, v23

    const/4 v15, 0x0

    move-object/from16 v2, p3

    goto/16 :goto_93

    .line 263
    .end local v2  # "firstClassPath":Ljava/lang/String;
    .end local v23  # "dexPathsToRegister":[Ljava/lang/String;
    .restart local v10  # "dexPathsToRegister":[Ljava/lang/String;
    .restart local v11  # "firstClassPath":Ljava/lang/String;
    :cond_178
    return-void
.end method

.method public notifyPackageDataDestroyed(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 323
    const/4 v0, -0x1

    if-ne p2, v0, :cond_16

    .line 324
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->removePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 325
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 327
    :cond_10
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->removePackage(Ljava/lang/String;)V

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
    .registers 5
    .param p1, "pi"  # Landroid/content/pm/PackageInfo;
    .param p2, "userId"  # I

    .line 288
    const/4 v0, -0x1

    if-eq p2, v0, :cond_7

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/dex/DexManager;->cachePackageInfo(Landroid/content/pm/PackageInfo;I)V

    .line 293
    return-void

    .line 289
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "notifyPackageInstalled called with USER_ALL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyPackageUpdated(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "baseCodePath"  # Ljava/lang/String;
    .param p3, "splitCodePaths"  # [Ljava/lang/String;

    .line 301
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexManager;->cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 306
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->clearUsedByOtherApps(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 307
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 309
    :cond_16
    return-void
.end method

.method public reconcileSecondaryDexFiles(Ljava/lang/String;)V
    .registers 25
    .param p1, "packageName"  # Ljava/lang/String;

    .line 507
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v10

    .line 508
    .local v10, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-virtual {v10}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 509
    sget-boolean v0, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No secondary dex use for package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DexManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_2c
    return-void

    .line 516
    :cond_2d
    const/4 v0, 0x0

    .line 517
    .local v0, "updated":Z
    invoke-virtual {v10}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v0

    .end local v0  # "updated":Z
    .local v12, "updated":Z
    :goto_3b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/util/Map$Entry;

    .line 518
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 519
    .local v14, "dexPath":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 520
    .local v15, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    const/4 v2, 0x0

    .line 526
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    const/4 v8, 0x0

    :try_start_58
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 527
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    .line 526
    invoke-interface {v0, v9, v8, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_62} :catch_65

    move-object v2, v0

    .line 530
    move-object v7, v2

    goto :goto_67

    .line 528
    :catch_65
    move-exception v0

    move-object v7, v2

    .line 531
    .end local v2  # "pkg":Landroid/content/pm/PackageInfo;
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    :goto_67
    const/16 v16, 0x1

    if-nez v7, :cond_a1

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find package when compiling secondary dex "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    const-string v2, "DexManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 538
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v2

    .line 537
    invoke-virtual {v0, v9, v2}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_9e

    if-eqz v12, :cond_9c

    goto :goto_9e

    :cond_9c
    move/from16 v16, v8

    :cond_9e
    :goto_9e
    move/from16 v12, v16

    .line 539
    goto :goto_3b

    .line 541
    :cond_a1
    iget-object v5, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 542
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v0, 0x0

    .line 543
    .local v0, "flags":I
    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    if-eqz v2, :cond_b5

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 544
    invoke-static {v2, v14}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 545
    or-int/lit8 v0, v0, 0x1

    move/from16 v17, v0

    goto :goto_c5

    .line 546
    :cond_b5
    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    if-eqz v2, :cond_14e

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 547
    invoke-static {v2, v14}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_147

    .line 548
    or-int/lit8 v0, v0, 0x2

    move/from16 v17, v0

    .line 556
    .end local v0  # "flags":I
    .local v17, "flags":I
    :goto_c5
    const/16 v18, 0x1

    .line 557
    .local v18, "dexStillExists":Z
    iget-object v4, v1, Lcom/android/server/pm/dex/DexManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 559
    :try_start_ca
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    .line 560
    .local v6, "isas":[Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/pm/dex/DexManager;->mInstaller:Lcom/android/server/pm/Installer;

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;
    :try_end_dd
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_ca .. :try_end_dd} :catch_100
    .catchall {:try_start_ca .. :try_end_dd} :catchall_f8

    move-object/from16 v19, v3

    move-object v3, v14

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    move-object/from16 v21, v5

    .end local v5  # "info":Landroid/content/pm/ApplicationInfo;
    .local v21, "info":Landroid/content/pm/ApplicationInfo;
    move v5, v0

    move-object/from16 v22, v7

    .end local v7  # "pkg":Landroid/content/pm/PackageInfo;
    .local v22, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v7, v19

    move/from16 v19, v8

    move/from16 v8, v17

    :try_start_ef
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_f3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_ef .. :try_end_f3} :catch_f6
    .catchall {:try_start_ef .. :try_end_f3} :catchall_144

    .line 565
    .end local v6  # "isas":[Ljava/lang/String;
    .end local v18  # "dexStillExists":Z
    .local v0, "dexStillExists":Z
    move/from16 v18, v0

    goto :goto_12b

    .line 562
    .end local v0  # "dexStillExists":Z
    .restart local v18  # "dexStillExists":Z
    :catch_f6
    move-exception v0

    goto :goto_109

    .line 566
    .end local v21  # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22  # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5  # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v7  # "pkg":Landroid/content/pm/PackageInfo;
    :catchall_f8
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    .end local v5  # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7  # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v21  # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v22  # "pkg":Landroid/content/pm/PackageInfo;
    goto :goto_145

    .line 562
    .end local v21  # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22  # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5  # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v7  # "pkg":Landroid/content/pm/PackageInfo;
    :catch_100
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move/from16 v19, v8

    .line 563
    .end local v5  # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7  # "pkg":Landroid/content/pm/PackageInfo;
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v21  # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v22  # "pkg":Landroid/content/pm/PackageInfo;
    :goto_109
    :try_start_109
    const-string v2, "DexManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got InstallerException when reconciling dex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 563
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    .end local v0  # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_12b
    monitor-exit v20
    :try_end_12c
    .catchall {:try_start_109 .. :try_end_12c} :catchall_144

    .line 567
    if-nez v18, :cond_142

    .line 568
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 569
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v2

    .line 568
    invoke-virtual {v0, v9, v14, v2}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_13f

    if-eqz v12, :cond_13d

    goto :goto_13f

    :cond_13d
    move/from16 v16, v19

    :cond_13f
    :goto_13f
    move/from16 v0, v16

    move v12, v0

    .line 572
    .end local v13  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v14  # "dexPath":Ljava/lang/String;
    .end local v15  # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v17  # "flags":I
    .end local v18  # "dexStillExists":Z
    .end local v21  # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22  # "pkg":Landroid/content/pm/PackageInfo;
    :cond_142
    goto/16 :goto_3b

    .line 566
    .restart local v13  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .restart local v14  # "dexPath":Ljava/lang/String;
    .restart local v15  # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .restart local v17  # "flags":I
    .restart local v18  # "dexStillExists":Z
    .restart local v21  # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v22  # "pkg":Landroid/content/pm/PackageInfo;
    :catchall_144
    move-exception v0

    :goto_145
    :try_start_145
    monitor-exit v20
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_144

    throw v0

    .line 547
    .end local v17  # "flags":I
    .end local v18  # "dexStillExists":Z
    .end local v21  # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22  # "pkg":Landroid/content/pm/PackageInfo;
    .local v0, "flags":I
    .restart local v5  # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v7  # "pkg":Landroid/content/pm/PackageInfo;
    :cond_147
    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move/from16 v19, v8

    .end local v5  # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7  # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v21  # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v22  # "pkg":Landroid/content/pm/PackageInfo;
    goto :goto_154

    .line 546
    .end local v21  # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22  # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5  # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v7  # "pkg":Landroid/content/pm/PackageInfo;
    :cond_14e
    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move/from16 v19, v8

    .line 550
    .end local v5  # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7  # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v21  # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v22  # "pkg":Landroid/content/pm/PackageInfo;
    :goto_154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not infer CE/DE storage for path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DexManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v2, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 552
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    .line 551
    invoke-virtual {v2, v9, v14, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_17b

    if-eqz v12, :cond_179

    goto :goto_17b

    :cond_179
    move/from16 v16, v19

    :cond_17b
    :goto_17b
    move/from16 v12, v16

    .line 553
    goto/16 :goto_3b

    .line 573
    .end local v0  # "flags":I
    .end local v13  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v14  # "dexPath":Ljava/lang/String;
    .end local v15  # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v21  # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22  # "pkg":Landroid/content/pm/PackageInfo;
    :cond_17f
    if-eqz v12, :cond_186

    .line 574
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 576
    :cond_186
    return-void
.end method

.method public registerDexModule(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZI)Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;
    .registers 26
    .param p1, "info"  # Landroid/content/pm/ApplicationInfo;
    .param p2, "dexPath"  # Ljava/lang/String;
    .param p3, "isUsedByOtherApps"  # Z
    .param p4, "userId"  # I

    .line 583
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    move/from16 v12, p4

    invoke-direct {v0, v1, v11, v12}, Lcom/android/server/pm/dex/DexManager;->getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    move-result-object v13

    .line 585
    .local v13, "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    const/4 v14, 0x0

    if-ne v2, v3, :cond_1d

    .line 586
    new-instance v2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v3, "Package not found"

    invoke-direct {v2, v14, v3}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 588
    :cond_1d
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 589
    new-instance v2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v3, "Dex path does not belong to package"

    invoke-direct {v2, v14, v3}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 591
    :cond_31
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    if-eq v2, v3, :cond_c3

    .line 592
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    if-ne v2, v3, :cond_43

    goto/16 :goto_c3

    .line 597
    :cond_43
    const/4 v2, 0x0

    .line 598
    .local v2, "update":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v15

    array-length v10, v15

    move/from16 v16, v2

    move v9, v14

    .end local v2  # "update":Z
    .local v16, "update":Z
    :goto_4c
    if-ge v9, v10, :cond_78

    aget-object v17, v15, v9

    .line 599
    .local v17, "isa":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    .line 601
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v18

    .line 599
    const-string v19, "=UnknownClassLoaderContext="

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v6, v17

    move/from16 v7, p3

    move/from16 v20, v9

    move-object/from16 v9, v18

    move/from16 v18, v10

    move-object/from16 v10, v19

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/dex/PackageDexUsage;->record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 603
    .local v2, "newUpdate":Z
    or-int v16, v16, v2

    .line 598
    .end local v2  # "newUpdate":Z
    .end local v17  # "isa":Ljava/lang/String;
    add-int/lit8 v9, v20, 0x1

    move/from16 v10, v18

    goto :goto_4c

    .line 605
    :cond_78
    if-eqz v16, :cond_7f

    .line 606
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 609
    :cond_7f
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
    .local v2, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    new-instance v3, Lcom/android/server/pm/dex/DexoptOptions;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v14}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 616
    .local v3, "options":Lcom/android/server/pm/dex/DexoptOptions;
    iget-object v4, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {v4, v1, v11, v2, v3}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v4

    .line 624
    .local v4, "result":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_ba

    .line 625
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to optimize dex module "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DexManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_ba
    new-instance v5, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const/4 v6, 0x1

    const-string v7, "Dex module registered successfully"

    invoke-direct {v5, v6, v7}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v5

    .line 593
    .end local v2  # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v3  # "options":Lcom/android/server/pm/dex/DexoptOptions;
    .end local v4  # "result":I
    .end local v16  # "update":Z
    :cond_c3
    :goto_c3
    new-instance v2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v3, "Main apks cannot be registered"

    invoke-direct {v2, v14, v3}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v2
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
