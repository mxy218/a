.class public Lcom/android/server/search/Searchables;
.super Ljava/lang/Object;
.source "Searchables.java"


# static fields
.field public static ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field private static final GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "Searchables"

.field private static final MD_LABEL_DEFAULT_SEARCHABLE:Ljava/lang/String; = "android.app.default_searchable"

.field private static final MD_SEARCHABLE_SYSTEM_SEARCH:Ljava/lang/String; = "*"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

.field private mGlobalSearchActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/IPackageManager;

.field private mSearchablesInGlobalSearchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:I

.field private mWebSearchActivity:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    const-string v0, "com.android.googlesearch/.GoogleSearch"

    sput-object v0, Lcom/android/server/search/Searchables;->GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    .line 76
    const-string v0, "com.google.android.providers.enhancedgooglesearch/.Launcher"

    sput-object v0, Lcom/android/server/search/Searchables;->ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    .line 353
    new-instance v0, Lcom/android/server/search/Searchables$1;

    invoke-direct {v0}, Lcom/android/server/search/Searchables$1;-><init>()V

    sput-object v0, Lcom/android/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 66
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    .line 67
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    .line 71
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    .line 72
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 89
    iput-object p1, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    .line 90
    iput p2, p0, Lcom/android/server/search/Searchables;->mUserId:I

    .line 91
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    .line 92
    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/ResolveInfo;)Z
    .registers 1

    .line 53
    invoke-static {p0}, Lcom/android/server/search/Searchables;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method

.method private createFilterdResolveInfoList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 478
    if-nez p1, :cond_4

    .line 479
    const/4 p1, 0x0

    return-object p1

    .line 481
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 482
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 483
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 484
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 485
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 486
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 487
    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 486
    invoke-virtual {v1, v2, v5, v3}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 488
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_3c
    goto :goto_21

    .line 491
    :cond_3d
    return-object v0
.end method

.method private createFilterdSearchableInfoList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/SearchableInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .line 462
    if-nez p1, :cond_4

    .line 463
    const/4 p1, 0x0

    return-object p1

    .line 465
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 466
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 467
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 468
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 469
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchableInfo;

    .line 470
    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 471
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_3a
    goto :goto_21

    .line 474
    :cond_3b
    return-object v0
.end method

.method private findGlobalSearchActivities()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    const/high16 v1, 0x10010000

    invoke-direct {p0, v0, v1}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 311
    sget-object v1, Lcom/android/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 314
    :cond_1a
    return-object v0
.end method

.method private findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 323
    invoke-direct {p0}, Lcom/android/server/search/Searchables;->getGlobalSearchProviderSetting()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 325
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_17

    invoke-direct {p0, v0}, Lcom/android/server/search/Searchables;->isInstalled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 328
    return-object v0

    .line 332
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/search/Searchables;->getDefaultGlobalSearchProvider(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method private findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 5

    .line 410
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 411
    return-object v0

    .line 413
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const/high16 p1, 0x10000

    .line 416
    invoke-direct {p0, v1, p1}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 418
    if-eqz p1, :cond_33

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 419
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 421
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 423
    :cond_33
    const-string p1, "Searchables"

    const-string v1, "No web search activity found"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-object v0
.end method

.method private getDefaultGlobalSearchProvider(Ljava/util/List;)Landroid/content/ComponentName;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 390
    if-eqz p1, :cond_1b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 391
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 392
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 395
    :cond_1b
    const-string p1, "Searchables"

    const-string v0, "No global search activity found"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 p1, 0x0

    return-object p1
.end method

.method private getGlobalSearchProviderSetting()Ljava/lang/String;
    .registers 3

    .line 400
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "search_global_search_activity"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isInstalled(Landroid/content/ComponentName;)Z
    .registers 4

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 344
    const/high16 p1, 0x10000

    invoke-direct {p0, v0, p1}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 346
    if-eqz p1, :cond_1a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 347
    const/4 p1, 0x1

    return p1

    .line 350
    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method private static final isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    .registers 2

    .line 382
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 428
    nop

    .line 430
    :try_start_1
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    .line 432
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x800000

    or-int/2addr p2, v2

    iget v2, p0, Lcom/android/server/search/Searchables;->mUserId:I

    .line 431
    invoke-interface {v0, p1, v1, p2, v2}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 433
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1b

    .line 436
    goto :goto_1d

    .line 434
    :catch_1b
    move-exception p1

    const/4 p1, 0x0

    .line 437
    :goto_1d
    return-object p1
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 523
    const-string p1, "Searchable authorities:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    monitor-enter p0

    .line 525
    :try_start_6
    iget-object p1, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    if-eqz p1, :cond_29

    .line 526
    iget-object p1, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/SearchableInfo;

    .line 527
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    goto :goto_10

    .line 530
    :cond_29
    monitor-exit p0

    .line 531
    return-void

    .line 530
    :catchall_2b
    move-exception p1

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public declared-synchronized getGlobalSearchActivities()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 458
    :try_start_1
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/search/Searchables;->createFilterdResolveInfoList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGlobalSearchActivity()Landroid/content/ComponentName;
    .registers 5

    monitor-enter p0

    .line 498
    :try_start_1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 499
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 500
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 501
    iget-object v3, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    .line 502
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 503
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_24

    monitor-exit p0

    return-object v0

    .line 505
    :cond_21
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 497
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .registers 7

    .line 124
    monitor-enter p0

    .line 125
    :try_start_1
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchableInfo;

    .line 126
    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 127
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 128
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 129
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 130
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 129
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 131
    monitor-exit p0

    return-object v0

    .line 133
    :cond_28
    monitor-exit p0

    return-object v1

    .line 135
    :cond_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_cf

    .line 142
    nop

    .line 144
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    const/16 v2, 0x80

    iget v3, p0, Lcom/android/server/search/Searchables;->mUserId:I

    invoke-interface {v0, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_36} :catch_b7

    .line 148
    nop

    .line 149
    nop

    .line 152
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 153
    if-eqz v2, :cond_43

    .line 154
    const-string v3, "android.app.default_searchable"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_44

    .line 153
    :cond_43
    move-object v2, v1

    .line 157
    :goto_44
    if-nez v2, :cond_52

    .line 158
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 159
    if-eqz v0, :cond_52

    .line 160
    const-string v2, "android.app.default_searchable"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    :cond_52
    if-eqz v2, :cond_b6

    .line 168
    const-string v0, "*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 169
    return-object v1

    .line 171
    :cond_5d
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 173
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_7f

    .line 174
    new-instance v3, Landroid/content/ComponentName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    .line 176
    :cond_7f
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_84
    monitor-enter p0

    .line 182
    :try_start_85
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchableInfo;

    .line 183
    if-eqz v0, :cond_94

    .line 184
    iget-object v2, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_94
    monitor-exit p0
    :try_end_95
    .catchall {:try_start_85 .. :try_end_95} :catchall_b3

    .line 187
    if-eqz v0, :cond_b6

    .line 188
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 189
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 190
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 191
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 190
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 192
    return-object v0

    .line 194
    :cond_b2
    return-object v1

    .line 186
    :catchall_b3
    move-exception p1

    :try_start_b4
    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw p1

    .line 199
    :cond_b6
    return-object v1

    .line 145
    :catch_b7
    move-exception p1

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting activity info "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Searchables"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-object v1

    .line 135
    :catchall_cf
    move-exception p1

    :try_start_d0
    monitor-exit p0
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw p1
.end method

.method public declared-synchronized getSearchablesInGlobalSearchList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 451
    :try_start_1
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/search/Searchables;->createFilterdSearchableInfoList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSearchablesList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 444
    :try_start_1
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/search/Searchables;->createFilterdSearchableInfoList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWebSearchActivity()Landroid/content/ComponentName;
    .registers 5

    monitor-enter p0

    .line 512
    :try_start_1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 513
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 514
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 515
    iget-object v3, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 516
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 517
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_24

    monitor-exit p0

    return-object v0

    .line 519
    :cond_21
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 511
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateSearchableList()V
    .registers 15

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 238
    const v6, 0x10000080

    :try_start_1d
    invoke-direct {p0, v3, v6}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 242
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.WEB_SEARCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-direct {p0, v7, v6}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 247
    if-nez v3, :cond_30

    if-eqz v6, :cond_87

    .line 248
    :cond_30
    const/4 v7, 0x0

    if-nez v3, :cond_35

    move v8, v7

    goto :goto_39

    :cond_35
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    .line 249
    :goto_39
    if-nez v6, :cond_3d

    move v9, v7

    goto :goto_41

    :cond_3d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    .line 250
    :goto_41
    add-int/2addr v9, v8

    .line 251
    nop

    :goto_43
    if-ge v7, v9, :cond_87

    .line 253
    if-ge v7, v8, :cond_4e

    .line 254
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    goto :goto_56

    .line 255
    :cond_4e
    sub-int v10, v7, v8

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 256
    :goto_56
    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 258
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_84

    .line 259
    iget-object v11, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    iget v12, p0, Lcom/android/server/search/Searchables;->mUserId:I

    invoke-static {v11, v10, v12}, Landroid/app/SearchableInfo;->getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;I)Landroid/app/SearchableInfo;

    move-result-object v10

    .line 261
    if-eqz v10, :cond_84

    .line 262
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-virtual {v10}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {v10}, Landroid/app/SearchableInfo;->shouldIncludeInGlobalSearch()Z

    move-result v11

    if-eqz v11, :cond_84

    .line 265
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_84
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 272
    :cond_87
    invoke-direct {p0}, Lcom/android/server/search/Searchables;->findGlobalSearchActivities()Ljava/util/List;

    move-result-object v3

    .line 275
    invoke-direct {p0, v3}, Lcom/android/server/search/Searchables;->findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v6

    .line 279
    invoke-direct {p0, v6}, Lcom/android/server/search/Searchables;->findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v7

    .line 282
    monitor-enter p0
    :try_end_94
    .catchall {:try_start_1d .. :try_end_94} :catchall_a9

    .line 283
    :try_start_94
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 284
    iput-object v1, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    .line 285
    iput-object v2, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    .line 286
    iput-object v3, p0, Lcom/android/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    .line 287
    iput-object v6, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    .line 288
    iput-object v7, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 289
    monitor-exit p0
    :try_end_a1
    .catchall {:try_start_94 .. :try_end_a1} :catchall_a6

    .line 291
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 292
    nop

    .line 293
    return-void

    .line 289
    :catchall_a6
    move-exception v0

    :try_start_a7
    monitor-exit p0
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    :try_start_a8
    throw v0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a9

    .line 291
    :catchall_a9
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
