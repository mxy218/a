.class public Lcom/android/server/pm/dex/PackageDexUsage;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "PackageDexUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;,
        Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/AbstractStatsBase<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final CODE_PATH_LINE_CHAR:Ljava/lang/String; = "+"

.field private static final DEX_LINE_CHAR:Ljava/lang/String; = "#"

.field private static final LOADING_PACKAGE_CHAR:Ljava/lang/String; = "@"

.field static final MAX_SECONDARY_FILES_PER_OWNER:I = 0x64
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PACKAGE_DEX_USAGE_SUPPORTED_VERSION_1:I = 0x1

.field private static final PACKAGE_DEX_USAGE_SUPPORTED_VERSION_2:I = 0x2

.field private static final PACKAGE_DEX_USAGE_VERSION:I = 0x2

.field private static final PACKAGE_DEX_USAGE_VERSION_HEADER:Ljava/lang/String; = "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

.field private static final SPLIT_CHAR:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "PackageDexUsage"

.field static final UNKNOWN_CLASS_LOADER_CONTEXT:Ljava/lang/String; = "=UnknownClassLoaderContext="

.field private static final UNSUPPORTED_CLASS_LOADER_CONTEXT:Ljava/lang/String; = "=UnsupportedClassLoaderContext="

.field static final VARIABLE_CLASS_LOADER_CONTEXT:Ljava/lang/String; = "=VariableClassLoaderContext="


# instance fields
.field private final mPackageUseInfoMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackageUseInfoMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 4

    .line 105
    const-string/jumbo v0, "package-dex-usage.list"

    const-string v1, "PackageDexUsage_DiskWriter"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 107
    return-void
.end method

.method private clonePackageUseInfoMap()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;",
            ">;"
        }
    .end annotation

    .line 682
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 683
    .local v0, "clone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v1

    .line 684
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 685
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$1;)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    nop

    .end local v3  # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    goto :goto_12

    .line 687
    :cond_35
    monitor-exit v1

    .line 688
    return-object v0

    .line 687
    :catchall_37
    move-exception v2

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_37

    throw v2
.end method

.method private isSupportedVersion(I)Z
    .registers 4
    .param p1, "version"  # I

    .line 500
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method private maybeAddLoadingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z
    .registers 5
    .param p1, "owningPackage"  # Ljava/lang/String;
    .param p2, "loadingPackage"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 496
    .local p3, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private maybeReadClassLoaderContext(Ljava/io/BufferedReader;I)Ljava/lang/String;
    .registers 6
    .param p1, "in"  # Ljava/io/BufferedReader;
    .param p2, "version"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, "context":Ljava/lang/String;
    const/4 v1, 0x2

    if-lt p2, v1, :cond_13

    .line 454
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_b

    goto :goto_13

    .line 456
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not find the classLoaderContext line."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :cond_13
    :goto_13
    if-nez v0, :cond_18

    const-string v1, "=UnknownClassLoaderContext="

    goto :goto_19

    :cond_18
    move-object v1, v0

    :goto_19
    return-object v1
.end method

.method private maybeReadLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;
    .registers 7
    .param p1, "in"  # Ljava/io/BufferedReader;
    .param p2, "version"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    const/4 v0, 0x2

    if-lt p2, v0, :cond_3a

    .line 472
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_32

    .line 477
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "@"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_1a

    .line 478
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 480
    :cond_1a
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 481
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 482
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 481
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 483
    return-object v1

    .line 474
    .end local v1  # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not find the loadingPackages line."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    .end local v0  # "line":Ljava/lang/String;
    :cond_3a
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private readBoolean(Ljava/lang/String;)Z
    .registers 5
    .param p1, "bool"  # Ljava/lang/String;

    .line 696
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 697
    :cond_a
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    .line 698
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown bool encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeDexFile(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageUseInfo"  # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p2, "dexFile"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 636
    invoke-static {p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 637
    .local v0, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 638
    return v1

    .line 640
    :cond_e
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v2

    if-ne v2, p3, :cond_1d

    .line 641
    invoke-static {p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const/4 v1, 0x1

    return v1

    .line 644
    :cond_1d
    return v1
.end method

.method private writeBoolean(Z)Ljava/lang/String;
    .registers 3
    .param p1, "bool"  # Z

    .line 692
    if-eqz p1, :cond_5

    const-string v0, "1"

    goto :goto_7

    :cond_5
    const-string v0, "0"

    :goto_7
    return-object v0
.end method


# virtual methods
.method clear()V
    .registers 3

    .line 675
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 676
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 677
    monitor-exit v0

    .line 678
    return-void

    .line 677
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method clearUsedByOtherApps(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 566
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 567
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 568
    .local v1, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-nez v1, :cond_10

    .line 569
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 571
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->clearCodePathUsedByOtherApps()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 572
    .end local v1  # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method dump()Ljava/lang/String;
    .registers 3

    .line 702
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 703
    .local v0, "sw":Ljava/io/StringWriter;
    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->write(Ljava/io/Writer;)V

    .line 704
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 663
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 664
    .local v0, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v1

    .line 665
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 666
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_37

    .line 667
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 669
    .end local v3  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    :cond_37
    goto :goto_12

    .line 670
    :cond_38
    monitor-exit v1

    .line 671
    return-object v0

    .line 670
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 648
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 649
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 655
    .local v1, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_f

    goto :goto_15

    :cond_f
    new-instance v3, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v3, v1, v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$1;)V

    move-object v2, v3

    :goto_15
    monitor-exit v0

    return-object v2

    .line 656
    .end local v1  # "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method maybeWriteAsync()V
    .registers 2

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 218
    return-void
.end method

.method read()V
    .registers 2

    .line 209
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->read(Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method read(Ljava/io/Reader;)V
    .registers 22
    .param p1, "reader"  # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 324
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    new-instance v0, Ljava/io/BufferedReader;

    move-object/from16 v3, p1

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v0

    .line 326
    .local v4, "in":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, "versionLine":Ljava/lang/String;
    if-eqz v5, :cond_208

    .line 331
    const-string v0, "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f1

    .line 335
    nop

    .line 336
    const-string v0, "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 337
    .local v6, "version":I
    invoke-direct {v1, v6}, Lcom/android/server/pm/dex/PackageDexUsage;->isSupportedVersion(I)Z

    move-result v0

    if-eqz v0, :cond_1da

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "currentPackage":Ljava/lang/String;
    const/4 v7, 0x0

    .line 346
    .local v7, "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 347
    .local v8, "supportedIsas":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v9, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v10, v9

    const/4 v11, 0x0

    move v12, v11

    :goto_3f
    if-ge v12, v10, :cond_4d

    aget-object v13, v9, v12

    .line 348
    .local v13, "abi":Ljava/lang/String;
    invoke-static {v13}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v13  # "abi":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_3f

    :cond_4d
    move-object v9, v7

    move-object v7, v0

    .line 350
    .end local v0  # "currentPackage":Ljava/lang/String;
    .local v7, "currentPackage":Ljava/lang/String;
    .local v9, "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :goto_4f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .local v10, "line":Ljava/lang/String;
    if-eqz v0, :cond_1c6

    .line 351
    const-string v0, "#"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 358
    if-eqz v7, :cond_136

    .line 364
    const-string v0, "#"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "dexPath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 368
    if-eqz v10, :cond_12c

    .line 371
    const-string v13, ","

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 372
    .local v13, "elems":[Ljava/lang/String;
    array-length v14, v13

    const/4 v15, 0x3

    if-lt v14, v15, :cond_113

    .line 377
    invoke-direct {v1, v4, v6}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeReadLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;

    move-result-object v14

    .line 378
    .local v14, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v1, v4, v6}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeReadClassLoaderContext(Ljava/io/BufferedReader;I)Ljava/lang/String;

    move-result-object v15

    .line 380
    .local v15, "classLoaderContext":Ljava/lang/String;
    const-string v12, "=UnsupportedClassLoaderContext="

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8e

    .line 383
    move-object/from16 v17, v7

    goto/16 :goto_161

    .line 386
    :cond_8e
    aget-object v12, v13, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 387
    .local v12, "ownerUserId":I
    const/16 v16, 0x1

    aget-object v11, v13, v16

    invoke-direct {v1, v11}, Lcom/android/server/pm/dex/PackageDexUsage;->readBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 388
    .local v11, "isUsedByOtherApps":Z
    new-instance v3, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    move-object/from16 v17, v7

    .end local v7  # "currentPackage":Ljava/lang/String;
    .local v17, "currentPackage":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-direct {v3, v11, v12, v15, v7}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 390
    .local v3, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 391
    const/4 v7, 0x2

    .local v7, "i":I
    :goto_ac
    move/from16 v16, v11

    .end local v11  # "isUsedByOtherApps":Z
    .local v16, "isUsedByOtherApps":Z
    array-length v11, v13

    if-ge v7, v11, :cond_ea

    .line 392
    aget-object v11, v13, v7

    .line 393
    .local v11, "isa":Ljava/lang/String;
    invoke-interface {v8, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c7

    .line 394
    move/from16 v18, v12

    .end local v12  # "ownerUserId":I
    .local v18, "ownerUserId":I
    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$700(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v12

    move-object/from16 v19, v14

    .end local v14  # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v19, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    aget-object v14, v13, v7

    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e1

    .line 399
    .end local v18  # "ownerUserId":I
    .end local v19  # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12  # "ownerUserId":I
    .restart local v14  # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c7
    move/from16 v18, v12

    move-object/from16 v19, v14

    .end local v12  # "ownerUserId":I
    .end local v14  # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18  # "ownerUserId":I
    .restart local v19  # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unsupported ISA when parsing PackageDexUsage: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, "PackageDexUsage"

    invoke-static {v14, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .end local v11  # "isa":Ljava/lang/String;
    :goto_e1
    add-int/lit8 v7, v7, 0x1

    move/from16 v11, v16

    move/from16 v12, v18

    move-object/from16 v14, v19

    goto :goto_ac

    .end local v18  # "ownerUserId":I
    .end local v19  # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12  # "ownerUserId":I
    .restart local v14  # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_ea
    move/from16 v18, v12

    move-object/from16 v19, v14

    .line 402
    .end local v7  # "i":I
    .end local v12  # "ownerUserId":I
    .end local v14  # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18  # "ownerUserId":I
    .restart local v19  # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_10b

    .line 403
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignore dexPath when parsing PackageDexUsage because of unsupported isas. dexPath="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "PackageDexUsage"

    invoke-static {v11, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    goto :goto_161

    .line 407
    :cond_10b
    invoke-static {v9}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .end local v0  # "dexPath":Ljava/lang/String;
    .end local v3  # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v13  # "elems":[Ljava/lang/String;
    .end local v15  # "classLoaderContext":Ljava/lang/String;
    .end local v16  # "isUsedByOtherApps":Z
    .end local v18  # "ownerUserId":I
    .end local v19  # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_161

    .line 373
    .end local v17  # "currentPackage":Ljava/lang/String;
    .restart local v0  # "dexPath":Ljava/lang/String;
    .local v7, "currentPackage":Ljava/lang/String;
    .restart local v13  # "elems":[Ljava/lang/String;
    :cond_113
    move-object/from16 v17, v7

    .end local v7  # "currentPackage":Ljava/lang/String;
    .restart local v17  # "currentPackage":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid PackageDexUsage line: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 369
    .end local v13  # "elems":[Ljava/lang/String;
    .end local v17  # "currentPackage":Ljava/lang/String;
    .restart local v7  # "currentPackage":Ljava/lang/String;
    :cond_12c
    move-object/from16 v17, v7

    .end local v7  # "currentPackage":Ljava/lang/String;
    .restart local v17  # "currentPackage":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v7, "Could not find dexUseInfo line"

    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 359
    .end local v0  # "dexPath":Ljava/lang/String;
    .end local v17  # "currentPackage":Ljava/lang/String;
    .restart local v7  # "currentPackage":Ljava/lang/String;
    :cond_136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Malformed PackageDexUsage file. Expected package line before dex line."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_13e
    move-object/from16 v17, v7

    .end local v7  # "currentPackage":Ljava/lang/String;
    .restart local v17  # "currentPackage":Ljava/lang/String;
    const-string v0, "+"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_17f

    .line 410
    if-lt v6, v3, :cond_168

    .line 418
    const-string v0, "+"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "codePath":Ljava/lang/String;
    invoke-direct {v1, v4, v6}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeReadLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;

    move-result-object v3

    .line 420
    .local v3, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v9}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$500(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .end local v0  # "codePath":Ljava/lang/String;
    .end local v3  # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 350
    .end local v10  # "line":Ljava/lang/String;
    :goto_161
    move-object/from16 v3, p1

    move-object/from16 v7, v17

    const/4 v11, 0x0

    goto/16 :goto_4f

    .line 411
    .restart local v10  # "line":Ljava/lang/String;
    :cond_168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected code path line when parsing PackageDexUseData: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_17f
    if-lt v6, v3, :cond_18b

    .line 424
    move-object v0, v10

    .line 425
    .end local v17  # "currentPackage":Ljava/lang/String;
    .local v0, "currentPackage":Ljava/lang/String;
    new-instance v3, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v3}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>()V

    move-object v7, v0

    move-object v9, v3

    const/4 v3, 0x0

    .end local v9  # "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .local v3, "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    goto :goto_1a7

    .line 429
    .end local v0  # "currentPackage":Ljava/lang/String;
    .end local v3  # "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local v9  # "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local v17  # "currentPackage":Ljava/lang/String;
    :cond_18b
    const-string v0, ","

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "elems":[Ljava/lang/String;
    array-length v7, v0

    if-ne v7, v3, :cond_1af

    .line 433
    const/4 v3, 0x0

    aget-object v7, v0, v3

    .line 434
    .end local v17  # "currentPackage":Ljava/lang/String;
    .restart local v7  # "currentPackage":Ljava/lang/String;
    new-instance v11, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v11}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>()V

    move-object v9, v11

    .line 435
    const/4 v11, 0x1

    aget-object v11, v0, v11

    invoke-direct {v1, v11}, Lcom/android/server/pm/dex/PackageDexUsage;->readBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v9, v11}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$802(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Z)Z

    .line 437
    .end local v0  # "elems":[Ljava/lang/String;
    :goto_1a7
    invoke-interface {v2, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v11, v3

    move-object/from16 v3, p1

    goto/16 :goto_4f

    .line 431
    .end local v7  # "currentPackage":Ljava/lang/String;
    .restart local v0  # "elems":[Ljava/lang/String;
    .restart local v17  # "currentPackage":Ljava/lang/String;
    :cond_1af
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid PackageDexUsage line: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 441
    .end local v0  # "elems":[Ljava/lang/String;
    .end local v17  # "currentPackage":Ljava/lang/String;
    .restart local v7  # "currentPackage":Ljava/lang/String;
    :cond_1c6
    move-object/from16 v17, v7

    .end local v7  # "currentPackage":Ljava/lang/String;
    .restart local v17  # "currentPackage":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v3

    .line 442
    :try_start_1cb
    iget-object v0, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 443
    iget-object v0, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 444
    monitor-exit v3

    .line 445
    return-void

    .line 444
    :catchall_1d7
    move-exception v0

    monitor-exit v3
    :try_end_1d9
    .catchall {:try_start_1cb .. :try_end_1d9} :catchall_1d7

    throw v0

    .line 338
    .end local v8  # "supportedIsas":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9  # "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local v10  # "line":Ljava/lang/String;
    .end local v17  # "currentPackage":Ljava/lang/String;
    :cond_1da
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected version: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    .end local v6  # "version":I
    :cond_1f1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid version line: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_208
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "No version line found."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic readInternal(Ljava/lang/Object;)V
    .registers 2

    .line 53
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->readInternal(Ljava/lang/Void;)V

    return-void
.end method

.method protected readInternal(Ljava/lang/Void;)V
    .registers 7
    .param p1, "data"  # Ljava/lang/Void;

    .line 308
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 309
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 311
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_5
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 312
    invoke-virtual {p0, v1}, Lcom/android/server/pm/dex/PackageDexUsage;->read(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_17} :catch_28
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_17} :catch_1a
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    goto :goto_29

    .line 318
    :catchall_18
    move-exception v2

    goto :goto_24

    .line 315
    :catch_1a
    move-exception v2

    .line 316
    .local v2, "e":Ljava/io/IOException;
    :try_start_1b
    const-string v3, "PackageDexUsage"

    const-string v4, "Failed to parse package dex usage."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    .line 318
    nop

    .end local v2  # "e":Ljava/io/IOException;
    goto :goto_2a

    :goto_24
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .line 313
    :catch_28
    move-exception v2

    .line 318
    :goto_29
    nop

    :goto_2a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 319
    nop

    .line 320
    return-void
.end method

.method record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)Z
    .registers 25
    .param p1, "owningPackageName"  # Ljava/lang/String;
    .param p2, "dexPath"  # Ljava/lang/String;
    .param p3, "ownerUserId"  # I
    .param p4, "loaderIsa"  # Ljava/lang/String;
    .param p5, "isUsedByOtherApps"  # Z
    .param p6, "primaryOrSplit"  # Z
    .param p7, "loadingPackageName"  # Ljava/lang/String;
    .param p8, "classLoaderContext"  # Ljava/lang/String;

    .line 130
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkISA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 133
    if-eqz v8, :cond_c6

    .line 137
    iget-object v9, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v9

    .line 138
    :try_start_1b
    iget-object v0, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 139
    .local v0, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    const/4 v10, 0x1

    if-nez v0, :cond_4d

    .line 141
    new-instance v11, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v11}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>()V

    move-object v0, v11

    .line 142
    if-eqz p6, :cond_32

    .line 146
    invoke-static {v0, v3, v6, v2, v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$000(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_46

    .line 151
    :cond_32
    new-instance v11, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-direct {v11, v6, v4, v8, v5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v11, "newData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    nop

    .line 155
    invoke-static {v11}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v12

    .line 154
    invoke-direct {v1, v2, v7, v12}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeAddLoadingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    .line 157
    .end local v11  # "newData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :goto_46
    iget-object v11, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    monitor-exit v9

    return v10

    .line 161
    :cond_4d
    if-eqz p6, :cond_55

    .line 164
    invoke-static {v0, v3, v6, v2, v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$000(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    monitor-exit v9

    return v10

    .line 167
    :cond_55
    new-instance v11, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-direct {v11, v6, v4, v8, v5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 169
    .restart local v11  # "newData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    nop

    .line 170
    invoke-static {v11}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v12

    .line 169
    invoke-direct {v1, v2, v7, v12}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeAddLoadingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v12

    .line 172
    .local v12, "updateLoadingPackages":Z
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 173
    .local v13, "existingData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    if-nez v13, :cond_86

    .line 175
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    const/16 v15, 0x64

    if-ge v14, v15, :cond_84

    .line 176
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    monitor-exit v9

    return v10

    .line 179
    :cond_84
    monitor-exit v9

    return v12

    .line 182
    :cond_86
    invoke-static {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v14

    if-ne v4, v14, :cond_98

    .line 197
    invoke-static {v13, v11}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$400(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z

    move-result v14

    if-nez v14, :cond_96

    if-eqz v12, :cond_95

    goto :goto_96

    :cond_95
    const/4 v10, 0x0

    :cond_96
    :goto_96
    monitor-exit v9

    return v10

    .line 191
    :cond_98
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Trying to change ownerUserId for  dex path "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/pm/dex/PackageDexUsage;
    .end local p1  # "owningPackageName":Ljava/lang/String;
    .end local p2  # "dexPath":Ljava/lang/String;
    .end local p3  # "ownerUserId":I
    .end local p4  # "loaderIsa":Ljava/lang/String;
    .end local p5  # "isUsedByOtherApps":Z
    .end local p6  # "primaryOrSplit":Z
    .end local p7  # "loadingPackageName":Ljava/lang/String;
    .end local p8  # "classLoaderContext":Ljava/lang/String;
    throw v10

    .line 201
    .end local v0  # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local v11  # "newData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v12  # "updateLoadingPackages":Z
    .end local v13  # "existingData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .restart local p0  # "this":Lcom/android/server/pm/dex/PackageDexUsage;
    .restart local p1  # "owningPackageName":Ljava/lang/String;
    .restart local p2  # "dexPath":Ljava/lang/String;
    .restart local p3  # "ownerUserId":I
    .restart local p4  # "loaderIsa":Ljava/lang/String;
    .restart local p5  # "isUsedByOtherApps":Z
    .restart local p6  # "primaryOrSplit":Z
    .restart local p7  # "loadingPackageName":Ljava/lang/String;
    .restart local p8  # "classLoaderContext":Ljava/lang/String;
    :catchall_c3
    move-exception v0

    monitor-exit v9
    :try_end_c5
    .catchall {:try_start_1b .. :try_end_c5} :catchall_c3

    throw v0

    .line 134
    :cond_c6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v9, "Null classLoaderContext"

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_ce
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "loaderIsa "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is unsupported"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "dexFile"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 626
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 627
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 628
    .local v1, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-nez v1, :cond_10

    .line 629
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 631
    :cond_10
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 632
    .end local v1  # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method removePackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;

    .line 580
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 581
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 582
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method removeUserPackage(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 593
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 594
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 595
    .local v1, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-nez v1, :cond_10

    .line 596
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 598
    :cond_10
    const/4 v2, 0x0

    .line 599
    .local v2, "updated":Z
    nop

    .line 600
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 601
    .local v3, "dIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;>;"
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 602
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 603
    .local v4, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v5

    if-ne v5, p2, :cond_3a

    .line 604
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 605
    const/4 v2, 0x1

    .line 607
    .end local v4  # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_3a
    goto :goto_1e

    .line 610
    :cond_3b
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 611
    invoke-virtual {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v4

    if-nez v4, :cond_51

    .line 612
    iget-object v4, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const/4 v2, 0x1

    .line 615
    :cond_51
    monitor-exit v0

    return v2

    .line 616
    .end local v1  # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local v2  # "updated":Z
    .end local v3  # "dIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;>;"
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw v1
.end method

.method syncData(Ljava/util/Map;Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 509
    .local p1, "packageToUsersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .local p2, "packageToCodePaths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 510
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 511
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 512
    .local v1, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 513
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 514
    .local v2, "pEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 515
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 516
    .local v4, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 517
    .local v5, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v5, :cond_32

    .line 519
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_c1

    .line 523
    :cond_32
    nop

    .line 524
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 525
    .local v6, "dIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;>;"
    :goto_3f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_63

    .line 526
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 527
    .local v7, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-static {v7}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_62

    .line 529
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 531
    .end local v7  # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_62
    goto :goto_3f

    .line 534
    :cond_63
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 535
    .local v7, "codePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 536
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$500(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 537
    .local v8, "codeIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :cond_76
    :goto_76
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_90

    .line 538
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_76

    .line 539
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_76

    .line 546
    :cond_90
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$800(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Z

    move-result v9

    if-eqz v9, :cond_ae

    .line 547
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ad

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 548
    .local v10, "codePath":Ljava/lang/String;
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v4, v10, v11, v12, v12}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$000(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    .line 549
    nop

    .end local v10  # "codePath":Ljava/lang/String;
    goto :goto_9a

    :cond_ad
    goto :goto_c1

    .line 550
    :cond_ae
    invoke-virtual {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v9

    if-nez v9, :cond_c1

    .line 551
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_c1

    .line 554
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 557
    .end local v2  # "pEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .end local v3  # "packageName":Ljava/lang/String;
    .end local v4  # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local v5  # "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v6  # "dIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;>;"
    .end local v7  # "codePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8  # "codeIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :cond_c1
    :goto_c1
    goto/16 :goto_d

    .line 558
    .end local v1  # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;>;"
    :cond_c3
    monitor-exit v0

    .line 559
    return-void

    .line 558
    :catchall_c5
    move-exception v1

    monitor-exit v0
    :try_end_c7
    .catchall {:try_start_3 .. :try_end_c7} :catchall_c5

    throw v1
.end method

.method write(Ljava/io/Writer;)V
    .registers 20
    .param p1, "out"  # Ljava/io/Writer;

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/dex/PackageDexUsage;->clonePackageUseInfoMap()Ljava/util/Map;

    move-result-object v0

    .line 266
    .local v0, "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 269
    .local v1, "fpw":Lcom/android/internal/util/FastPrintWriter;
    const-string v3, "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 270
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->println(I)V

    .line 272
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 274
    .local v5, "pEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 275
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 276
    .local v7, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-virtual {v1, v6}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 280
    invoke-static {v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$500(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_43
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "@"

    const-string v11, ","

    if-eqz v9, :cond_8a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 281
    .local v9, "codeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 282
    .local v12, "codePath":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    .line 283
    .local v13, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 284
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v13}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 285
    .end local v9  # "codeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v12  # "codePath":Ljava/lang/String;
    .end local v13  # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_43

    .line 288
    :cond_8a
    invoke-static {v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_96
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_135

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 289
    .local v9, "dEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 290
    .local v12, "dexPath":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 291
    .local v13, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 292
    new-array v14, v3, [Ljava/lang/CharSequence;

    const/4 v15, 0x0

    invoke-static {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 293
    invoke-static {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$600(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z

    move-result v3

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    .end local v0  # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .local v17, "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    invoke-direct {v0, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->writeBoolean(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v15

    .line 292
    invoke-static {v11, v14}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 294
    invoke-static {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$700(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ed
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 295
    .local v14, "isa":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 296
    .end local v14  # "isa":Ljava/lang/String;
    goto :goto_ed

    .line 297
    :cond_10c
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->println()V

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-static {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v14

    invoke-static {v11, v14}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 301
    .end local v9  # "dEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v12  # "dexPath":Ljava/lang/String;
    .end local v13  # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    move-object/from16 v0, v17

    const/4 v3, 0x2

    goto/16 :goto_96

    .line 288
    .end local v17  # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .restart local v0  # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    :cond_135
    move-object/from16 v17, v0

    move-object/from16 v0, p0

    .line 302
    .end local v0  # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .end local v5  # "pEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .end local v6  # "packageName":Ljava/lang/String;
    .end local v7  # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local v17  # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    move-object/from16 v0, v17

    const/4 v3, 0x2

    goto/16 :goto_1c

    .line 303
    .end local v17  # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .restart local v0  # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    :cond_13e
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 304
    return-void
.end method

.method protected bridge synthetic writeInternal(Ljava/lang/Object;)V
    .registers 2

    .line 53
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->writeInternal(Ljava/lang/Void;)V

    return-void
.end method

.method protected writeInternal(Ljava/lang/Void;)V
    .registers 7
    .param p1, "data"  # Ljava/lang/Void;

    .line 226
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 227
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 230
    .local v1, "f":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 231
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 232
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    invoke-virtual {p0, v2}, Lcom/android/server/pm/dex/PackageDexUsage;->write(Ljava/io/Writer;)V

    .line 233
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 234
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_18} :catch_19

    .line 240
    .end local v2  # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_26

    .line 235
    :catch_19
    move-exception v2

    .line 236
    .local v2, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1f

    .line 237
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 239
    :cond_1f
    const-string v3, "PackageDexUsage"

    const-string v4, "Failed to write usage for dex files"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    .end local v2  # "e":Ljava/io/IOException;
    :goto_26
    return-void
.end method

.method writeNow()V
    .registers 2

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->writeInternal(Ljava/lang/Void;)V

    .line 222
    return-void
.end method
