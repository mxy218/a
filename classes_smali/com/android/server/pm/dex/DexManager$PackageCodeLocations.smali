.class Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
.super Ljava/lang/Object;
.source "DexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/DexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageCodeLocations"
.end annotation


# instance fields
.field private final mAppDataDirs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBaseCodePath:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mSplitCodePaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;I)V
    .registers 6

    .line 813
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 814
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mergeAppDataDirs(Ljava/lang/String;I)V

    .line 815
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mPackageName:Ljava/lang/String;

    .line 819
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mSplitCodePaths:Ljava/util/Set;

    .line 820
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mAppDataDirs:Ljava/util/Map;

    .line 821
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->updateCodeLocation(Ljava/lang/String;[Ljava/lang/String;)V

    .line 822
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;)Ljava/lang/String;
    .registers 1

    .line 805
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mPackageName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public mergeAppDataDirs(Ljava/lang/String;I)V
    .registers 5

    .line 835
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mAppDataDirs:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, p2, v1}, Lcom/android/server/pm/dex/DexManager;->access$300(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 836
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 837
    return-void
.end method

.method public searchDex(Ljava/lang/String;I)I
    .registers 4

    .line 842
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mAppDataDirs:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 843
    if-nez p2, :cond_13

    .line 844
    invoke-static {}, Lcom/android/server/pm/dex/DexManager;->access$400()I

    move-result p1

    return p1

    .line 847
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mBaseCodePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 848
    invoke-static {}, Lcom/android/server/pm/dex/DexManager;->access$500()I

    move-result p1

    return p1

    .line 850
    :cond_20
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mSplitCodePaths:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 851
    invoke-static {}, Lcom/android/server/pm/dex/DexManager;->access$600()I

    move-result p1

    return p1

    .line 853
    :cond_2d
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_31
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 854
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 855
    invoke-static {}, Lcom/android/server/pm/dex/DexManager;->access$700()I

    move-result p1

    return p1

    .line 857
    :cond_48
    goto :goto_31

    .line 859
    :cond_49
    invoke-static {}, Lcom/android/server/pm/dex/DexManager;->access$400()I

    move-result p1

    return p1
.end method

.method public updateCodeLocation(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    .line 825
    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mBaseCodePath:Ljava/lang/String;

    .line 826
    iget-object p1, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mSplitCodePaths:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 827
    if-eqz p2, :cond_17

    .line 828
    array-length p1, p2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p1, :cond_17

    aget-object v1, p2, v0

    .line 829
    iget-object v2, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mSplitCodePaths:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 832
    :cond_17
    return-void
.end method
