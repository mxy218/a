.class final Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InstantAppIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
        "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final mOrderResult:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1803
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 1817
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method protected filterResults(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;)V"
        }
    .end annotation

    .line 1856
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 1857
    return-void

    .line 1859
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1860
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_43

    .line 1861
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    iget-object v2, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 1862
    invoke-virtual {v2}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1863
    iget-object v4, p0, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 1864
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1865
    if-nez v4, :cond_27

    .line 1867
    goto :goto_40

    .line 1869
    :cond_27
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v4, v2, :cond_39

    .line 1871
    iget-object v2, p0, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    iget-object v2, p0, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_40

    .line 1874
    goto :goto_43

    .line 1879
    :cond_39
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1880
    add-int/lit8 v0, v0, -0x1

    .line 1881
    add-int/lit8 v1, v1, -0x1

    .line 1860
    :cond_40
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1883
    :cond_43
    :goto_43
    return-void
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .registers 3

    .line 1803
    check-cast p2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;)Z
    .registers 3

    .line 1828
    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .registers 2

    .line 1803
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->newArray(I)[Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    move-result-object p1

    return-object p1
.end method

.method protected newArray(I)[Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    .registers 2

    .line 1822
    new-array p1, p1, [Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    return-object p1
.end method

.method protected newResult(Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;II)Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    .registers 7

    .line 1834
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$800()Lcom/android/server/pm/UserManagerService;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_c

    .line 1835
    return-object p3

    .line 1837
    :cond_c
    iget-object p2, p1, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {p2}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 1838
    invoke-virtual {p1}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->getOrder()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1839
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 1840
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1842
    if-eqz v1, :cond_33

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_33

    .line 1843
    return-object p3

    .line 1845
    :cond_33
    iget-object p3, p1, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 1846
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_45

    .line 1848
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    :cond_45
    return-object p1
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .registers 4

    .line 1803
    check-cast p1, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->newResult(Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;II)Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    move-result-object p1

    return-object p1
.end method
