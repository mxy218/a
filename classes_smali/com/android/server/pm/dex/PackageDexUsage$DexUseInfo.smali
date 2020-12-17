.class public Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
.super Ljava/lang/Object;
.source "PackageDexUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/PackageDexUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DexUseInfo"
.end annotation


# instance fields
.field private mClassLoaderContext:Ljava/lang/String;

.field private mIsUsedByOtherApps:Z

.field private final mLoaderIsas:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadingPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOwnerUserId:I


# direct methods
.method private constructor <init>(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)V
    .registers 4
    .param p1, "other"  # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iget-boolean v0, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    iput-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    .line 833
    iget v0, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    iput v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    .line 834
    iget-object v0, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 835
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    .line 836
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    .line 837
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p2, "x1"  # Lcom/android/server/pm/dex/PackageDexUsage$1;

    .line 805
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)V

    return-void
.end method

.method constructor <init>(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "isUsedByOtherApps"  # Z
    .param p2, "ownerUserId"  # I
    .param p3, "classLoaderContext"  # Ljava/lang/String;
    .param p4, "loaderIsa"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 820
    iput-boolean p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    .line 821
    iput p2, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    .line 822
    iput-object p3, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 823
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    .line 824
    if-eqz p4, :cond_17

    .line 825
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 827
    :cond_17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    .line 828
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 805
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 805
    iget v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p1, "x1"  # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 805
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->merge(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 805
    iget-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 805
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    return-object v0
.end method

.method private merge(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z
    .registers 10
    .param p1, "dexUseInfo"  # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 840
    iget-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    .line 841
    .local v0, "oldIsUsedByOtherApps":Z
    iget-boolean v1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_f

    iget-boolean v1, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    if-eqz v1, :cond_d

    goto :goto_f

    :cond_d
    move v1, v2

    goto :goto_10

    :cond_f
    :goto_f
    move v1, v3

    :goto_10
    iput-boolean v1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    .line 842
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    iget-object v4, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 843
    .local v1, "updateIsas":Z
    iget-object v4, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    iget-object v5, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v4

    .line 845
    .local v4, "updateLoadingPackages":Z
    iget-object v5, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 846
    .local v5, "oldClassLoaderContext":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    const-string v7, "=UnknownClassLoaderContext="

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 848
    iget-object v6, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    goto :goto_41

    .line 849
    :cond_33
    iget-object v6, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    .line 851
    const-string v6, "=VariableClassLoaderContext="

    iput-object v6, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 854
    :cond_41
    :goto_41
    if-nez v1, :cond_51

    iget-boolean v6, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    if-ne v0, v6, :cond_51

    if-nez v4, :cond_51

    iget-object v6, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 857
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    :cond_51
    move v2, v3

    .line 854
    :cond_52
    return v2
.end method


# virtual methods
.method public getClassLoaderContext()Ljava/lang/String;
    .registers 2

    .line 876
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    return-object v0
.end method

.method public getLoaderIsas()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    return-object v0
.end method

.method public getLoadingPackages()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 873
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    return-object v0
.end method

.method getOwnerUserId()I
    .registers 2

    .line 865
    iget v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    return v0
.end method

.method public isUnknownClassLoaderContext()Z
    .registers 3

    .line 881
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    const-string v1, "=UnknownClassLoaderContext="

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUsedByOtherApps()Z
    .registers 2

    .line 861
    iget-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    return v0
.end method

.method public isVariableClassLoaderContext()Z
    .registers 3

    .line 885
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    const-string v1, "=VariableClassLoaderContext="

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
