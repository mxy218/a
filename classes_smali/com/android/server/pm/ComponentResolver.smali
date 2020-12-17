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
    .param p1, "userManager"  # Lcom/android/server/pm/UserManagerService;
    .param p2, "packageManagerInternal"  # Landroid/content/pm/PackageManagerInternal;
    .param p3, "lock"  # Ljava/lang/Object;

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
    .registers 11
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p3, "chatty"  # Z
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
    .local p2, "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 535
    .local v0, "activitiesSize":I
    const/4 v1, 0x0

    .line 536
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_49

    .line 537
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 538
    .local v3, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 539
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 540
    iget-object v4, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    const-string v5, "activity"

    invoke-static {v4, v3, v5, p2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$600(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;Ljava/util/List;)V

    .line 541
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v4, :cond_46

    if-eqz p3, :cond_46

    .line 542
    if-nez v1, :cond_3a

    .line 543
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    goto :goto_3f

    .line 545
    :cond_3a
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 547
    :goto_3f
    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .end local v3  # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 550
    .end local v2  # "i":I
    :cond_49
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v2, :cond_6b

    if-eqz p3, :cond_6b

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Activities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_5e

    const-string v3, "<NONE>"

    goto :goto_5f

    :cond_5e
    move-object v3, v1

    :goto_5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_6b
    return-void
.end method

.method private addProvidersLocked(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 19
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 557
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 558
    .local v2, "providersSize":I
    const/4 v3, 0x0

    .line 559
    .local v3, "r":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    const-string v5, "PackageManager"

    if-ge v4, v2, :cond_13b

    .line 560
    iget-object v6, v1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Provider;

    .line 561
    .local v6, "p":Landroid/content/pm/PackageParser$Provider;
    iget-object v7, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v8, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 563
    iget-object v7, v0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->addProvider(Landroid/content/pm/PackageParser$Provider;)V

    .line 564
    iget-object v7, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v7, v7, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    iput-boolean v7, v6, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    .line 565
    iget-object v7, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v7, :cond_11a

    .line 566
    iget-object v7, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 567
    .local v7, "names":[Ljava/lang/String;
    iget-object v9, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 568
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_49
    array-length v11, v7

    if-ge v9, v11, :cond_11a

    .line 569
    const/4 v11, 0x1

    if-ne v9, v11, :cond_5c

    iget-boolean v11, v6, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    if-eqz v11, :cond_5c

    .line 577
    new-instance v11, Landroid/content/pm/PackageParser$Provider;

    invoke-direct {v11, v6}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    move-object v6, v11

    .line 578
    const/4 v11, 0x0

    iput-boolean v11, v6, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    .line 580
    :cond_5c
    iget-object v11, v0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v12, v7, v9

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_cb

    .line 581
    iget-object v11, v0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v12, v7, v9

    invoke-virtual {v11, v12, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    iget-object v11, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v11, :cond_7a

    .line 583
    iget-object v11, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    aget-object v12, v7, v9

    iput-object v12, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_96

    .line 585
    :cond_7a
    iget-object v11, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v7, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 587
    :goto_96
    sget-boolean v11, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v11, :cond_116

    if-eqz p2, :cond_116

    .line 588
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Registered content provider: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v7, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", className = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", isSyncable = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v12, v12, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_116

    .line 593
    :cond_cb
    iget-object v11, v0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v12, v7, v9

    .line 594
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Provider;

    .line 596
    .local v11, "other":Landroid/content/pm/PackageParser$Provider;
    if-eqz v11, :cond_e2

    invoke-virtual {v11}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_e2

    .line 597
    invoke-virtual {v11}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    goto :goto_e3

    :cond_e2
    move-object v12, v10

    .line 599
    .local v12, "component":Landroid/content/ComponentName;
    :goto_e3
    if-eqz v12, :cond_ea

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    goto :goto_ec

    :cond_ea
    const-string v13, "?"

    .line 600
    .local v13, "packageName":Ljava/lang/String;
    :goto_ec
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping provider name "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v7, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " (in package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "): name already used by "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .end local v11  # "other":Landroid/content/pm/PackageParser$Provider;
    .end local v12  # "component":Landroid/content/ComponentName;
    .end local v13  # "packageName":Ljava/lang/String;
    :cond_116
    :goto_116
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_49

    .line 606
    .end local v7  # "names":[Ljava/lang/String;
    .end local v9  # "j":I
    :cond_11a
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v5, :cond_137

    if-eqz p2, :cond_137

    .line 607
    if-nez v3, :cond_12b

    .line 608
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v5

    goto :goto_130

    .line 610
    :cond_12b
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 612
    :goto_130
    iget-object v5, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .end local v6  # "p":Landroid/content/pm/PackageParser$Provider;
    :cond_137
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    .line 615
    .end local v4  # "i":I
    :cond_13b
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v4, :cond_15b

    if-eqz p2, :cond_15b

    .line 616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Providers: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_150

    const-string v6, "<NONE>"

    goto :goto_151

    :cond_150
    move-object v6, v3

    :goto_151
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_15b
    return-void
.end method

.method private addReceiversLocked(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 10
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 622
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 623
    .local v0, "receiversSize":I
    const/4 v1, 0x0

    .line 624
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_4b

    .line 625
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 626
    .local v3, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 628
    iget-object v4, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    const/4 v5, 0x0

    const-string/jumbo v6, "receiver"

    invoke-static {v4, v3, v6, v5}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$600(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;Ljava/util/List;)V

    .line 629
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v4, :cond_48

    if-eqz p2, :cond_48

    .line 630
    if-nez v1, :cond_3c

    .line 631
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    goto :goto_41

    .line 633
    :cond_3c
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 635
    :goto_41
    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .end local v3  # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 638
    .end local v2  # "i":I
    :cond_4b
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v2, :cond_6d

    if-eqz p2, :cond_6d

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Receivers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_60

    const-string v3, "<NONE>"

    goto :goto_61

    :cond_60
    move-object v3, v1

    :goto_61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_6d
    return-void
.end method

.method private addServicesLocked(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 10
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 645
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 646
    .local v0, "servicesSize":I
    const/4 v1, 0x0

    .line 647
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_47

    .line 648
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Service;

    .line 649
    .local v3, "s":Landroid/content/pm/PackageParser$Service;
    iget-object v4, v3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 651
    iget-object v4, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->addService(Landroid/content/pm/PackageParser$Service;)V

    .line 652
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v4, :cond_44

    if-eqz p2, :cond_44

    .line 653
    if-nez v1, :cond_38

    .line 654
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    goto :goto_3d

    .line 656
    :cond_38
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 658
    :goto_3d
    iget-object v4, v3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .end local v3  # "s":Landroid/content/pm/PackageParser$Service;
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 661
    .end local v2  # "i":I
    :cond_47
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v2, :cond_69

    if-eqz p2, :cond_69

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Services: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_5c

    const-string v3, "<NONE>"

    goto :goto_5d

    :cond_5c
    move-object v3, v1

    :goto_5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_69
    return-void
.end method

.method private adjustPriority(Ljava/util/List;Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;)V
    .registers 21
    .param p2, "intent"  # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p3, "setupWizardPackage"  # Ljava/lang/String;
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
    .local p1, "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v3

    if-gtz v3, :cond_d

    .line 760
    return-void

    .line 763
    :cond_d
    iget-object v3, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 764
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 766
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v5, v5, 0x8

    const/4 v7, 0x0

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    goto :goto_1d

    :cond_1c
    move v5, v7

    .line 768
    .local v5, "privilegedApp":Z
    :goto_1d
    if-nez v5, :cond_23

    .line 776
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 777
    return-void

    .line 780
    :cond_23
    if-nez v1, :cond_56

    .line 782
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/ComponentResolver;->isProtectedAction(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 783
    iget-boolean v6, v0, Lcom/android/server/pm/ComponentResolver;->mDeferProtectedFilters:Z

    if-eqz v6, :cond_40

    .line 791
    iget-object v6, v0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    if-nez v6, :cond_3a

    .line 792
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 794
    :cond_3a
    iget-object v6, v0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    return-void

    .line 807
    :cond_40
    iget-object v6, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v8, p3

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 816
    return-void

    .line 824
    :cond_4f
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 825
    return-void

    .line 829
    :cond_53
    move-object/from16 v8, p3

    return-void

    .line 833
    :cond_56
    move-object/from16 v8, p3

    .line 834
    invoke-static {v1, v3}, Lcom/android/server/pm/ComponentResolver;->findMatchingActivity(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v9

    .line 835
    .local v9, "foundActivity":Landroid/content/pm/PackageParser$Activity;
    if-nez v9, :cond_62

    .line 843
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 844
    return-void

    .line 850
    :cond_62
    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, v9, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 851
    .local v10, "intentListCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    iget-object v11, v0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {v11, v2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v11

    .line 854
    .local v11, "foundFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->actionsIterator()Ljava/util/Iterator;

    move-result-object v12

    .line 855
    .local v12, "actionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v12, :cond_87

    .line 856
    new-instance v13, Lcom/android/server/pm/ComponentResolver$ActionIterGenerator;

    invoke-direct {v13}, Lcom/android/server/pm/ComponentResolver$ActionIterGenerator;-><init>()V

    invoke-static {v10, v13, v12}, Lcom/android/server/pm/ComponentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/ComponentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 857
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_87

    .line 865
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 866
    return-void

    .line 871
    :cond_87
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->categoriesIterator()Ljava/util/Iterator;

    move-result-object v13

    .line 872
    .local v13, "categoriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v13, :cond_9f

    .line 873
    new-instance v14, Lcom/android/server/pm/ComponentResolver$CategoriesIterGenerator;

    invoke-direct {v14}, Lcom/android/server/pm/ComponentResolver$CategoriesIterGenerator;-><init>()V

    invoke-static {v10, v14, v13}, Lcom/android/server/pm/ComponentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/ComponentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 874
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_9f

    .line 882
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 883
    return-void

    .line 888
    :cond_9f
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->schemesIterator()Ljava/util/Iterator;

    move-result-object v14

    .line 889
    .local v14, "schemesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v14, :cond_b7

    .line 890
    new-instance v15, Lcom/android/server/pm/ComponentResolver$SchemesIterGenerator;

    invoke-direct {v15}, Lcom/android/server/pm/ComponentResolver$SchemesIterGenerator;-><init>()V

    invoke-static {v10, v15, v14}, Lcom/android/server/pm/ComponentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/ComponentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 891
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_b7

    .line 899
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 900
    return-void

    .line 905
    :cond_b7
    nop

    .line 906
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v15

    .line 907
    .local v15, "authoritiesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v15, :cond_d0

    .line 908
    new-instance v6, Lcom/android/server/pm/ComponentResolver$AuthoritiesIterGenerator;

    invoke-direct {v6}, Lcom/android/server/pm/ComponentResolver$AuthoritiesIterGenerator;-><init>()V

    invoke-static {v10, v6, v15}, Lcom/android/server/pm/ComponentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/ComponentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 910
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_d0

    .line 918
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 919
    return-void

    .line 924
    :cond_d0
    const/4 v6, 0x0

    .line 925
    .local v6, "cappedPriority":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_d9
    if-ltz v7, :cond_ee

    .line 926
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 925
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    goto :goto_d9

    .line 928
    .end local v7  # "i":I
    :cond_ee
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v0

    if-le v0, v6, :cond_f8

    .line 936
    invoke-virtual {v2, v6}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 937
    return-void

    .line 940
    :cond_f8
    return-void
.end method

.method private assertProvidersNotDefinedLocked(Landroid/content/pm/PackageParser$Package;)V
    .registers 13
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
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
    .local v0, "providersSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_8b

    .line 1044
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    .line 1045
    .local v2, "p":Landroid/content/pm/PackageParser$Provider;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v3, :cond_87

    .line 1046
    iget-object v3, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1047
    .local v3, "names":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_22
    array-length v5, v3

    if-ge v4, v5, :cond_87

    .line 1048
    iget-object v5, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 1049
    iget-object v5, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Provider;

    .line 1051
    .local v5, "other":Landroid/content/pm/PackageParser$Provider;
    if-eqz v5, :cond_4a

    invoke-virtual {v5}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_4a

    .line 1052
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_4c

    :cond_4a
    const-string v6, "?"

    .line 1054
    .local v6, "otherPackageName":Ljava/lang/String;
    :goto_4c
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    goto :goto_84

    .line 1055
    :cond_55
    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    const/16 v8, -0xd

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t install because provider name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v3, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (in package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") is already used by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 1047
    .end local v5  # "other":Landroid/content/pm/PackageParser$Provider;
    .end local v6  # "otherPackageName":Ljava/lang/String;
    :cond_84
    :goto_84
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 1043
    .end local v2  # "p":Landroid/content/pm/PackageParser$Provider;
    .end local v3  # "names":[Ljava/lang/String;
    .end local v4  # "j":I
    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    .line 1065
    :cond_8b
    return-void
.end method

.method private static findMatchingActivity(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Landroid/content/pm/PackageParser$Activity;
    .registers 6
    .param p1, "activityInfo"  # Landroid/content/pm/ActivityInfo;
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
    .local p0, "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 725
    .local v1, "sysActivity":Landroid/content/pm/PackageParser$Activity;
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 726
    return-object v1

    .line 728
    :cond_1d
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 729
    return-object v1

    .line 731
    :cond_2a
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v2, :cond_4a

    .line 732
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 733
    return-object v1

    .line 735
    :cond_3d
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 736
    return-object v1

    .line 739
    .end local v1  # "sysActivity":Landroid/content/pm/PackageParser$Activity;
    :cond_4a
    goto :goto_4

    .line 740
    :cond_4b
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/ComponentResolver$IterGenerator;Ljava/util/Iterator;)V
    .registers 10
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
    .local p0, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .local p1, "generator":Lcom/android/server/pm/ComponentResolver$IterGenerator;, "Lcom/android/server/pm/ComponentResolver$IterGenerator<TT;>;"
    .local p2, "searchIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
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
    .local v0, "searchAction":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 684
    .local v1, "intentIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 685
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 686
    .local v2, "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v3, 0x0

    .line 690
    .local v3, "selectionFound":Z
    invoke-virtual {p1, v2}, Lcom/android/server/pm/ComponentResolver$IterGenerator;->generate(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/util/Iterator;

    move-result-object v4

    .line 691
    .local v4, "intentSelectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_26
    if-eqz v4, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 692
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 693
    .local v5, "intentSelection":Ljava/lang/Object;, "TT;"
    if-eqz v5, :cond_3c

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 694
    const/4 v3, 0x1

    .line 695
    goto :goto_3d

    .line 697
    .end local v5  # "intentSelection":Ljava/lang/Object;, "TT;"
    :cond_3c
    goto :goto_26

    .line 701
    :cond_3d
    :goto_3d
    if-nez v3, :cond_42

    .line 702
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 704
    .end local v2  # "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v3  # "selectionFound":Z
    .end local v4  # "intentSelectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_42
    goto :goto_15

    .line 705
    .end local v0  # "searchAction":Ljava/lang/Object;, "TT;"
    .end local v1  # "intentIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_43
    goto :goto_0

    .line 706
    :cond_44
    :goto_44
    return-void
.end method

.method private static isProtectedAction(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z
    .registers 4
    .param p0, "filter"  # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 709
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 710
    .local v0, "actionsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 711
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 712
    .local v1, "filterAction":Ljava/lang/String;
    sget-object v2, Lcom/android/server/pm/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 713
    const/4 v2, 0x1

    return v2

    .line 715
    .end local v1  # "filterAction":Ljava/lang/String;
    :cond_1c
    goto :goto_4

    .line 716
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$static$0(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 8
    .param p0, "r1"  # Landroid/content/pm/ResolveInfo;
    .param p1, "r2"  # Landroid/content/pm/ResolveInfo;

    .line 82
    iget v0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 83
    .local v0, "v1":I
    iget v1, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 85
    .local v1, "v2":I
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
    iget-boolean v4, p0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v5, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v4, v5, :cond_25

    .line 94
    iget-boolean v4, p0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eqz v4, :cond_23

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
    iget-boolean v4, p0, Landroid/content/pm/ResolveInfo;->system:Z

    iget-boolean v5, p1, Landroid/content/pm/ResolveInfo;->system:Z

    if-eq v4, v5, :cond_3d

    .line 103
    iget-boolean v4, p0, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v4, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v3

    :goto_3c
    return v2

    .line 105
    :cond_3d
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_4e

    .line 106
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 108
    :cond_4e
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_5f

    .line 109
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 111
    :cond_5f
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_70

    .line 112
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 114
    :cond_70
    const/4 v2, 0x0

    return v2
.end method

.method private removeAllComponentsLocked(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 15
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 948
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 949
    .local v0, "componentSize":I
    const/4 v1, 0x0

    .line 950
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    const/16 v3, 0x100

    const/16 v4, 0x20

    if-ge v2, v0, :cond_39

    .line 951
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    .line 952
    .local v5, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v6, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    const-string v7, "activity"

    invoke-static {v6, v5, v7}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$700(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 953
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v6, :cond_36

    if-eqz p2, :cond_36

    .line 954
    if-nez v1, :cond_2c

    .line 955
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    goto :goto_2f

    .line 957
    :cond_2c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 959
    :goto_2f
    iget-object v3, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    .end local v5  # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 962
    :cond_39
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    const-string v6, "<NONE>"

    const-string v7, "PackageManager"

    if-eqz v5, :cond_5c

    if-eqz p2, :cond_5c

    .line 963
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Activities: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_51

    move-object v8, v6

    goto :goto_52

    :cond_51
    move-object v8, v1

    :goto_52
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_5c
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 967
    const/4 v1, 0x0

    .line 968
    const/4 v2, 0x0

    :goto_64
    if-ge v2, v0, :cond_ed

    .line 969
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Provider;

    .line 970
    .local v5, "p":Landroid/content/pm/PackageParser$Provider;
    iget-object v8, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v8, v5}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->removeProvider(Landroid/content/pm/PackageParser$Provider;)V

    .line 971
    iget-object v8, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v8, :cond_7a

    .line 975
    goto :goto_e9

    .line 977
    :cond_7a
    iget-object v8, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 978
    .local v8, "names":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_85
    array-length v10, v8

    if-ge v9, v10, :cond_d0

    .line 979
    iget-object v10, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v11, v8, v9

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v5, :cond_cd

    .line 980
    iget-object v10, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v11, v8, v9

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v10, :cond_cd

    if-eqz p2, :cond_cd

    .line 982
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unregistered content provider: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v8, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", className = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", isSyncable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v11, v11, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_cd
    add-int/lit8 v9, v9, 0x1

    goto :goto_85

    .line 988
    .end local v9  # "j":I
    :cond_d0
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v9, :cond_e9

    if-eqz p2, :cond_e9

    .line 989
    if-nez v1, :cond_df

    .line 990
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v9

    goto :goto_e2

    .line 992
    :cond_df
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 994
    :goto_e2
    iget-object v9, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    .end local v5  # "p":Landroid/content/pm/PackageParser$Provider;
    .end local v8  # "names":[Ljava/lang/String;
    :cond_e9
    :goto_e9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_64

    .line 997
    :cond_ed
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v5, :cond_10c

    if-eqz p2, :cond_10c

    .line 998
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Providers: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_101

    move-object v8, v6

    goto :goto_102

    :cond_101
    move-object v8, v1

    :goto_102
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_10c
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1002
    const/4 v1, 0x0

    .line 1003
    const/4 v2, 0x0

    :goto_114
    if-ge v2, v0, :cond_142

    .line 1004
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    .line 1005
    .local v5, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v8, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    const-string/jumbo v9, "receiver"

    invoke-static {v8, v5, v9}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$700(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 1006
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v8, :cond_13f

    if-eqz p2, :cond_13f

    .line 1007
    if-nez v1, :cond_135

    .line 1008
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v8

    goto :goto_138

    .line 1010
    :cond_135
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1012
    :goto_138
    iget-object v8, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    .end local v5  # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_13f
    add-int/lit8 v2, v2, 0x1

    goto :goto_114

    .line 1015
    :cond_142
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v5, :cond_161

    if-eqz p2, :cond_161

    .line 1016
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Receivers: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_156

    move-object v8, v6

    goto :goto_157

    :cond_156
    move-object v8, v1

    :goto_157
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_161
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1020
    const/4 v1, 0x0

    .line 1021
    const/4 v2, 0x0

    :goto_169
    if-ge v2, v0, :cond_194

    .line 1022
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Service;

    .line 1023
    .local v5, "s":Landroid/content/pm/PackageParser$Service;
    iget-object v8, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v8, v5}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->removeService(Landroid/content/pm/PackageParser$Service;)V

    .line 1024
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v8, :cond_191

    if-eqz p2, :cond_191

    .line 1025
    if-nez v1, :cond_187

    .line 1026
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v8

    goto :goto_18a

    .line 1028
    :cond_187
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1030
    :goto_18a
    iget-object v8, v5, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    .end local v5  # "s":Landroid/content/pm/PackageParser$Service;
    :cond_191
    add-int/lit8 v2, v2, 0x1

    goto :goto_169

    .line 1033
    :cond_194
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v3, :cond_1b2

    if-eqz p2, :cond_1b2

    .line 1034
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Services: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1a7

    goto :goto_1a8

    :cond_1a7
    move-object v6, v1

    :goto_1a8
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_1b2
    return-void
.end method


# virtual methods
.method addAllComponents(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 9
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"  # Z

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v0, "newIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
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
    sget-object v1, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "setupWizardPackage":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_22
    if-ltz v2, :cond_42

    .line 381
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 382
    .local v3, "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    sget-object v4, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, v3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 383
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 385
    .local v4, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_3b

    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    goto :goto_3c

    :cond_3b
    const/4 v5, 0x0

    .line 386
    .local v5, "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    :goto_3c
    invoke-direct {p0, v5, v3, v1}, Lcom/android/server/pm/ComponentResolver;->adjustPriority(Ljava/util/List;Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;)V

    .line 380
    .end local v3  # "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v4  # "disabledPkg":Landroid/content/pm/PackageParser$Package;
    .end local v5  # "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    .line 388
    .end local v2  # "i":I
    :cond_42
    return-void

    .line 377
    .end local v1  # "setupWizardPackage":Ljava/lang/String;
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v2
.end method

.method assertProvidersNotDefined(Landroid/content/pm/PackageParser$Package;)V
    .registers 4
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
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
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method dumpActivityResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpState"  # Lcom/android/server/pm/DumpState;
    .param p3, "packageName"  # Ljava/lang/String;

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

    move-result v0

    if-eqz v0, :cond_23

    .line 446
    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    .line 448
    :cond_23
    return-void
.end method

.method dumpContentProviders(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 11
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpState"  # Lcom/android/server/pm/DumpState;
    .param p3, "packageName"  # Ljava/lang/String;

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, "printedSomething":Z
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->access$400(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "    "

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    .line 477
    .local v2, "p":Landroid/content/pm/PackageParser$Provider;
    if-eqz p3, :cond_2a

    iget-object v4, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 478
    goto :goto_f

    .line 480
    :cond_2a
    if-nez v0, :cond_3b

    .line 481
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 482
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 484
    :cond_35
    const-string v4, "Registered ContentProviders:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    const/4 v0, 0x1

    .line 487
    :cond_3b
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageParser$Provider;->printComponentShortName(Ljava/io/PrintWriter;)V

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/pm/PackageParser$Provider;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    .end local v2  # "p":Landroid/content/pm/PackageParser$Provider;
    goto :goto_f

    .line 490
    :cond_53
    const/4 v0, 0x0

    .line 492
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 493
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Provider;

    .line 494
    .local v4, "p":Landroid/content/pm/PackageParser$Provider;
    if-eqz p3, :cond_7d

    iget-object v5, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    .line 495
    goto :goto_5e

    .line 497
    :cond_7d
    if-nez v0, :cond_8e

    .line 498
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v5

    if-eqz v5, :cond_88

    .line 499
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 501
    :cond_88
    const-string v5, "ContentProvider Authorities:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    const/4 v0, 0x1

    .line 504
    :cond_8e
    const-string v5, "  ["

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "]:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/pm/PackageParser$Provider;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    iget-object v5, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v5, :cond_c5

    iget-object v5, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_c5

    .line 507
    iget-object v5, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v5

    .line 508
    .local v5, "appInfo":Ljava/lang/String;
    const-string v6, "      applicationInfo="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    .end local v2  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;"
    .end local v4  # "p":Landroid/content/pm/PackageParser$Provider;
    .end local v5  # "appInfo":Ljava/lang/String;
    :cond_c5
    goto :goto_5e

    .line 511
    :cond_c6
    return-void
.end method

.method dumpProviderResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpState"  # Lcom/android/server/pm/DumpState;
    .param p3, "packageName"  # Ljava/lang/String;

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

    move-result v0

    if-eqz v0, :cond_23

    .line 454
    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    .line 456
    :cond_23
    return-void
.end method

.method dumpReceiverResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpState"  # Lcom/android/server/pm/DumpState;
    .param p3, "packageName"  # Ljava/lang/String;

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

    move-result v0

    if-eqz v0, :cond_23

    .line 462
    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    .line 464
    :cond_23
    return-void
.end method

.method dumpServicePermissions(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpState"  # Lcom/android/server/pm/DumpState;
    .param p3, "packageName"  # Ljava/lang/String;

    .line 514
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 515
    :cond_9
    const-string v0, "Service permissions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v0}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 518
    .local v0, "filterIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 519
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 520
    .local v1, "info":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    iget-object v2, v1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 521
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 522
    .local v3, "permission":Ljava/lang/String;
    if-eqz v3, :cond_40

    .line 523
    const-string v4, "    "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 525
    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    .end local v1  # "info":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .end local v2  # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v3  # "permission":Ljava/lang/String;
    :cond_40
    goto :goto_14

    .line 529
    :cond_41
    return-void
.end method

.method dumpServiceResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpState"  # Lcom/android/server/pm/DumpState;
    .param p3, "packageName"  # Ljava/lang/String;

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

    move-result v0

    if-eqz v0, :cond_23

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
    .local v1, "protectedFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 413
    sget-object v2, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "setupWizardPackage":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_24
    if-ltz v4, :cond_3f

    .line 420
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 421
    .local v3, "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
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
    .end local v3  # "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :goto_3c
    add-int/lit8 v4, v4, -0x1

    goto :goto_24

    .line 440
    .end local v4  # "i":I
    :cond_3f
    return-void

    .line 408
    .end local v1  # "protectedFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v2  # "setupWizardPackage":Ljava/lang/String;
    :cond_40
    :goto_40
    return-void
.end method

.method getActivity(Landroid/content/ComponentName;)Landroid/content/pm/PackageParser$Activity;
    .registers 4
    .param p1, "component"  # Landroid/content/ComponentName;

    .line 196
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$300(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    monitor-exit v0

    return-object v1

    .line 198
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method getProvider(Landroid/content/ComponentName;)Landroid/content/pm/PackageParser$Provider;
    .registers 4
    .param p1, "component"  # Landroid/content/ComponentName;

    .line 203
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->access$400(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    monitor-exit v0

    return-object v1

    .line 205
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method getReceiver(Landroid/content/ComponentName;)Landroid/content/pm/PackageParser$Activity;
    .registers 4
    .param p1, "component"  # Landroid/content/ComponentName;

    .line 210
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$300(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    monitor-exit v0

    return-object v1

    .line 212
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method getService(Landroid/content/ComponentName;)Landroid/content/pm/PackageParser$Service;
    .registers 4
    .param p1, "component"  # Landroid/content/ComponentName;

    .line 217
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->access$500(Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    monitor-exit v0

    return-object v1

    .line 219
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method isActivityDefined(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "component"  # Landroid/content/ComponentName;

    .line 357
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$300(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    .line 359
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method queryActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 7
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "flags"  # I
    .param p4, "userId"  # I
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

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 225
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method queryActivities(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .registers 13
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "flags"  # I
    .param p5, "userId"  # I
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
    .local p4, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
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

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 233
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method queryProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .registers 8
    .param p1, "authority"  # Ljava/lang/String;
    .param p2, "flags"  # I
    .param p3, "userId"  # I

    .line 289
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    .line 291
    .local v1, "p":Landroid/content/pm/PackageParser$Provider;
    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 292
    monitor-exit v0

    return-object v2

    .line 294
    :cond_10
    iget-object v3, v1, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 295
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_1a

    .line 296
    monitor-exit v0

    return-object v2

    .line 298
    :cond_1a
    invoke-virtual {v3, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v2

    invoke-static {v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 299
    .end local v1  # "p":Landroid/content/pm/PackageParser$Provider;
    .end local v3  # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method queryProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 7
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "flags"  # I
    .param p4, "userId"  # I
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

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 239
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method queryProviders(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .registers 13
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "flags"  # I
    .param p5, "userId"  # I
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
    .local p4, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Provider;>;"
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

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 246
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method queryProviders(Ljava/lang/String;Ljava/lang/String;III)Ljava/util/List;
    .registers 14
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "metaDataKey"  # Ljava/lang/String;
    .param p3, "uid"  # I
    .param p4, "flags"  # I
    .param p5, "userId"  # I
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

    if-nez v0, :cond_a

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 254
    :cond_a
    const/4 v0, 0x0

    .line 255
    .local v0, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_e
    iget-object v2, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v2}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->access$400(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1a
    if-ltz v2, :cond_7c

    .line 257
    iget-object v3, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v3}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->access$400(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Provider;

    .line 258
    .local v3, "p":Landroid/content/pm/PackageParser$Provider;
    iget-object v4, v3, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 259
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v4, :cond_31

    .line 260
    goto :goto_79

    .line 262
    :cond_31
    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v5, :cond_38

    .line 263
    goto :goto_79

    .line 265
    :cond_38
    if-eqz p1, :cond_51

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 266
    invoke-static {v5, p3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    if-nez v5, :cond_51

    .line 267
    goto :goto_79

    .line 270
    :cond_51
    if-eqz p2, :cond_60

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_79

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    .line 271
    invoke-virtual {v5, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 272
    goto :goto_79

    .line 274
    :cond_60
    nop

    .line 275
    invoke-virtual {v4, p5}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v5

    .line 274
    invoke-static {v3, p4, v5, p5}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 276
    .local v5, "info":Landroid/content/pm/ProviderInfo;
    if-nez v5, :cond_6c

    .line 277
    goto :goto_79

    .line 279
    :cond_6c
    if-nez v0, :cond_76

    .line 280
    new-instance v6, Ljava/util/ArrayList;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v6

    .line 282
    :cond_76
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v3  # "p":Landroid/content/pm/PackageParser$Provider;
    .end local v4  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5  # "info":Landroid/content/pm/ProviderInfo;
    :cond_79
    :goto_79
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 284
    .end local v2  # "i":I
    :cond_7c
    monitor-exit v1

    .line 285
    return-object v0

    .line 284
    :catchall_7e
    move-exception v2

    monitor-exit v1
    :try_end_80
    .catchall {:try_start_e .. :try_end_80} :catchall_7e

    throw v2
.end method

.method queryReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 7
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "flags"  # I
    .param p4, "userId"  # I
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

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 332
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method queryReceivers(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .registers 13
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "flags"  # I
    .param p5, "userId"  # I
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
    .local p4, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
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

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 339
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method queryServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 7
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "flags"  # I
    .param p4, "userId"  # I
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

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 345
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method queryServices(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .registers 13
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "flags"  # I
    .param p5, "userId"  # I
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
    .local p4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Service;>;"
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

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 352
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method querySyncProviders(Ljava/util/List;Ljava/util/List;ZI)V
    .registers 11
    .param p3, "safeMode"  # Z
    .param p4, "userId"  # I
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
    .local p1, "outNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "outInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_4d

    .line 306
    iget-object v2, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    .line 307
    .local v2, "p":Landroid/content/pm/PackageParser$Provider;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 308
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
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

    move-result-object v5

    invoke-static {v2, v4, v5, p4}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 320
    .local v4, "info":Landroid/content/pm/ProviderInfo;
    if-nez v4, :cond_3c

    .line 321
    goto :goto_4a

    .line 323
    :cond_3c
    iget-object v5, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    .end local v2  # "p":Landroid/content/pm/PackageParser$Provider;
    .end local v3  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4  # "info":Landroid/content/pm/ProviderInfo;
    :goto_4a
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 326
    .end local v1  # "i":I
    :cond_4d
    monitor-exit v0

    .line 327
    return-void

    .line 326
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method removeAllComponents(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 5
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"  # Z

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
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
