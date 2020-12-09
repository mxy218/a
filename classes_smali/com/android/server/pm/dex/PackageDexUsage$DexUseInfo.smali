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

    iget-object p1, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    .line 837
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$1;)V
    .registers 3

    .line 805
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)V

    return-void
.end method

.method constructor <init>(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 5
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
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    .line 824
    if-eqz p4, :cond_17

    .line 825
    iget-object p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 827
    :cond_17
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    .line 828
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;
    .registers 1

    .line 805
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I
    .registers 1

    .line 805
    iget p0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z
    .registers 2

    .line 805
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->merge(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z
    .registers 1

    .line 805
    iget-boolean p0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;
    .registers 1

    .line 805
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    return-object p0
.end method

.method private merge(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z
    .registers 9

    .line 840
    iget-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    .line 841
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    iget-boolean v3, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    if-eqz v3, :cond_b

    goto :goto_d

    :cond_b
    move v3, v1

    goto :goto_e

    :cond_d
    :goto_d
    move v3, v2

    :goto_e
    iput-boolean v3, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    .line 842
    iget-object v3, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    iget-object v4, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 843
    iget-object v4, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    iget-object v5, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v4

    .line 845
    iget-object v5, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 846
    const-string v6, "=UnknownClassLoaderContext="

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 848
    iget-object p1, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    goto :goto_3d

    .line 849
    :cond_2f
    iget-object v6, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    .line 851
    const-string p1, "=VariableClassLoaderContext="

    iput-object p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 854
    :cond_3d
    :goto_3d
    if-nez v3, :cond_4d

    iget-boolean p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    if-ne v0, p1, :cond_4d

    if-nez v4, :cond_4d

    iget-object p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 857
    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    :cond_4d
    move v1, v2

    .line 854
    :cond_4e
    return v1
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
