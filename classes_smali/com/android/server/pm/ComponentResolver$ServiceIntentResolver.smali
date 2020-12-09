.class final Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Landroid/content/pm/PackageParser$ServiceIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1582
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 1799
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ComponentResolver$1;)V
    .registers 2

    .line 1582
    invoke-direct {p0}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;)Landroid/util/ArrayMap;
    .registers 1

    .line 1582
    iget-object p0, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    return-object p0
.end method


# virtual methods
.method addService(Landroid/content/pm/PackageParser$Service;)V
    .registers 7

    .line 1625
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    iget-object v0, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1634
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_40

    .line 1635
    iget-object v2, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 1640
    invoke-virtual {v2}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->debugCheck()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 1641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> For Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_3a
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 1634
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1645
    :cond_40
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .registers 3

    .line 1582
    check-cast p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ServiceIntentInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1669
    iget-object p1, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 1670
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_a
    if-ltz v0, :cond_25

    .line 1671
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1672
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-ne v3, v4, :cond_22

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-ne v2, v3, :cond_22

    .line 1674
    const/4 p1, 0x0

    return p1

    .line 1670
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1677
    :cond_25
    return v1
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 4

    .line 1582
    check-cast p3, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ServiceIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ServiceIntentInfo;)V
    .registers 4

    .line 1768
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1769
    iget-object p2, p3, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1770
    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 1771
    iget-object p2, p3, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Service;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 1772
    const-string p2, " filter "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1773
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1774
    iget-object p2, p3, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz p2, :cond_41

    .line 1775
    const-string p2, " permission "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p3, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_44

    .line 1777
    :cond_41
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1779
    :goto_44
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 5

    .line 1787
    check-cast p3, Landroid/content/pm/PackageParser$Service;

    .line 1788
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1789
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1790
    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 1791
    invoke-virtual {p3, p1}, Landroid/content/pm/PackageParser$Service;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 1792
    const/4 p2, 0x1

    if-le p4, p2, :cond_28

    .line 1793
    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " filters)"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1795
    :cond_28
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1796
    return-void
.end method

.method protected bridge synthetic filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .registers 2

    .line 1582
    check-cast p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->filterToLabel(Landroid/content/pm/PackageParser$ServiceIntentInfo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected filterToLabel(Landroid/content/pm/PackageParser$ServiceIntentInfo;)Ljava/lang/Object;
    .registers 2

    .line 1783
    iget-object p1, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    return-object p1
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;I)Z
    .registers 3

    .line 1582
    check-cast p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ServiceIntentInfo;I)Z

    move-result p1

    return p1
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ServiceIntentInfo;I)Z
    .registers 6

    .line 1687
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$800()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    .line 1688
    :cond_c
    iget-object p1, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    .line 1689
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    .line 1690
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 1691
    if-eqz p1, :cond_28

    .line 1695
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v2, v1

    if-nez v2, :cond_26

    .line 1696
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result p1

    if-eqz p1, :cond_26

    move v0, v1

    goto :goto_27

    :cond_26
    nop

    .line 1695
    :goto_27
    return v0

    .line 1699
    :cond_28
    return v0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .registers 3

    .line 1582
    check-cast p2, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ServiceIntentInfo;)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ServiceIntentInfo;)Z
    .registers 3

    .line 1705
    iget-object p2, p2, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .registers 2

    .line 1582
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->newArray(I)[Landroid/content/pm/PackageParser$ServiceIntentInfo;

    move-result-object p1

    return-object p1
.end method

.method protected newArray(I)[Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .registers 2

    .line 1682
    new-array p1, p1, [Landroid/content/pm/PackageParser$ServiceIntentInfo;

    return-object p1
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .registers 13

    .line 1711
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$800()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 1712
    :cond_c
    nop

    .line 1713
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$900()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v3, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    invoke-virtual {v0, v2, v3, p3}, Landroid/content/pm/PackageManagerInternal;->isEnabledAndMatches(Landroid/content/pm/ComponentInfo;II)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1714
    return-object v1

    .line 1716
    :cond_1e
    iget-object v0, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    .line 1717
    iget-object v2, v0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 1718
    if-nez v2, :cond_29

    .line 1719
    return-object v1

    .line 1721
    :cond_29
    invoke-virtual {v2, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    .line 1722
    iget v4, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    invoke-static {v0, v4, v3, p3}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object p3

    .line 1724
    if-nez p3, :cond_36

    .line 1725
    return-object v1

    .line 1727
    :cond_36
    iget v4, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    const/high16 v5, 0x1000000

    and-int/2addr v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_41

    move v4, v5

    goto :goto_42

    :cond_41
    move v4, v6

    .line 1729
    :goto_42
    iget v7, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    const/high16 v8, 0x800000

    and-int/2addr v7, v8

    if-eqz v7, :cond_4a

    goto :goto_4b

    :cond_4a
    move v5, v6

    .line 1731
    :goto_4b
    if-eqz v4, :cond_58

    .line 1732
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->isVisibleToInstantApp()Z

    move-result v4

    if-nez v4, :cond_58

    iget-boolean v4, v3, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-nez v4, :cond_58

    .line 1733
    return-object v1

    .line 1736
    :cond_58
    if-nez v5, :cond_5f

    iget-boolean v4, v3, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v4, :cond_5f

    .line 1737
    return-object v1

    .line 1741
    :cond_5f
    iget-boolean v3, v3, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v3, :cond_6a

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isUpdateAvailable()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1742
    return-object v1

    .line 1744
    :cond_6a
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1745
    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1746
    iget p3, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_79

    .line 1747
    iput-object p1, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1749
    :cond_79
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->getPriority()I

    move-result p3

    iput p3, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1750
    iget-object p3, v0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget p3, p3, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput p3, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 1751
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 1752
    iget-boolean p2, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->hasDefault:Z

    iput-boolean p2, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1753
    iget p2, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->labelRes:I

    iput p2, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1754
    iget-object p2, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object p2, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1755
    iget p1, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->icon:I

    iput p1, v1, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1756
    iget-object p1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    iput-boolean p1, v1, Landroid/content/pm/ResolveInfo;->system:Z

    .line 1757
    return-object v1
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .registers 4

    .line 1582
    check-cast p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->newResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1593
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$800()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 1594
    :cond_c
    iput p3, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    .line 1595
    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    if-eqz p3, :cond_15

    const/4 p3, 0x1

    goto :goto_16

    :cond_15
    const/4 p3, 0x0

    :goto_16
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1587
    if-eqz p3, :cond_5

    const/high16 v0, 0x10000

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iput v0, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    .line 1588
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Service;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1602
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$800()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 1603
    :cond_c
    if-nez p4, :cond_f

    .line 1604
    return-object v1

    .line 1606
    :cond_f
    iput p3, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    .line 1607
    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    const/4 v0, 0x0

    if-eqz p3, :cond_1a

    const/4 p3, 0x1

    move v4, p3

    goto :goto_1b

    :cond_1a
    move v4, v0

    .line 1608
    :goto_1b
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    .line 1609
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1612
    nop

    :goto_25
    if-ge v0, p3, :cond_47

    .line 1613
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    .line 1614
    if-eqz v1, :cond_44

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_44

    .line 1615
    nop

    .line 1616
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 1617
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1618
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1612
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 1621
    :cond_47
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    invoke-super/range {v1 .. v6}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method removeService(Landroid/content/pm/PackageParser$Service;)V
    .registers 5

    .line 1648
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    iget-object v0, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1656
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    .line 1657
    iget-object v2, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 1662
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 1656
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1664
    :cond_20
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 1762
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1763
    return-void
.end method
