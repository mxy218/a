.class public Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
.super Ljava/lang/Object;
.source "PackageDexUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/PackageDexUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageUseInfo"
.end annotation


# instance fields
.field private final mCodePathsUsedByOtherApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDexUseInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUsedByOtherAppsBeforeUpgrade:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    .line 732
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    .line 733
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V
    .registers 9
    .param p1, "other"  # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    .line 738
    iget-object v0, p1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 739
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    .end local v1  # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    goto :goto_14

    .line 742
    :cond_37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    .line 743
    iget-object v0, p1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 744
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$1;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    .end local v1  # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    goto :goto_48

    .line 746
    :cond_6c
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p2, "x1"  # Lcom/android/server/pm/dex/PackageDexUsage$1;

    .line 710
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "x0"  # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Z
    .param p3, "x3"  # Ljava/lang/String;
    .param p4, "x4"  # Ljava/lang/String;

    .line 710
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mergeCodePathUsedByOtherApps(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 710
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 710
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 710
    iget-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mUsedByOtherAppsBeforeUpgrade:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p1, "x1"  # Z

    .line 710
    iput-boolean p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mUsedByOtherAppsBeforeUpgrade:Z

    return p1
.end method

.method private mergeCodePathUsedByOtherApps(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "codePath"  # Ljava/lang/String;
    .param p2, "isUsedByOtherApps"  # Z
    .param p3, "owningPackageName"  # Ljava/lang/String;
    .param p4, "loadingPackage"  # Ljava/lang/String;

    .line 750
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 752
    return v0

    .line 755
    :cond_4
    const/4 v1, 0x0

    .line 756
    .local v1, "newCodePath":Z
    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 757
    .local v2, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v2, :cond_1b

    .line 758
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v2, v3

    .line 759
    iget-object v3, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    const/4 v1, 0x1

    .line 762
    :cond_1b
    const/4 v3, 0x1

    if-eqz p4, :cond_2c

    .line 763
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 764
    invoke-interface {v2, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    move v4, v3

    goto :goto_2d

    :cond_2c
    move v4, v0

    .line 765
    .local v4, "newLoadingPackage":Z
    :goto_2d
    if-nez v1, :cond_31

    if-eqz v4, :cond_32

    :cond_31
    move v0, v3

    :cond_32
    return v0
.end method


# virtual methods
.method clearCodePathUsedByOtherApps()Z
    .registers 3

    .line 791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mUsedByOtherAppsBeforeUpgrade:Z

    .line 793
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 794
    const/4 v0, 0x0

    return v0

    .line 796
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 797
    return v0
.end method

.method public getDexUseInfoMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;",
            ">;"
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method public getLoadingPackages(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .param p1, "codePath"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public isAnyCodePathUsedByOtherApps()Z
    .registers 2

    .line 781
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUsedByOtherApps(Ljava/lang/String;)Z
    .registers 3
    .param p1, "codePath"  # Ljava/lang/String;

    .line 769
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mCodePathsUsedByOtherApps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
