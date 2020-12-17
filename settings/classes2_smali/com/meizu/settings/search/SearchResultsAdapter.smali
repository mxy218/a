.class public Lcom/meizu/settings/search/SearchResultsAdapter;
.super Lflyme/support/v7/widget/RecyclerView$Adapter;
.source "SearchResultsAdapter.java"

# interfaces
.implements Lcom/meizu/settings/search/ranking/SearchResultsRankerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/search/SearchResultsAdapter$AsyncRankingState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lflyme/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/meizu/settings/search/SearchViewHolder;",
        ">;",
        "Lcom/meizu/settings/search/ranking/SearchResultsRankerCallback;"
    }
.end annotation


# static fields
.field static final ACCESSIBILITY_LOADER_KEY:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final APP_RESULTS_LOADER_KEY:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DB_RESULTS_LOADER_KEY:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DISABLED:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FAILED:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final INPUT_DEVICE_LOADER_KEY:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MSG_RANKING_TIMED_OUT:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PENDING_RESULTS:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SUCCEEDED:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TIMED_OUT:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mAsyncRankingState:I

.field private final mContext:Landroid/content/Context;

.field private final mFragment:Lcom/meizu/settings/search/SearchFragment;

.field private mHandler:Landroid/os/Handler;

.field private mResultsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

.field private mSearchRankingScores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSearchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchResultsLoaded:Z

.field private mSearchResultsUpdated:Z

.field private final mStaticallyRankedSearchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    const-class v0, Lcom/meizu/settings/search/DatabaseResultLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/search/SearchResultsAdapter;->DB_RESULTS_LOADER_KEY:Ljava/lang/String;

    .line 64
    const-class v0, Lcom/meizu/settings/search/InstalledAppResultLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/search/SearchResultsAdapter;->APP_RESULTS_LOADER_KEY:Ljava/lang/String;

    .line 66
    const-class v0, Lcom/meizu/settings/search/AccessibilityServiceResultLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/search/SearchResultsAdapter;->ACCESSIBILITY_LOADER_KEY:Ljava/lang/String;

    .line 68
    const-class v0, Lcom/meizu/settings/search/InputDeviceResultLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/search/SearchResultsAdapter;->INPUT_DEVICE_LOADER_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/meizu/settings/search/SearchFragment;Lcom/meizu/settings/search/SearchFeatureProvider;)V
    .registers 3

    .line 100
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mFragment:Lcom/meizu/settings/search/SearchFragment;

    .line 102
    invoke-virtual {p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    .line 104
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mResultsMap:Ljava/util/Map;

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchRankingScores:Ljava/util/List;

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mStaticallyRankedSearchResults:Ljava/util/List;

    .line 107
    iput-object p2, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    const/4 p1, 0x1

    .line 109
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/search/SearchResultsAdapter;)Landroid/content/Context;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/search/SearchResultsAdapter;)Lcom/meizu/settings/search/SearchFeatureProvider;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/search/SearchResultsAdapter;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mAsyncRankingState:I

    return p0
.end method

.method static synthetic access$202(Lcom/meizu/settings/search/SearchResultsAdapter;I)I
    .registers 2

    .line 55
    iput p1, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mAsyncRankingState:I

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/settings/search/SearchResultsAdapter;)Z
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/meizu/settings/search/SearchResultsAdapter;->canUpdateSearchResults()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/search/SearchResultsAdapter;)V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/meizu/settings/search/SearchResultsAdapter;->updateSearchResults()V

    return-void
.end method

.method private canUpdateSearchResults()Z
    .registers 3

    .line 375
    iget-boolean v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchResultsUpdated:Z

    const/4 v1, 0x1

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchResultsLoaded:Z

    if-eqz v0, :cond_e

    iget p0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mAsyncRankingState:I

    if-eq p0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private doStaticRanking()V
    .registers 16

    .line 304
    sget-object v0, Lcom/meizu/settings/search/SearchResultsAdapter;->DB_RESULTS_LOADER_KEY:Ljava/lang/String;

    .line 305
    invoke-virtual {p0, v0}, Lcom/meizu/settings/search/SearchResultsAdapter;->getSortedLoadedResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 306
    sget-object v1, Lcom/meizu/settings/search/SearchResultsAdapter;->APP_RESULTS_LOADER_KEY:Ljava/lang/String;

    .line 307
    invoke-virtual {p0, v1}, Lcom/meizu/settings/search/SearchResultsAdapter;->getSortedLoadedResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 308
    sget-object v2, Lcom/meizu/settings/search/SearchResultsAdapter;->ACCESSIBILITY_LOADER_KEY:Ljava/lang/String;

    .line 309
    invoke-virtual {p0, v2}, Lcom/meizu/settings/search/SearchResultsAdapter;->getSortedLoadedResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 310
    sget-object v3, Lcom/meizu/settings/search/SearchResultsAdapter;->INPUT_DEVICE_LOADER_KEY:Ljava/lang/String;

    .line 311
    invoke-virtual {p0, v3}, Lcom/meizu/settings/search/SearchResultsAdapter;->getSortedLoadedResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 313
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 314
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 315
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 316
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 324
    iget-object v8, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mStaticallyRankedSearchResults:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_32
    const/16 v13, 0xa

    if-gt v8, v13, :cond_a5

    :goto_36
    if-ge v9, v4, :cond_51

    .line 326
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meizu/settings/search/SearchResult;

    iget v13, v13, Lcom/meizu/settings/search/SearchResult;->rank:I

    if-ne v13, v8, :cond_51

    .line 327
    iget-object v13, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mStaticallyRankedSearchResults:Ljava/util/List;

    add-int/lit8 v14, v9, 0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/meizu/settings/search/SearchResult;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v9, v14

    goto :goto_36

    :cond_51
    :goto_51
    if-ge v10, v5, :cond_6c

    .line 329
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meizu/settings/search/SearchResult;

    iget v13, v13, Lcom/meizu/settings/search/SearchResult;->rank:I

    if-ne v13, v8, :cond_6c

    .line 330
    iget-object v13, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mStaticallyRankedSearchResults:Ljava/util/List;

    add-int/lit8 v14, v10, 0x1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/meizu/settings/search/SearchResult;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v10, v14

    goto :goto_51

    :cond_6c
    :goto_6c
    if-ge v11, v6, :cond_87

    .line 332
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meizu/settings/search/SearchResult;

    iget v13, v13, Lcom/meizu/settings/search/SearchResult;->rank:I

    if-ne v13, v8, :cond_87

    .line 333
    iget-object v13, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mStaticallyRankedSearchResults:Ljava/util/List;

    add-int/lit8 v14, v11, 0x1

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/meizu/settings/search/SearchResult;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v14

    goto :goto_6c

    :cond_87
    :goto_87
    if-ge v12, v7, :cond_a2

    .line 336
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meizu/settings/search/SearchResult;

    iget v13, v13, Lcom/meizu/settings/search/SearchResult;->rank:I

    if-ne v13, v8, :cond_a2

    .line 337
    iget-object v13, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mStaticallyRankedSearchResults:Ljava/util/List;

    add-int/lit8 v14, v12, 0x1

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/meizu/settings/search/SearchResult;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v12, v14

    goto :goto_87

    :cond_a2
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    :cond_a5
    :goto_a5
    if-ge v9, v4, :cond_b6

    .line 343
    iget-object v8, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mStaticallyRankedSearchResults:Ljava/util/List;

    add-int/lit8 v13, v9, 0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/meizu/settings/search/SearchResult;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v9, v13

    goto :goto_a5

    :cond_b6
    :goto_b6
    if-ge v10, v5, :cond_c7

    .line 346
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mStaticallyRankedSearchResults:Ljava/util/List;

    add-int/lit8 v4, v10, 0x1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/settings/search/SearchResult;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v10, v4

    goto :goto_b6

    :cond_c7
    :goto_c7
    if-ge v11, v6, :cond_d8

    .line 349
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mStaticallyRankedSearchResults:Ljava/util/List;

    add-int/lit8 v1, v11, 0x1

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/search/SearchResult;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v1

    goto :goto_c7

    :cond_d8
    :goto_d8
    if-ge v12, v7, :cond_e9

    .line 352
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mStaticallyRankedSearchResults:Ljava/util/List;

    add-int/lit8 v1, v12, 0x1

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/search/SearchResult;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v12, v1

    goto :goto_d8

    :cond_e9
    return-void
.end method

.method private preHandleSearchResult(Lcom/meizu/settings/search/SearchResult;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 212
    :cond_3
    iget-object v0, p1, Lcom/meizu/settings/search/SearchResult;->payload:Lcom/meizu/settings/search/ResultPayload;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/meizu/settings/search/ResultPayload;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 213
    iget-object p1, p1, Lcom/meizu/settings/search/SearchResult;->payload:Lcom/meizu/settings/search/ResultPayload;

    invoke-virtual {p1}, Lcom/meizu/settings/search/ResultPayload;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    const-string v1, "com.meizu.power.POWER_UI_MAIN"

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 216
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    const-string v2, "com.meizu.battery"

    invoke-static {v0, v2, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExistAndHasAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 218
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3c

    .line 219
    :cond_2f
    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    const-string v0, "com.meizu.safe"

    invoke-static {p0, v0, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExistAndHasAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 222
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3c
    :goto_3c
    return-void
.end method

.method private updateSearchResults()V
    .registers 4

    .line 357
    iget v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mAsyncRankingState:I

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_11

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19

    goto :goto_1f

    .line 367
    :cond_11
    invoke-virtual {p0}, Lcom/meizu/settings/search/SearchResultsAdapter;->doAsyncRanking()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/settings/search/SearchResultsAdapter;->postSearchResults(Ljava/util/List;Z)V

    goto :goto_1f

    .line 364
    :cond_19
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mStaticallyRankedSearchResults:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/settings/search/SearchResultsAdapter;->postSearchResults(Ljava/util/List;Z)V

    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method public addSearchResults(Ljava/util/Set;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 200
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/search/SearchResult;

    .line 201
    invoke-direct {p0, v1}, Lcom/meizu/settings/search/SearchResultsAdapter;->preHandleSearchResult(Lcom/meizu/settings/search/SearchResult;)V

    goto :goto_7

    .line 204
    :cond_17
    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mResultsMap:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearResults()V
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 265
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mStaticallyRankedSearchResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 266
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mResultsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 267
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public displaySavedQuery(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;)I"
        }
    .end annotation

    .line 237
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/search/SearchResult;

    .line 238
    invoke-direct {p0, v1}, Lcom/meizu/settings/search/SearchResultsAdapter;->preHandleSearchResult(Lcom/meizu/settings/search/SearchResult;)V

    goto :goto_4

    .line 241
    :cond_14
    invoke-virtual {p0}, Lcom/meizu/settings/search/SearchResultsAdapter;->clearResults()V

    .line 242
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 244
    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method doAsyncRanking()Ljava/util/List;
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 382
    sget-object v0, Lcom/meizu/settings/search/SearchResultsAdapter;->DB_RESULTS_LOADER_KEY:Ljava/lang/String;

    .line 383
    invoke-virtual {p0, v0}, Lcom/meizu/settings/search/SearchResultsAdapter;->getUnsortedLoadedResults(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 384
    sget-object v1, Lcom/meizu/settings/search/SearchResultsAdapter;->APP_RESULTS_LOADER_KEY:Ljava/lang/String;

    .line 385
    invoke-virtual {p0, v1}, Lcom/meizu/settings/search/SearchResultsAdapter;->getSortedLoadedResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 386
    sget-object v2, Lcom/meizu/settings/search/SearchResultsAdapter;->ACCESSIBILITY_LOADER_KEY:Ljava/lang/String;

    .line 387
    invoke-virtual {p0, v2}, Lcom/meizu/settings/search/SearchResultsAdapter;->getSortedLoadedResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 388
    sget-object v3, Lcom/meizu/settings/search/SearchResultsAdapter;->INPUT_DEVICE_LOADER_KEY:Ljava/lang/String;

    .line 389
    invoke-virtual {p0, v3}, Lcom/meizu/settings/search/SearchResultsAdapter;->getSortedLoadedResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 390
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    .line 391
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 392
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 393
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 395
    new-instance v8, Ljava/util/ArrayList;

    add-int/2addr v4, v5

    add-int/2addr v4, v6

    add-int/2addr v4, v7

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 397
    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Lcom/meizu/settings/search/SearchResultsAdapter$1;

    invoke-direct {v5, p0}, Lcom/meizu/settings/search/SearchResultsAdapter$1;-><init>(Lcom/meizu/settings/search/SearchResultsAdapter;)V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 412
    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 413
    invoke-interface {v8, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 415
    invoke-interface {v8, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 416
    invoke-interface {v8, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    invoke-interface {v8, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v8
.end method

.method getAsyncRankingState()I
    .registers 1

    .line 296
    iget p0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mAsyncRankingState:I

    return p0
.end method

.method getHandler()Landroid/os/Handler;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 456
    new-instance v0, Lcom/meizu/settings/search/SearchResultsAdapter$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/search/SearchResultsAdapter$2;-><init>(Lcom/meizu/settings/search/SearchResultsAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mHandler:Landroid/os/Handler;

    .line 474
    :cond_f
    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getItemCount()I
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .registers 2

    .line 145
    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/search/SearchResult;

    iget p0, p0, Lcom/meizu/settings/search/SearchResult;->stableId:I

    int-to-long p0, p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .registers 2

    .line 150
    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/search/SearchResult;

    iget p0, p0, Lcom/meizu/settings/search/SearchResult;->viewType:I

    return p0
.end method

.method getRankingScoreByStableId(I)Ljava/lang/Float;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 442
    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchRankingScores:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 443
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 444
    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    return-object p0

    .line 449
    :cond_25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stableId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was not in the ranking scores."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SearchResultsAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const p0, -0x800001

    .line 450
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getSearchResults()Ljava/util/List;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    return-object p0
.end method

.method getSortedLoadedResults(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    .line 429
    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/SearchResultsAdapter;->getUnsortedLoadedResults(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 430
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method getUnsortedLoadedResults(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mResultsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mResultsMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    goto :goto_16

    :cond_11
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    :goto_16
    return-object p0
.end method

.method public initializeSearch(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchResultsLoaded:Z

    .line 281
    iput-boolean v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchResultsUpdated:Z

    .line 282
    iget-object v1, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    iget-object v2, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/meizu/settings/search/SearchFeatureProvider;->isSmartSearchRankingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v0, 0x1

    .line 283
    iput v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mAsyncRankingState:I

    .line 284
    iget-object v1, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    iget-object v2, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/meizu/settings/search/SearchFeatureProvider;->cancelPendingSearchQuery(Landroid/content/Context;)V

    .line 285
    invoke-virtual {p0}, Lcom/meizu/settings/search/SearchResultsAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 286
    iget-object v2, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    iget-object v3, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/meizu/settings/search/SearchFeatureProvider;->smartSearchRankingTimeoutMs(Landroid/content/Context;)J

    move-result-wide v2

    .line 288
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 287
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 289
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    iget-object v1, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p0}, Lcom/meizu/settings/search/SearchFeatureProvider;->querySearchResults(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/settings/search/ranking/SearchResultsRankerCallback;)V

    goto :goto_36

    .line 291
    :cond_34
    iput v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mAsyncRankingState:I

    :goto_36
    return-void
.end method

.method public notifyResultsLoaded()V
    .registers 3

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchResultsLoaded:Z

    .line 255
    iget v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mAsyncRankingState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    .line 256
    invoke-direct {p0}, Lcom/meizu/settings/search/SearchResultsAdapter;->doStaticRanking()V

    .line 258
    :cond_b
    invoke-direct {p0}, Lcom/meizu/settings/search/SearchResultsAdapter;->canUpdateSearchResults()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 259
    invoke-direct {p0}, Lcom/meizu/settings/search/SearchResultsAdapter;->updateSearchResults()V

    :cond_14
    return-void
.end method

.method public onBindViewHolder(Lcom/meizu/settings/search/SearchViewHolder;I)V
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mFragment:Lcom/meizu/settings/search/SearchFragment;

    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/search/SearchResult;

    invoke-virtual {p1, v0, p0}, Lcom/meizu/settings/search/SearchViewHolder;->onBind(Lcom/meizu/settings/search/SearchFragment;Lcom/meizu/settings/search/SearchResult;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 55
    check-cast p1, Lcom/meizu/settings/search/SearchViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/search/SearchResultsAdapter;->onBindViewHolder(Lcom/meizu/settings/search/SearchViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/meizu/settings/search/SearchViewHolder;
    .registers 6

    .line 114
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 115
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d02ec

    const/4 v1, 0x0

    if-eqz p2, :cond_3a

    const/4 v2, 0x2

    if-eq p2, v2, :cond_30

    const/4 v2, 0x3

    if-eq p2, v2, :cond_26

    const/4 v0, 0x4

    if-eq p2, v0, :cond_19

    const/4 p0, 0x0

    return-object p0

    :cond_19
    const p2, 0x7f0d02f0

    .line 131
    invoke-virtual {p0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 132
    new-instance p1, Lcom/meizu/settings/search/SavedQueryViewHolder;

    invoke-direct {p1, p0}, Lcom/meizu/settings/search/SavedQueryViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 128
    :cond_26
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 129
    new-instance p1, Lcom/meizu/settings/search/IntentSearchViewHolder;

    invoke-direct {p1, p0}, Lcom/meizu/settings/search/IntentSearchViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 124
    :cond_30
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 125
    new-instance p1, Lcom/meizu/settings/search/IntentSearchViewHolder;

    invoke-direct {p1, p0}, Lcom/meizu/settings/search/IntentSearchViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 119
    :cond_3a
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 120
    new-instance p1, Lcom/meizu/settings/search/IntentSearchViewHolder;

    invoke-direct {p1, p0}, Lcom/meizu/settings/search/IntentSearchViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/search/SearchResultsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/meizu/settings/search/SearchViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public postSearchResults(Ljava/util/List;Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;Z)V"
        }
    .end annotation

    .line 479
    new-instance v0, Lcom/meizu/settings/search/SearchResultDiffCallback;

    iget-object v1, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lcom/meizu/settings/search/SearchResultDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0, p2}, Lflyme/support/v7/util/DiffUtil;->calculateDiff(Lflyme/support/v7/util/DiffUtil$Callback;Z)Lflyme/support/v7/util/DiffUtil$DiffResult;

    move-result-object p2

    .line 481
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 482
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 483
    invoke-virtual {p2, p0}, Lflyme/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Lflyme/support/v7/widget/RecyclerView$Adapter;)V

    .line 484
    iget-object p1, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mFragment:Lcom/meizu/settings/search/SearchFragment;

    iget-object p2, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchResults:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/meizu/settings/search/SearchFragment;->onSearchResultsDisplayed(I)V

    const/4 p1, 0x1

    .line 485
    iput-boolean p1, p0, Lcom/meizu/settings/search/SearchResultsAdapter;->mSearchResultsUpdated:Z

    return-void
.end method
