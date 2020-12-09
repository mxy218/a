.class final Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Landroid/content/pm/PackageParser$ProviderIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1349
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 1578
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ComponentResolver$1;)V
    .registers 2

    .line 1349
    invoke-direct {p0}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;
    .registers 1

    .line 1349
    iget-object p0, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    return-object p0
.end method


# virtual methods
.method addProvider(Landroid/content/pm/PackageParser$Provider;)V
    .registers 8

    .line 1396
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "PackageManager"

    if-eqz v0, :cond_2c

    .line 1397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already defined; ignoring"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    return-void

    .line 1401
    :cond_2c
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    iget-object v0, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1412
    const/4 v2, 0x0

    :goto_3c
    if-ge v2, v0, :cond_6a

    .line 1413
    iget-object v3, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 1418
    invoke-virtual {v3}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->debugCheck()Z

    move-result v4

    if-nez v4, :cond_64

    .line 1419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> For Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_64
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 1412
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 1423
    :cond_6a
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .registers 3

    .line 1349
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ProviderIntentInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1448
    iget-object p1, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 1449
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_a
    if-ltz v0, :cond_25

    .line 1450
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 1451
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    if-ne v3, v4, :cond_22

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    if-ne v2, v3, :cond_22

    .line 1453
    const/4 p1, 0x0

    return p1

    .line 1449
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1456
    :cond_25
    return v1
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 4

    .line 1349
    check-cast p3, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)V
    .registers 4

    .line 1551
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1552
    iget-object p2, p3, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1553
    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 1554
    iget-object p2, p3, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Provider;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 1555
    const-string p2, " filter "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1556
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1557
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 5

    .line 1565
    check-cast p3, Landroid/content/pm/PackageParser$Provider;

    .line 1566
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1567
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1568
    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 1569
    invoke-virtual {p3, p1}, Landroid/content/pm/PackageParser$Provider;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 1570
    const/4 p2, 0x1

    if-le p4, p2, :cond_28

    .line 1571
    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1572
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1573
    const-string p2, " filters)"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1575
    :cond_28
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1576
    return-void
.end method

.method protected bridge synthetic filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .registers 2

    .line 1349
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->filterToLabel(Landroid/content/pm/PackageParser$ProviderIntentInfo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected filterToLabel(Landroid/content/pm/PackageParser$ProviderIntentInfo;)Ljava/lang/Object;
    .registers 2

    .line 1561
    iget-object p1, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    return-object p1
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;I)Z
    .registers 3

    .line 1349
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ProviderIntentInfo;I)Z

    move-result p1

    return p1
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ProviderIntentInfo;I)Z
    .registers 6

    .line 1466
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$800()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 1467
    return v1

    .line 1469
    :cond_c
    iget-object p1, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    .line 1470
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    .line 1471
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 1472
    if-eqz p1, :cond_28

    .line 1476
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v2, v1

    if-nez v2, :cond_26

    .line 1477
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result p1

    if-eqz p1, :cond_26

    move v0, v1

    goto :goto_27

    :cond_26
    nop

    .line 1476
    :goto_27
    return v0

    .line 1480
    :cond_28
    return v0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .registers 3

    .line 1349
    check-cast p2, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)Z
    .registers 3

    .line 1486
    iget-object p2, p2, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .registers 2

    .line 1349
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->newArray(I)[Landroid/content/pm/PackageParser$ProviderIntentInfo;

    move-result-object p1

    return-object p1
.end method

.method protected newArray(I)[Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .registers 2

    .line 1461
    new-array p1, p1, [Landroid/content/pm/PackageParser$ProviderIntentInfo;

    return-object p1
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .registers 13

    .line 1492
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$800()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 1493
    return-object v1

    .line 1495
    :cond_c
    nop

    .line 1496
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$900()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v3, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    invoke-virtual {v0, v2, v3, p3}, Landroid/content/pm/PackageManagerInternal;->isEnabledAndMatches(Landroid/content/pm/ComponentInfo;II)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1497
    return-object v1

    .line 1499
    :cond_1e
    iget-object v0, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    .line 1500
    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 1501
    if-nez v2, :cond_29

    .line 1502
    return-object v1

    .line 1504
    :cond_29
    invoke-virtual {v2, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    .line 1505
    iget v4, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    const/high16 v5, 0x1000000

    and-int/2addr v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_38

    move v4, v5

    goto :goto_39

    :cond_38
    move v4, v6

    .line 1507
    :goto_39
    iget v7, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    const/high16 v8, 0x800000

    and-int/2addr v7, v8

    if-eqz v7, :cond_41

    goto :goto_42

    :cond_41
    move v5, v6

    .line 1509
    :goto_42
    if-eqz v4, :cond_4f

    .line 1510
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->isVisibleToInstantApp()Z

    move-result v4

    if-nez v4, :cond_4f

    iget-boolean v4, v3, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-nez v4, :cond_4f

    .line 1511
    return-object v1

    .line 1514
    :cond_4f
    if-nez v5, :cond_56

    iget-boolean v4, v3, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v4, :cond_56

    .line 1515
    return-object v1

    .line 1519
    :cond_56
    iget-boolean v4, v3, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v4, :cond_61

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isUpdateAvailable()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1520
    return-object v1

    .line 1522
    :cond_61
    iget v2, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    invoke-static {v0, v2, v3, p3}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object p3

    .line 1524
    if-nez p3, :cond_6a

    .line 1525
    return-object v1

    .line 1527
    :cond_6a
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1528
    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 1529
    iget p3, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_79

    .line 1530
    iput-object p1, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1532
    :cond_79
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->getPriority()I

    move-result p3

    iput p3, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1533
    iget-object p3, v0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget p3, p3, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput p3, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 1534
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 1535
    iget-boolean p2, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->hasDefault:Z

    iput-boolean p2, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1536
    iget p2, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->labelRes:I

    iput p2, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1537
    iget-object p2, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object p2, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1538
    iget p1, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->icon:I

    iput p1, v1, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1539
    iget-object p1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    iput-boolean p1, v1, Landroid/content/pm/ResolveInfo;->system:Z

    .line 1540
    return-object v1
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .registers 4

    .line 1349
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->newResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;II)Landroid/content/pm/ResolveInfo;

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

    .line 1360
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$800()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1361
    const/4 p1, 0x0

    return-object p1

    .line 1363
    :cond_c
    iput p3, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    .line 1364
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

    .line 1354
    if-eqz p3, :cond_5

    const/high16 v0, 0x10000

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iput v0, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    .line 1355
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
            "Landroid/content/pm/PackageParser$Provider;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1371
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$800()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 1372
    return-object v1

    .line 1374
    :cond_c
    if-nez p4, :cond_f

    .line 1375
    return-object v1

    .line 1377
    :cond_f
    iput p3, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    .line 1378
    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    const/4 v0, 0x0

    if-eqz p3, :cond_1a

    const/4 p3, 0x1

    move v4, p3

    goto :goto_1b

    :cond_1a
    move v4, v0

    .line 1379
    :goto_1b
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    .line 1380
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1383
    nop

    :goto_25
    if-ge v0, p3, :cond_47

    .line 1384
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    .line 1385
    if-eqz v1, :cond_44

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_44

    .line 1386
    nop

    .line 1387
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 1388
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1389
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 1392
    :cond_47
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    invoke-super/range {v1 .. v6}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method removeProvider(Landroid/content/pm/PackageParser$Provider;)V
    .registers 5

    .line 1426
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    iget-object v0, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1435
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    .line 1436
    iget-object v2, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 1441
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 1435
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1443
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

    .line 1545
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1546
    return-void
.end method
