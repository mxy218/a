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
    .registers 8
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

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 685
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$1;)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    goto :goto_12

    .line 687
    :cond_34
    monitor-exit v1

    .line 688
    return-object v0

    .line 687
    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_36

    throw v0
.end method

.method private isSupportedVersion(I)Z
    .registers 4

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
    .registers 4
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
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private maybeReadClassLoaderContext(Ljava/io/BufferedReader;I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    nop

    .line 453
    const/4 v0, 0x2

    if-lt p2, v0, :cond_13

    .line 454
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 455
    if-eqz p1, :cond_b

    goto :goto_14

    .line 456
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not find the classLoaderContext line."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 453
    :cond_13
    const/4 p1, 0x0

    .line 462
    :goto_14
    if-nez p1, :cond_18

    const-string p1, "=UnknownClassLoaderContext="

    :cond_18
    return-object p1
.end method

.method private maybeReadLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;
    .registers 5
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

    move-result-object p1

    .line 473
    if-eqz p1, :cond_32

    .line 477
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "@"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne p2, v1, :cond_1a

    .line 478
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 480
    :cond_1a
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 481
    nop

    .line 482
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 481
    invoke-static {p2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 483
    return-object p2

    .line 474
    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not find the loadingPackages line."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 486
    :cond_3a
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method private readBoolean(Ljava/lang/String;)Z
    .registers 5

    .line 696
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 697
    :cond_a
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x1

    return p1

    .line 698
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown bool encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeDexFile(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;I)Z
    .registers 6

    .line 636
    invoke-static {p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 637
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 638
    return v1

    .line 640
    :cond_e
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v0

    if-ne v0, p3, :cond_1d

    .line 641
    invoke-static {p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const/4 p1, 0x1

    return p1

    .line 644
    :cond_1d
    return v1
.end method

.method private writeBoolean(Z)Ljava/lang/String;
    .registers 2

    .line 692
    if-eqz p1, :cond_5

    const-string p1, "1"

    goto :goto_7

    :cond_5
    const-string p1, "0"

    :goto_7
    return-object p1
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
    .registers 4

    .line 566
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 567
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 568
    if-nez p1, :cond_10

    .line 569
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 571
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->clearCodePathUsedByOtherApps()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 572
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method dump()Ljava/lang/String;
    .registers 2

    .line 702
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 703
    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->write(Ljava/io/Writer;)V

    .line 704
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 669
    :cond_37
    goto :goto_12

    .line 670
    :cond_38
    monitor-exit v1

    .line 671
    return-object v0

    .line 670
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .registers 5

    .line 648
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 649
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 655
    const/4 v1, 0x0

    if-nez p1, :cond_f

    goto :goto_15

    :cond_f
    new-instance v2, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v2, p1, v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$1;)V

    move-object v1, v2

    :goto_15
    monitor-exit v0

    return-object v1

    .line 656
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
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
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 324
    new-instance v2, Ljava/io/BufferedReader;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 326
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 328
    if-eqz v3, :cond_1dd

    .line 331
    const-string v4, "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c6

    .line 335
    nop

    .line 336
    const-string v4, "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 337
    invoke-direct {v0, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->isSupportedVersion(I)Z

    move-result v4

    if-eqz v4, :cond_1af

    .line 343
    nop

    .line 344
    nop

    .line 346
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 347
    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_3d
    if-ge v8, v6, :cond_4b

    aget-object v9, v5, v8

    .line 348
    invoke-static {v9}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v8, v8, 0x1

    goto :goto_3d

    :cond_4b
    const/4 v5, 0x0

    move-object v6, v5

    move-object v8, v6

    .line 350
    :goto_4e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_19d

    .line 351
    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v10, :cond_11f

    .line 358
    if-eqz v6, :cond_117

    .line 364
    const-string v10, "#"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 367
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 368
    if-eqz v10, :cond_10f

    .line 371
    const-string v13, ","

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 372
    array-length v14, v13

    const/4 v15, 0x3

    if-lt v14, v15, :cond_f8

    .line 377
    invoke-direct {v0, v2, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeReadLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;

    move-result-object v10

    .line 378
    invoke-direct {v0, v2, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeReadClassLoaderContext(Ljava/io/BufferedReader;I)Ljava/lang/String;

    move-result-object v14

    .line 380
    const-string v15, "=UnsupportedClassLoaderContext="

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8c

    .line 383
    goto/16 :goto_13f

    .line 386
    :cond_8c
    aget-object v15, v13, v7

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 387
    aget-object v12, v13, v12

    invoke-direct {v0, v12}, Lcom/android/server/pm/dex/PackageDexUsage;->readBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 388
    new-instance v7, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-direct {v7, v12, v15, v14, v5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-static {v7}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 391
    nop

    :goto_a5
    array-length v10, v13

    if-ge v11, v10, :cond_d3

    .line 392
    aget-object v10, v13, v11

    .line 393
    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ba

    .line 394
    invoke-static {v7}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$700(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v10

    aget-object v12, v13, v11

    invoke-interface {v10, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d0

    .line 399
    :cond_ba
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unsupported ISA when parsing PackageDexUsage: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "PackageDexUsage"

    invoke-static {v12, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :goto_d0
    add-int/lit8 v11, v11, 0x1

    goto :goto_a5

    .line 402
    :cond_d3
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_f0

    .line 403
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignore dexPath when parsing PackageDexUsage because of unsupported isas. dexPath="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "PackageDexUsage"

    invoke-static {v9, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    goto :goto_13f

    .line 407
    :cond_f0
    invoke-static {v8}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    goto :goto_13f

    .line 373
    :cond_f8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PackageDexUsage line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_10f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find dexUseInfo line"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Malformed PackageDexUsage file. Expected package line before dex line."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_11f
    const-string v7, "+"

    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_159

    .line 410
    if-lt v3, v11, :cond_142

    .line 418
    const-string v7, "+"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 419
    invoke-direct {v0, v2, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeReadLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;

    move-result-object v9

    .line 420
    invoke-static {v8}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$500(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    nop

    .line 350
    :goto_13f
    const/4 v7, 0x0

    goto/16 :goto_4e

    .line 411
    :cond_142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code path line when parsing PackageDexUseData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_159
    if-lt v3, v11, :cond_165

    .line 424
    nop

    .line 425
    new-instance v6, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>()V

    move-object v8, v6

    move-object v6, v9

    const/4 v7, 0x0

    goto :goto_181

    .line 429
    :cond_165
    const-string v6, ","

    invoke-virtual {v9, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 430
    array-length v7, v6

    if-ne v7, v11, :cond_186

    .line 433
    const/4 v7, 0x0

    aget-object v8, v6, v7

    .line 434
    new-instance v9, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v9}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>()V

    .line 435
    aget-object v6, v6, v12

    invoke-direct {v0, v6}, Lcom/android/server/pm/dex/PackageDexUsage;->readBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v9, v6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$802(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Z)Z

    move-object v6, v8

    move-object v8, v9

    .line 437
    :goto_181
    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4e

    .line 431
    :cond_186
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PackageDexUsage line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_19d
    iget-object v2, v0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v2

    .line 442
    :try_start_1a0
    iget-object v3, v0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 443
    iget-object v0, v0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 444
    monitor-exit v2

    .line 445
    return-void

    .line 444
    :catchall_1ac
    move-exception v0

    monitor-exit v2
    :try_end_1ae
    .catchall {:try_start_1a0 .. :try_end_1ae} :catchall_1ac

    throw v0

    .line 338
    :cond_1af
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_1c6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid version line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_1dd
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No version line found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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
    .registers 5

    .line 308
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage;->getFile()Landroid/util/AtomicFile;

    move-result-object p1

    .line 309
    nop

    .line 311
    const/4 v0, 0x0

    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_14} :catch_33
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_26
    .catchall {:try_start_6 .. :try_end_14} :catchall_24

    .line 312
    :try_start_14
    invoke-virtual {p0, v1}, Lcom/android/server/pm/dex/PackageDexUsage;->read(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_17} :catch_21
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_1e
    .catchall {:try_start_14 .. :try_end_17} :catchall_1b

    .line 318
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_37

    :catchall_1b
    move-exception p1

    move-object v0, v1

    goto :goto_2f

    .line 315
    :catch_1e
    move-exception p1

    move-object v0, v1

    goto :goto_27

    .line 313
    :catch_21
    move-exception p1

    move-object v0, v1

    goto :goto_34

    .line 318
    :catchall_24
    move-exception p1

    goto :goto_2f

    .line 315
    :catch_26
    move-exception p1

    .line 316
    :goto_27
    :try_start_27
    const-string v1, "PackageDexUsage"

    const-string v2, "Failed to parse package dex usage."

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    goto :goto_34

    .line 318
    :goto_2f
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 313
    :catch_33
    move-exception p1

    .line 318
    :goto_34
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 319
    :goto_37
    nop

    .line 320
    return-void
.end method

.method record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)Z
    .registers 12

    .line 130
    invoke-static {p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkISA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 133
    if-eqz p8, :cond_b5

    .line 137
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 138
    :try_start_b
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 139
    const/4 v2, 0x1

    if-nez v1, :cond_3c

    .line 141
    new-instance v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>()V

    .line 142
    if-eqz p6, :cond_21

    .line 146
    invoke-static {v1, p2, p5, p1, p7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$000(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_35

    .line 151
    :cond_21
    new-instance p6, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-direct {p6, p5, p3, p8, p4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    nop

    .line 155
    invoke-static {p6}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object p2

    .line 154
    invoke-direct {p0, p1, p7, p2}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeAddLoadingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    .line 157
    :goto_35
    iget-object p2, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    monitor-exit v0

    return v2

    .line 161
    :cond_3c
    if-eqz p6, :cond_44

    .line 164
    invoke-static {v1, p2, p5, p1, p7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$000(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 167
    :cond_44
    new-instance p6, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-direct {p6, p5, p3, p8, p4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 169
    nop

    .line 170
    invoke-static {p6}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object p4

    .line 169
    invoke-direct {p0, p1, p7, p4}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeAddLoadingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1

    .line 172
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 173
    if-nez p4, :cond_75

    .line 175
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    const/16 p4, 0x64

    if-ge p3, p4, :cond_73

    .line 176
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    monitor-exit v0

    return v2

    .line 179
    :cond_73
    monitor-exit v0

    return p1

    .line 182
    :cond_75
    invoke-static {p4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result p5

    if-ne p3, p5, :cond_87

    .line 197
    invoke-static {p4, p6}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$400(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z

    move-result p2

    if-nez p2, :cond_85

    if-eqz p1, :cond_84

    goto :goto_85

    :cond_84
    const/4 v2, 0x0

    :cond_85
    :goto_85
    monitor-exit v0

    return v2

    .line 191
    :cond_87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Trying to change ownerUserId for  dex path "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {p4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :catchall_b2
    move-exception p1

    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_b .. :try_end_b4} :catchall_b2

    throw p1

    .line 134
    :cond_b5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null classLoaderContext"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_bd
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "loaderIsa "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is unsupported"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    .line 626
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 627
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 628
    if-nez p1, :cond_10

    .line 629
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 631
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 632
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method removePackage(Ljava/lang/String;)Z
    .registers 4

    .line 580
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 581
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    monitor-exit v0

    return p1

    .line 582
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method removeUserPackage(Ljava/lang/String;I)Z
    .registers 9

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
    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 596
    monitor-exit v0

    return v2

    .line 598
    :cond_10
    nop

    .line 599
    nop

    .line 600
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 601
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3c

    .line 602
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 603
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v4

    if-ne v4, p2, :cond_3b

    .line 604
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 605
    move v2, v5

    .line 607
    :cond_3b
    goto :goto_1e

    .line 610
    :cond_3c
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_52

    .line 611
    invoke-virtual {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result p2

    if-nez p2, :cond_52

    .line 612
    iget-object p2, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    move v2, v5

    .line 615
    :cond_52
    monitor-exit v0

    return v2

    .line 616
    :catchall_54
    move-exception p1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw p1
.end method

.method syncData(Ljava/util/Map;Ljava/util/Map;)V
    .registers 10
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
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 513
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 514
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 515
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 516
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 517
    if-nez v4, :cond_32

    .line 519
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_c0

    .line 523
    :cond_32
    nop

    .line 524
    invoke-static {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 525
    :goto_3f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_63

    .line 526
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 527
    invoke-static {v6}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_62

    .line 529
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 531
    :cond_62
    goto :goto_3f

    .line 534
    :cond_63
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 535
    nop

    .line 536
    invoke-static {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$500(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 537
    :cond_76
    :goto_76
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_90

    .line 538
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_76

    .line 539
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_76

    .line 546
    :cond_90
    invoke-static {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$800(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 547
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ac

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 548
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6, v6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$000(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    .line 549
    goto :goto_9a

    :cond_ac
    goto :goto_c0

    .line 550
    :cond_ad
    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v3

    if-nez v3, :cond_c0

    .line 551
    invoke-static {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 554
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 557
    :cond_c0
    :goto_c0
    goto/16 :goto_d

    .line 558
    :cond_c2
    monitor-exit v0

    .line 559
    return-void

    .line 558
    :catchall_c4
    move-exception p1

    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_3 .. :try_end_c6} :catchall_c4

    throw p1
.end method

.method write(Ljava/io/Writer;)V
    .registers 12

    .line 264
    invoke-direct {p0}, Lcom/android/server/pm/dex/PackageDexUsage;->clonePackageUseInfoMap()Ljava/util/Map;

    move-result-object v0

    .line 266
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, p1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 269
    const-string p1, "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

    invoke-virtual {v1, p1}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 270
    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Lcom/android/internal/util/FastPrintWriter;->println(I)V

    .line 272
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 275
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 276
    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 280
    invoke-static {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$500(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "@"

    const-string v6, ","

    if-eqz v4, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 281
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 282
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 283
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 285
    goto :goto_41

    .line 288
    :cond_88
    invoke-static {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_94
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 289
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 290
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 292
    new-array v4, p1, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    .line 293
    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$600(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/pm/dex/PackageDexUsage;->writeBoolean(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 292
    invoke-static {v6, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 294
    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$700(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_106

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 295
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 296
    goto :goto_e7

    .line 297
    :cond_106
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->println()V

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 298
    invoke-virtual {v1, v4}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 301
    goto/16 :goto_94

    .line 302
    :cond_12c
    goto/16 :goto_1a

    .line 303
    :cond_12e
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
    .registers 4

    .line 226
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage;->getFile()Landroid/util/AtomicFile;

    move-result-object p1

    .line 227
    nop

    .line 230
    :try_start_5
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_1a

    .line 231
    :try_start_9
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 232
    invoke-virtual {p0, v1}, Lcom/android/server/pm/dex/PackageDexUsage;->write(Ljava/io/Writer;)V

    .line 233
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 234
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_17} :catch_18

    .line 240
    goto :goto_28

    .line 235
    :catch_18
    move-exception v1

    goto :goto_1c

    :catch_1a
    move-exception v1

    const/4 v0, 0x0

    .line 236
    :goto_1c
    if-eqz v0, :cond_21

    .line 237
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 239
    :cond_21
    const-string p1, "PackageDexUsage"

    const-string v0, "Failed to write usage for dex files"

    invoke-static {p1, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    :goto_28
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
