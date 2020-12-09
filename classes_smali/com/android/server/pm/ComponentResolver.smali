.class public Lcom/android/server/pm/ComponentResolver;
.super Ljava/lang/Object;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ComponentResolver$AuthoritiesIterGenerator;,
        Lcom/android/server/pm/ComponentResolver$SchemesIterGenerator;,
        Lcom/android/server/pm/ComponentResolver$CategoriesIterGenerator;,
        Lcom/android/server/pm/ComponentResolver$ActionIterGenerator;,
        Lcom/android/server/pm/ComponentResolver$IterGenerator;,
        Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;,
        Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;,
        Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;,
        Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_FILTERS:Z = false

.field private static final DEBUG_SHOW_INFO:Z = false

.field private static final PROTECTED_ACTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private static sUserManager:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private final mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mDeferProtectedFilters:Z

.field private final mLock:Ljava/lang/Object;

.field private mProtectedFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mProvidersByAuthority:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 73
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    .line 75
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    const-string v1, "android.intent.action.SEND"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    const-string v1, "android.intent.action.SENDTO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    const-string v1, "android.intent.action.VIEW"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/android/server/pm/-$$Lambda$ComponentResolver$PuHbZd5KEOMGjkH8xDOhOwfLtC0;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ComponentResolver$PuHbZd5KEOMGjkH8xDOhOwfLtC0;

    sput-object v0, Lcom/android/server/pm/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/PackageManagerInternal;Ljava/lang/Object;)V
    .registers 6

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/ComponentResolver$1;)V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    .line 156
    new-instance v0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-direct {v0, v1}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;-><init>(Lcom/android/server/pm/ComponentResolver$1;)V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    .line 160
    new-instance v0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-direct {v0, v1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/ComponentResolver$1;)V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    .line 164
    new-instance v0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-direct {v0, v1}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;-><init>(Lcom/android/server/pm/ComponentResolver$1;)V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    .line 168
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/ComponentResolver;->mDeferProtectedFilters:Z

    .line 189
    sput-object p2, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 190
    sput-object p1, Lcom/android/server/pm/ComponentResolver;->sUserManager:Lcom/android/server/pm/UserManagerService;

    .line 191
    iput-object p3, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    .line 192
    return-void
.end method

.method static synthetic access$800()Lcom/android/server/pm/UserManagerService;
    .registers 1

    .line 63
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->sUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method static synthetic access$900()Landroid/content/pm/PackageManagerInternal;
    .registers 1

    .line 63
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method private addActivitiesLocked(Landroid/content/pm/PackageParser$Package;Ljava/util/List;Z)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 534
    iget-object p3, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 535
    nop

    .line 536
    const/4 v0, 0x0

    :goto_8
    if-ge v0, p3, :cond_2c

    .line 537
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 538
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 539
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 540
    iget-object v2, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    const-string v3, "activity"

    invoke-static {v2, v1, v3, p2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$600(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;Ljava/util/List;)V

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 553
    :cond_2c
    return-void
.end method

.method private addProvidersLocked(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 557
    iget-object p2, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 558
    nop

    .line 559
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, p2, :cond_e7

    .line 560
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    .line 561
    iget-object v3, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 563
    iget-object v3, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->addProvider(Landroid/content/pm/PackageParser$Provider;)V

    .line 564
    iget-object v3, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v3, v3, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    iput-boolean v3, v2, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    .line 565
    iget-object v3, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v3, :cond_e3

    .line 566
    iget-object v3, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 567
    iget-object v5, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 568
    move-object v5, v2

    move v2, v0

    :goto_45
    array-length v7, v3

    if-ge v2, v7, :cond_e3

    .line 569
    const/4 v7, 0x1

    if-ne v2, v7, :cond_57

    iget-boolean v7, v5, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    if-eqz v7, :cond_57

    .line 577
    new-instance v7, Landroid/content/pm/PackageParser$Provider;

    invoke-direct {v7, v5}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    .line 578
    iput-boolean v0, v7, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    move-object v5, v7

    .line 580
    :cond_57
    iget-object v7, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v8, v3, v2

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_92

    .line 581
    iget-object v7, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v8, v3, v2

    invoke-virtual {v7, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    iget-object v7, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v7, :cond_75

    .line 583
    iget-object v7, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    aget-object v8, v3, v2

    iput-object v8, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_df

    .line 585
    :cond_75
    iget-object v7, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v3, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_df

    .line 593
    :cond_92
    iget-object v7, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v8, v3, v2

    .line 594
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$Provider;

    .line 596
    if-eqz v7, :cond_a9

    invoke-virtual {v7}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_a9

    .line 597
    invoke-virtual {v7}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    goto :goto_aa

    :cond_a9
    move-object v7, v6

    .line 599
    :goto_aa
    if-eqz v7, :cond_b1

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    goto :goto_b3

    :cond_b1
    const-string v7, "?"

    .line 600
    :goto_b3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping provider name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v3, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (in package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "): name already used by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PackageManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :goto_df
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_45

    .line 559
    :cond_e3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 618
    :cond_e7
    return-void
.end method

.method private addReceiversLocked(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 622
    iget-object p2, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 623
    nop

    .line 624
    const/4 v0, 0x0

    :goto_8
    if-ge v0, p2, :cond_2e

    .line 625
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 626
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 628
    iget-object v2, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    const/4 v3, 0x0

    const-string/jumbo v4, "receiver"

    invoke-static {v2, v1, v4, v3}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$600(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;Ljava/util/List;)V

    .line 624
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 641
    :cond_2e
    return-void
.end method

.method private addServicesLocked(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 645
    iget-object p2, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 646
    nop

    .line 647
    const/4 v0, 0x0

    :goto_8
    if-ge v0, p2, :cond_2a

    .line 648
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    .line 649
    iget-object v2, v1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 651
    iget-object v2, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->addService(Landroid/content/pm/PackageParser$Service;)V

    .line 647
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 664
    :cond_2a
    return-void
.end method

.method private adjustPriority(Ljava/util/List;Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 759
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v0

    if-gtz v0, :cond_7

    .line 760
    return-void

    .line 763
    :cond_7
    iget-object v0, p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 764
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 766
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_18

    :cond_17
    move v1, v3

    .line 768
    :goto_18
    if-nez v1, :cond_1e

    .line 776
    invoke-virtual {p2, v3}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 777
    return-void

    .line 780
    :cond_1e
    if-nez p1, :cond_4d

    .line 782
    invoke-static {p2}, Lcom/android/server/pm/ComponentResolver;->isProtectedAction(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 783
    iget-boolean p1, p0, Lcom/android/server/pm/ComponentResolver;->mDeferProtectedFilters:Z

    if-eqz p1, :cond_3b

    .line 791
    iget-object p1, p0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    if-nez p1, :cond_35

    .line 792
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 794
    :cond_35
    iget-object p1, p0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    return-void

    .line 807
    :cond_3b
    iget-object p1, p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 816
    return-void

    .line 824
    :cond_48
    invoke-virtual {p2, v3}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 825
    return-void

    .line 829
    :cond_4c
    return-void

    .line 833
    :cond_4d
    nop

    .line 834
    invoke-static {p1, v0}, Lcom/android/server/pm/ComponentResolver;->findMatchingActivity(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Landroid/content/pm/PackageParser$Activity;

    move-result-object p1

    .line 835
    if-nez p1, :cond_58

    .line 843
    invoke-virtual {p2, v3}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 844
    return-void

    .line 850
    :cond_58
    new-instance p3, Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 851
    iget-object p1, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    .line 854
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->actionsIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 855
    if-eqz p1, :cond_7c

    .line 856
    new-instance v0, Lcom/android/server/pm/ComponentResolver$ActionIterGenerator;

    invoke-direct {v0}, Lcom/android/server/pm/ComponentResolver$ActionIterGenerator;-><init>()V

    invoke-static {p3, v0, p1}, Lcom/android/server/pm/ComponentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/ComponentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 857
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_7c

    .line 865
    invoke-virtual {p2, v3}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 866
    return-void

    .line 871
    :cond_7c
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->categoriesIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 872
    if-eqz p1, :cond_94

    .line 873
    new-instance v0, Lcom/android/server/pm/ComponentResolver$CategoriesIterGenerator;

    invoke-direct {v0}, Lcom/android/server/pm/ComponentResolver$CategoriesIterGenerator;-><init>()V

    invoke-static {p3, v0, p1}, Lcom/android/server/pm/ComponentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/ComponentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 874
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_94

    .line 882
    invoke-virtual {p2, v3}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 883
    return-void

    .line 888
    :cond_94
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->schemesIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 889
    if-eqz p1, :cond_ac

    .line 890
    new-instance v0, Lcom/android/server/pm/ComponentResolver$SchemesIterGenerator;

    invoke-direct {v0}, Lcom/android/server/pm/ComponentResolver$SchemesIterGenerator;-><init>()V

    invoke-static {p3, v0, p1}, Lcom/android/server/pm/ComponentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/ComponentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 891
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_ac

    .line 899
    invoke-virtual {p2, v3}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 900
    return-void

    .line 905
    :cond_ac
    nop

    .line 906
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 907
    if-eqz p1, :cond_c5

    .line 908
    new-instance v0, Lcom/android/server/pm/ComponentResolver$AuthoritiesIterGenerator;

    invoke-direct {v0}, Lcom/android/server/pm/ComponentResolver$AuthoritiesIterGenerator;-><init>()V

    invoke-static {p3, v0, p1}, Lcom/android/server/pm/ComponentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/ComponentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 910
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_c5

    .line 918
    invoke-virtual {p2, v3}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 919
    return-void

    .line 924
    :cond_c5
    nop

    .line 925
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_cb
    if-ltz p1, :cond_de

    .line 926
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 925
    add-int/lit8 p1, p1, -0x1

    goto :goto_cb

    .line 928
    :cond_de
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result p1

    if-le p1, v3, :cond_e8

    .line 936
    invoke-virtual {p2, v3}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 937
    return-void

    .line 940
    :cond_e8
    return-void
.end method

.method private assertProvidersNotDefinedLocked(Landroid/content/pm/PackageParser$Package;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1041
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1043
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_8c

    .line 1044
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Provider;

    .line 1045
    iget-object v4, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v4, :cond_88

    .line 1046
    iget-object v3, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1047
    move v4, v1

    :goto_23
    array-length v5, v3

    if-ge v4, v5, :cond_88

    .line 1048
    iget-object v5, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 1049
    iget-object v5, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Provider;

    .line 1051
    if-eqz v5, :cond_4b

    invoke-virtual {v5}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_4b

    .line 1052
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_4d

    :cond_4b
    const-string v5, "?"

    .line 1054
    :goto_4d
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    goto :goto_85

    .line 1055
    :cond_56
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0xd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t install because provider name "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (in package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is already used by "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1047
    :cond_85
    :goto_85
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 1043
    :cond_88
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 1065
    :cond_8c
    return-void
.end method

.method private static findMatchingActivity(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Landroid/content/pm/PackageParser$Activity;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            ")",
            "Landroid/content/pm/PackageParser$Activity;"
        }
    .end annotation

    .line 724
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 725
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 726
    return-object v0

    .line 728
    :cond_1d
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 729
    return-object v0

    .line 731
    :cond_2a
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_4a

    .line 732
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 733
    return-object v0

    .line 735
    :cond_3d
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 736
    return-object v0

    .line 739
    :cond_4a
    goto :goto_4

    .line 740
    :cond_4b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/ComponentResolver$IterGenerator;Ljava/util/Iterator;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ">;",
            "Lcom/android/server/pm/ComponentResolver$IterGenerator<",
            "TT;>;",
            "Ljava/util/Iterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 674
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 676
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 677
    goto :goto_44

    .line 680
    :cond_d
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 683
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 684
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 685
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 686
    const/4 v3, 0x0

    .line 690
    invoke-virtual {p1, v2}, Lcom/android/server/pm/ComponentResolver$IterGenerator;->generate(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/util/Iterator;

    move-result-object v2

    .line 691
    :goto_26
    if-eqz v2, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 692
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 693
    if-eqz v4, :cond_3c

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 694
    const/4 v3, 0x1

    .line 695
    goto :goto_3d

    .line 697
    :cond_3c
    goto :goto_26

    .line 701
    :cond_3d
    :goto_3d
    if-nez v3, :cond_42

    .line 702
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 704
    :cond_42
    goto :goto_15

    .line 705
    :cond_43
    goto :goto_0

    .line 706
    :cond_44
    :goto_44
    return-void
.end method

.method private static isProtectedAction(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z
    .registers 3

    .line 709
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->actionsIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 710
    :goto_4
    if-eqz p0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 711
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 712
    sget-object v1, Lcom/android/server/pm/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 713
    const/4 p0, 0x1

    return p0

    .line 715
    :cond_1c
    goto :goto_4

    .line 716
    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$static$0(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 6

    .line 82
    iget v0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 83
    iget v1, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 85
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_d

    .line 86
    if-le v0, v1, :cond_b

    goto :goto_c

    :cond_b
    move v2, v3

    :goto_c
    return v2

    .line 88
    :cond_d
    iget v0, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 89
    iget v1, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 90
    if-eq v0, v1, :cond_18

    .line 91
    if-le v0, v1, :cond_16

    goto :goto_17

    :cond_16
    move v2, v3

    :goto_17
    return v2

    .line 93
    :cond_18
    iget-boolean v0, p0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v1, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v0, v1, :cond_25

    .line 94
    iget-boolean p0, p0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eqz p0, :cond_23

    goto :goto_24

    :cond_23
    move v2, v3

    :goto_24
    return v2

    .line 96
    :cond_25
    iget v0, p0, Landroid/content/pm/ResolveInfo;->match:I

    .line 97
    iget v1, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 99
    if-eq v0, v1, :cond_30

    .line 100
    if-le v0, v1, :cond_2e

    goto :goto_2f

    :cond_2e
    move v2, v3

    :goto_2f
    return v2

    .line 102
    :cond_30
    iget-boolean v0, p0, Landroid/content/pm/ResolveInfo;->system:Z

    iget-boolean v1, p1, Landroid/content/pm/ResolveInfo;->system:Z

    if-eq v0, v1, :cond_3d

    .line 103
    iget-boolean p0, p0, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz p0, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v3

    :goto_3c
    return v2

    .line 105
    :cond_3d
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_4e

    .line 106
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 108
    :cond_4e
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_5f

    .line 109
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 111
    :cond_5f
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_70

    .line 112
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 114
    :cond_70
    const/4 p0, 0x0

    return p0
.end method

.method private removeAllComponentsLocked(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 948
    iget-object p2, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 949
    nop

    .line 950
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, p2, :cond_1d

    .line 951
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    .line 952
    iget-object v3, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    const-string v4, "activity"

    invoke-static {v3, v2, v4}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$700(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 950
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 966
    :cond_1d
    iget-object p2, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 967
    nop

    .line 968
    move v1, v0

    :goto_25
    if-ge v1, p2, :cond_60

    .line 969
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    .line 970
    iget-object v3, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->removeProvider(Landroid/content/pm/PackageParser$Provider;)V

    .line 971
    iget-object v3, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v3, :cond_3b

    .line 975
    goto :goto_5d

    .line 977
    :cond_3b
    iget-object v3, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 978
    move v4, v0

    :goto_46
    array-length v5, v3

    if-ge v4, v5, :cond_5d

    .line 979
    iget-object v5, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_5a

    .line 980
    iget-object v5, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 968
    :cond_5d
    :goto_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1001
    :cond_60
    iget-object p2, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1002
    nop

    .line 1003
    move v1, v0

    :goto_68
    if-ge v1, p2, :cond_7d

    .line 1004
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    .line 1005
    iget-object v3, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    const-string/jumbo v4, "receiver"

    invoke-static {v3, v2, v4}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$700(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 1003
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 1019
    :cond_7d
    iget-object p2, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1020
    nop

    .line 1021
    nop

    :goto_85
    if-ge v0, p2, :cond_97

    .line 1022
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    .line 1023
    iget-object v2, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->removeService(Landroid/content/pm/PackageParser$Service;)V

    .line 1021
    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    .line 1036
    :cond_97
    return-void
.end method


# virtual methods
.method addAllComponents(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 7

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 373
    :try_start_8
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/ComponentResolver;->addActivitiesLocked(Landroid/content/pm/PackageParser$Package;Ljava/util/List;Z)V

    .line 374
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver;->addReceiversLocked(Landroid/content/pm/PackageParser$Package;Z)V

    .line 375
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver;->addProvidersLocked(Landroid/content/pm/PackageParser$Package;Z)V

    .line 376
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver;->addServicesLocked(Landroid/content/pm/PackageParser$Package;Z)V

    .line 377
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_43

    .line 378
    sget-object p1, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object p1

    .line 380
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_22
    if-ltz p2, :cond_42

    .line 381
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 382
    sget-object v2, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 383
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 385
    if-eqz v2, :cond_3b

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    goto :goto_3c

    :cond_3b
    const/4 v2, 0x0

    .line 386
    :goto_3c
    invoke-direct {p0, v2, v1, p1}, Lcom/android/server/pm/ComponentResolver;->adjustPriority(Ljava/util/List;Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;)V

    .line 380
    add-int/lit8 p2, p2, -0x1

    goto :goto_22

    .line 388
    :cond_42
    return-void

    .line 377
    :catchall_43
    move-exception p1

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p1
.end method

.method assertProvidersNotDefined(Landroid/content/pm/PackageParser$Package;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/ComponentResolver;->assertProvidersNotDefinedLocked(Landroid/content/pm/PackageParser$Package;)V

    .line 366
    monitor-exit v0

    .line 367
    return-void

    .line 366
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method dumpActivityResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 12

    .line 443
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "\nActivity Resolver Table:"

    move-object v2, v1

    goto :goto_f

    .line 444
    :cond_c
    const-string v1, "Activity Resolver Table:"

    move-object v2, v1

    :goto_f
    nop

    .line 445
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    .line 443
    const-string v3, "  "

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 446
    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    .line 448
    :cond_23
    return-void
.end method

.method dumpContentProviders(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 11

    .line 475
    nop

    .line 476
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v0}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->access$400(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "    "

    if-eqz v3, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Provider;

    .line 477
    if-eqz p3, :cond_2d

    iget-object v6, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 478
    goto :goto_11

    .line 480
    :cond_2d
    if-nez v2, :cond_3e

    .line 481
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 482
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 484
    :cond_38
    const-string v2, "Registered ContentProviders:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    move v2, v4

    .line 487
    :cond_3e
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageParser$Provider;->printComponentShortName(Ljava/io/PrintWriter;)V

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Provider;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    goto :goto_11

    .line 490
    :cond_56
    nop

    .line 492
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 493
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Provider;

    .line 494
    if-eqz p3, :cond_80

    iget-object v6, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_80

    .line 495
    goto :goto_61

    .line 497
    :cond_80
    if-nez v1, :cond_91

    .line 498
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 499
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 501
    :cond_8b
    const-string v1, "ContentProvider Authorities:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    move v1, v4

    .line 504
    :cond_91
    const-string v6, "  ["

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "]:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Provider;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    iget-object v2, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_c8

    iget-object v2, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_c8

    .line 507
    iget-object v2, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v2

    .line 508
    const-string v3, "      applicationInfo="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    :cond_c8
    goto :goto_61

    .line 511
    :cond_c9
    return-void
.end method

.method dumpProviderResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 12

    .line 451
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "\nProvider Resolver Table:"

    move-object v2, v1

    goto :goto_f

    .line 452
    :cond_c
    const-string v1, "Provider Resolver Table:"

    move-object v2, v1

    :goto_f
    nop

    .line 453
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    .line 451
    const-string v3, "  "

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 454
    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    .line 456
    :cond_23
    return-void
.end method

.method dumpReceiverResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 12

    .line 459
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "\nReceiver Resolver Table:"

    move-object v2, v1

    goto :goto_f

    .line 460
    :cond_c
    const-string v1, "Receiver Resolver Table:"

    move-object v2, v1

    :goto_f
    nop

    .line 461
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    .line 459
    const-string v3, "  "

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 462
    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    .line 464
    :cond_23
    return-void
.end method

.method dumpServicePermissions(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 6

    .line 514
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 515
    :cond_9
    const-string p2, "Service permissions:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    iget-object p2, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object p2

    .line 518
    :goto_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_41

    .line 519
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 520
    iget-object p3, p3, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object p3, p3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 521
    iget-object v0, p3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 522
    if-eqz v0, :cond_40

    .line 523
    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 525
    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    :cond_40
    goto :goto_14

    .line 529
    :cond_41
    return-void
.end method

.method dumpServiceResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 12

    .line 467
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "\nService Resolver Table:"

    move-object v2, v1

    goto :goto_f

    .line 468
    :cond_c
    const-string v1, "Service Resolver Table:"

    move-object v2, v1

    :goto_f
    nop

    .line 469
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    .line 467
    const-string v3, "  "

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 470
    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    .line 472
    :cond_23
    return-void
.end method

.method fixProtectedFilterPriorities()V
    .registers 7

    .line 402
    iget-boolean v0, p0, Lcom/android/server/pm/ComponentResolver;->mDeferProtectedFilters:Z

    if-nez v0, :cond_5

    .line 403
    return-void

    .line 405
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/ComponentResolver;->mDeferProtectedFilters:Z

    .line 407
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    if-eqz v1, :cond_40

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_40

    .line 410
    :cond_13
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 411
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 413
    sget-object v2, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_24
    if-ltz v4, :cond_3f

    .line 420
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 421
    iget-object v5, v3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 430
    goto :goto_3c

    .line 438
    :cond_39
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 419
    :goto_3c
    add-int/lit8 v4, v4, -0x1

    goto :goto_24

    .line 440
    :cond_3f
    return-void

    .line 408
    :cond_40
    :goto_40
    return-void
.end method

.method getActivity(Landroid/content/ComponentName;)Landroid/content/pm/PackageParser$Activity;
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$300(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageParser$Activity;

    monitor-exit v0

    return-object p1

    .line 198
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method getProvider(Landroid/content/ComponentName;)Landroid/content/pm/PackageParser$Provider;
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->access$400(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageParser$Provider;

    monitor-exit v0

    return-object p1

    .line 205
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method getReceiver(Landroid/content/ComponentName;)Landroid/content/pm/PackageParser$Activity;
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$300(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageParser$Activity;

    monitor-exit v0

    return-object p1

    .line 212
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method getService(Landroid/content/ComponentName;)Landroid/content/pm/PackageParser$Service;
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->access$500(Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageParser$Service;

    monitor-exit v0

    return-object p1

    .line 219
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method isActivityDefined(Landroid/content/ComponentName;)Z
    .registers 4

    .line 357
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$300(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    monitor-exit v0

    return p1

    .line 359
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method queryActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 7
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

    .line 223
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 225
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method queryActivities(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 233
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method queryProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .registers 7

    .line 289
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageParser$Provider;

    .line 291
    const/4 v1, 0x0

    if-nez p1, :cond_10

    .line 292
    monitor-exit v0

    return-object v1

    .line 294
    :cond_10
    iget-object v2, p1, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 295
    if-nez v2, :cond_1a

    .line 296
    monitor-exit v0

    return-object v1

    .line 298
    :cond_1a
    invoke-virtual {v2, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    invoke-static {p1, p2, v1, p3}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 299
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p1
.end method

.method queryProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 7
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

    .line 237
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 239
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method queryProviders(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
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

    .line 244
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 246
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method queryProviders(Ljava/lang/String;Ljava/lang/String;III)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 251
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 252
    return-object v1

    .line 254
    :cond_a
    nop

    .line 255
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_e
    iget-object v2, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v2}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->access$400(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1a
    if-ltz v2, :cond_7b

    .line 257
    iget-object v3, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v3}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->access$400(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Provider;

    .line 258
    iget-object v4, v3, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 259
    if-nez v4, :cond_31

    .line 260
    goto :goto_78

    .line 262
    :cond_31
    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v5, :cond_38

    .line 263
    goto :goto_78

    .line 265
    :cond_38
    if-eqz p1, :cond_51

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 266
    invoke-static {v5, p3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    if-nez v5, :cond_51

    .line 267
    goto :goto_78

    .line 270
    :cond_51
    if-eqz p2, :cond_60

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_78

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    .line 271
    invoke-virtual {v5, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 272
    goto :goto_78

    .line 274
    :cond_60
    nop

    .line 275
    invoke-virtual {v4, p5}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    .line 274
    invoke-static {v3, p4, v4, p5}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 276
    if-nez v3, :cond_6c

    .line 277
    goto :goto_78

    .line 279
    :cond_6c
    if-nez v1, :cond_75

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 282
    :cond_75
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_78
    :goto_78
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 284
    :cond_7b
    monitor-exit v0

    .line 285
    return-object v1

    .line 284
    :catchall_7d
    move-exception p1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_e .. :try_end_7f} :catchall_7d

    throw p1
.end method

.method queryReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 7
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

    .line 330
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 332
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method queryReceivers(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 339
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method queryServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 7
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

    .line 343
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 345
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method queryServices(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
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

    .line 350
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 352
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method querySyncProviders(Ljava/util/List;Ljava/util/List;ZI)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;ZI)V"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_4d

    .line 306
    iget-object v2, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    .line 307
    iget-object v3, v2, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 308
    if-nez v3, :cond_1e

    .line 309
    goto :goto_4a

    .line 311
    :cond_1e
    iget-boolean v4, v2, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    if-nez v4, :cond_23

    .line 312
    goto :goto_4a

    .line 314
    :cond_23
    if-eqz p3, :cond_30

    iget-object v4, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_30

    .line 316
    goto :goto_4a

    .line 318
    :cond_30
    const/4 v4, 0x0

    .line 319
    invoke-virtual {v3, p4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    invoke-static {v2, v4, v3, p4}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 320
    if-nez v2, :cond_3c

    .line 321
    goto :goto_4a

    .line 323
    :cond_3c
    iget-object v3, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :goto_4a
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 326
    :cond_4d
    monitor-exit v0

    .line 327
    return-void

    .line 326
    :catchall_4f
    move-exception p1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method removeAllComponents(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 4

    .line 392
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver;->removeAllComponentsLocked(Landroid/content/pm/PackageParser$Package;Z)V

    .line 394
    monitor-exit v0

    .line 395
    return-void

    .line 394
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method
