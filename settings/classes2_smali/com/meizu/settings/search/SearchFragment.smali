.class public Lcom/meizu/settings/search/SearchFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "SearchFragment.java"

# interfaces
.implements Lcom/meizu/settings/widget/SearchView$OnQueryTextListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/meizu/settings/search/IndexingCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/settings/SettingsPreferenceFragment;",
        "Lcom/meizu/settings/widget/SearchView$OnQueryTextListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/Set<",
        "+",
        "Lcom/meizu/settings/search/SearchResult;",
        ">;>;",
        "Lcom/meizu/settings/search/IndexingCallback;"
    }
.end annotation


# static fields
.field static final RESULT_CLICK_COUNT:Ljava/lang/String; = "settings_search_result_click_count"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mClearHistoryButton:Landroid/view/View;

.field private mFLoatView:Landroid/view/View;

.field mLinearLayoutManager:Lflyme/support/v7/widget/LinearLayoutManager;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mNeverEnteredQuery:Z

.field mNoResultsView:Landroid/widget/LinearLayout;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mQuery:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mResultClickCount:I

.field mResultsRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

.field mSavedQueryController:Lcom/meizu/settings/search/SavedQueryController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mScrollView:Landroid/widget/ScrollView;

.field mSearchAdapter:Lcom/meizu/settings/search/SearchResultsAdapter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mSearchView:Lcom/meizu/settings/widget/SearchView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mShowingSavedQuery:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mUnfinishedLoadersCount:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 78
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mUnfinishedLoadersCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/meizu/settings/search/SearchFragment;->mNeverEnteredQuery:Z

    .line 581
    new-instance v0, Lcom/meizu/settings/search/SearchFragment$6;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/search/SearchFragment$6;-><init>(Lcom/meizu/settings/search/SearchFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mLinearLayoutManager:Lflyme/support/v7/widget/LinearLayoutManager;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/search/SearchFragment;Z)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/meizu/settings/search/SearchFragment;->setHistoryClearButtonVisibile(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/search/SearchFragment;)V
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/meizu/settings/search/SearchFragment;->hideKeyboard()V

    return-void
.end method

.method private hideKeyboard()V
    .registers 4

    .line 446
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 448
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    const-string v2, "input_method"

    .line 450
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 451
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 454
    :cond_1a
    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment;->mResultsRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    if-eqz p0, :cond_21

    .line 455
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_21
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 4

    .line 517
    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/SearchView;->initVoiceManager(Landroid/content/Context;)V

    .line 518
    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    invoke-virtual {v0}, Lcom/meizu/settings/widget/SearchView;->requestEditTextFocus()V

    const v0, 0x7f0a0184

    .line 520
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mClearHistoryButton:Landroid/view/View;

    .line 521
    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mClearHistoryButton:Landroid/view/View;

    new-instance v1, Lcom/meizu/settings/search/SearchFragment$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/search/SearchFragment$2;-><init>(Lcom/meizu/settings/search/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02c4

    .line 530
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mFLoatView:Landroid/view/View;

    .line 531
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mFLoatView:Landroid/view/View;

    new-instance v0, Lcom/meizu/settings/search/SearchFragment$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/search/SearchFragment$3;-><init>(Lcom/meizu/settings/search/SearchFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 545
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mSavedQueryController:Lcom/meizu/settings/search/SavedQueryController;

    new-instance v0, Lcom/meizu/settings/search/SearchFragment$4;

    invoke-direct {v0, p0}, Lcom/meizu/settings/search/SearchFragment$4;-><init>(Lcom/meizu/settings/search/SearchFragment;)V

    invoke-virtual {p1, v0}, Lcom/meizu/settings/search/SavedQueryController;->setOnLoadFinishedListener(Lcom/meizu/settings/search/SavedQueryController$OnLoadFinishedListener;)V

    return-void
.end method

.method private varargs logSearchResultClicked(Lcom/meizu/settings/search/SearchViewHolder;Lcom/meizu/settings/search/SearchResult;[Landroid/util/Pair;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/settings/search/SearchViewHolder;",
            "Lcom/meizu/settings/search/SearchResult;",
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 461
    iget-object p2, p2, Lcom/meizu/settings/search/SearchResult;->payload:Lcom/meizu/settings/search/ResultPayload;

    invoke-virtual {p2}, Lcom/meizu/settings/search/ResultPayload;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_10

    const-string p0, "SearchFragment"

    const-string p1, "Skipped logging click on search result because of null intent, which can happen on saved query results."

    .line 463
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 467
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, ":settings:show_fragment"

    .line 468
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 469
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_25

    if-eqz v0, :cond_25

    .line 470
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 472
    :cond_25
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_33

    .line 474
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_33
    const/16 p3, 0x3ea

    .line 477
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchAdapter:Lcom/meizu/settings/search/SearchResultsAdapter;

    .line 478
    invoke-virtual {v0}, Lcom/meizu/settings/search/SearchResultsAdapter;->getItemCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 476
    invoke-static {p3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p3, 0x34a

    .line 480
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 481
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 479
    invoke-static {p3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x43b

    .line 483
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p3, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchAdapter:Lcom/meizu/settings/search/SearchResultsAdapter;

    .line 484
    invoke-virtual {p3}, Lcom/meizu/settings/search/SearchResultsAdapter;->getAsyncRankingState()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 482
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x3e9

    .line 486
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 487
    iget-object p3, p0, Lcom/meizu/settings/search/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_86

    const/4 p0, 0x0

    goto :goto_8c

    :cond_86
    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_8c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 485
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private requery()V
    .registers 3

    .line 437
    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 440
    :cond_9
    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mQuery:Ljava/lang/String;

    const-string v1, ""

    .line 441
    iput-object v1, p0, Lcom/meizu/settings/search/SearchFragment;->mQuery:Ljava/lang/String;

    .line 442
    invoke-virtual {p0, v0}, Lcom/meizu/settings/search/SearchFragment;->onQueryTextChange(Ljava/lang/String;)Z

    return-void
.end method

.method private restartLoaders()V
    .registers 4

    const/4 v0, 0x0

    .line 417
    iput-boolean v0, p0, Lcom/meizu/settings/search/SearchFragment;->mShowingSavedQuery:Z

    .line 418
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/meizu/settings/search/SearchFragment;->mUnfinishedLoadersCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 420
    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    const/4 v2, 0x2

    .line 422
    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    const/4 v2, 0x4

    .line 424
    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method private setHistoryClearButtonVisibile(Z)V
    .registers 2

    .line 559
    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment;->mClearHistoryButton:Landroid/view/View;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method makeSearchView(Lflyme/support/v7/app/ActionBar;Ljava/lang/String;)Lcom/meizu/settings/widget/SearchView;
    .registers 5

    .line 503
    new-instance v0, Lcom/meizu/settings/widget/SearchView;

    invoke-virtual {p1}, Lflyme/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/meizu/settings/widget/SearchView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 504
    invoke-virtual {v0, p2, p1}, Lcom/meizu/settings/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 505
    invoke-virtual {v0, p0}, Lcom/meizu/settings/widget/SearchView;->setOnQueryTextListener(Lcom/meizu/settings/widget/SearchView$OnQueryTextListener;)V

    .line 506
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 508
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/meizu/settings/widget/SearchView;->initVoiceManager(Landroid/content/Context;)V

    .line 511
    invoke-virtual {v0, p0}, Lcom/meizu/settings/widget/SearchView;->setOnQueryTextListener(Lcom/meizu/settings/widget/SearchView$OnQueryTextListener;)V

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    .line 141
    invoke-super {p0, p1}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 142
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFlymeSearchFeatureProvider()Lcom/meizu/settings/search/SearchFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    .line 143
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 148
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x1

    .line 150
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->setHasOptionsMenu(Z)V

    .line 152
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 153
    new-instance v2, Lcom/meizu/settings/search/SearchResultsAdapter;

    iget-object v3, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    invoke-direct {v2, p0, v3}, Lcom/meizu/settings/search/SearchResultsAdapter;-><init>(Lcom/meizu/settings/search/SearchFragment;Lcom/meizu/settings/search/SearchFeatureProvider;)V

    iput-object v2, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchAdapter:Lcom/meizu/settings/search/SearchResultsAdapter;

    .line 154
    new-instance v2, Lcom/meizu/settings/search/SavedQueryController;

    .line 155
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchAdapter:Lcom/meizu/settings/search/SearchResultsAdapter;

    invoke-direct {v2, v3, v1, v4}, Lcom/meizu/settings/search/SavedQueryController;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;Lcom/meizu/settings/search/SearchResultsAdapter;)V

    iput-object v2, p0, Lcom/meizu/settings/search/SearchFragment;->mSavedQueryController:Lcom/meizu/settings/search/SavedQueryController;

    .line 156
    iget-object v1, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    invoke-interface {v1}, Lcom/meizu/settings/search/SearchFeatureProvider;->initFeedbackButton()V

    if-eqz p1, :cond_4c

    const-string v0, "state_query"

    .line 159
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mQuery:Ljava/lang/String;

    const-string v0, "state_never_entered_query"

    .line 160
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/search/SearchFragment;->mNeverEnteredQuery:Z

    const-string v0, "state_result_click_count"

    .line 161
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/search/SearchFragment;->mResultClickCount:I

    const-string v0, "state_showing_saved_query"

    .line 162
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/search/SearchFragment;->mShowingSavedQuery:Z

    goto :goto_4e

    .line 164
    :cond_4c
    iput-boolean v0, p0, Lcom/meizu/settings/search/SearchFragment;->mShowingSavedQuery:Z

    .line 167
    :goto_4e
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 170
    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    invoke-interface {v0, p1, p0}, Lcom/meizu/settings/search/SearchFeatureProvider;->updateIndexAsync(Landroid/content/Context;Lcom/meizu/settings/search/IndexingCallback;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/Set<",
            "+",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;>;"
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_24

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_12

    const/4 p0, 0x0

    return-object p0

    .line 331
    :cond_12
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-interface {p1, p2, p0}, Lcom/meizu/settings/search/SearchFeatureProvider;->getInputDeviceResultLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/settings/search/InputDeviceResultLoader;

    move-result-object p0

    return-object p0

    .line 329
    :cond_1b
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-interface {p1, p2, p0}, Lcom/meizu/settings/search/SearchFeatureProvider;->getAccessibilityServiceResultLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/settings/search/AccessibilityServiceResultLoader;

    move-result-object p0

    return-object p0

    .line 327
    :cond_24
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-interface {p1, p2, p0}, Lcom/meizu/settings/search/SearchFeatureProvider;->getInstalledAppSearchLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/settings/search/InstalledAppResultLoader;

    move-result-object p0

    return-object p0

    .line 325
    :cond_2d
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-interface {p1, p2, p0}, Lcom/meizu/settings/search/SearchFeatureProvider;->getDatabaseSearchLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseResultLoader;

    move-result-object p0

    return-object p0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3

    .line 181
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const/4 p3, 0x0

    const v0, 0x7f0d02ef

    .line 187
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a03c5

    .line 188
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lflyme/support/v7/widget/MzRecyclerView;

    iput-object p2, p0, Lcom/meizu/settings/search/SearchFragment;->mResultsRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    .line 189
    iget-object p2, p0, Lcom/meizu/settings/search/SearchFragment;->mResultsRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchAdapter:Lcom/meizu/settings/search/SearchResultsAdapter;

    invoke-virtual {p2, v0}, Lflyme/support/v7/widget/MzRecyclerView;->setAdapter(Lflyme/support/v7/widget/RecyclerView$Adapter;)V

    .line 191
    iget-object p2, p0, Lcom/meizu/settings/search/SearchFragment;->mResultsRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mLinearLayoutManager:Lflyme/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p2, v0}, Lflyme/support/v7/widget/RecyclerView;->setLayoutManager(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 193
    iget-object p2, p0, Lcom/meizu/settings/search/SearchFragment;->mResultsRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    new-instance v0, Lcom/meizu/settings/search/SearchFragment$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/search/SearchFragment$1;-><init>(Lcom/meizu/settings/search/SearchFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p2, 0x7f0a04ef

    .line 201
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/meizu/settings/search/SearchFragment;->mNoResultsView:Landroid/widget/LinearLayout;

    .line 204
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lflyme/support/v7/app/AppCompatActivity;

    invoke-virtual {p2}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p2

    .line 205
    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/meizu/settings/search/SearchFragment;->makeSearchView(Lflyme/support/v7/app/ActionBar;Ljava/lang/String;)Lcom/meizu/settings/widget/SearchView;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    .line 206
    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    invoke-virtual {p2, v0}, Lflyme/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 207
    invoke-virtual {p2, v0}, Lflyme/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 208
    invoke-virtual {p2, p3}, Lflyme/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 210
    iget-object p2, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Lcom/meizu/settings/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 211
    iget-object p2, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    invoke-virtual {p2, p0}, Lcom/meizu/settings/widget/SearchView;->setOnQueryTextListener(Lcom/meizu/settings/widget/SearchView$OnQueryTextListener;)V

    .line 212
    iget-object p2, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 217
    iget-object p2, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    const v0, 0x102040b

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 218
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_90

    .line 219
    check-cast p2, Landroid/widget/TextView;

    .line 220
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1060232

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 223
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07066c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 222
    invoke-virtual {p2, p3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 226
    :cond_90
    iget-object p2, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    const v0, 0x1020407

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a7

    .line 229
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 230
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 231
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    :cond_a7
    invoke-direct {p0, p1}, Lcom/meizu/settings/search/SearchFragment;->initView(Landroid/view/View;)V

    const p2, 0x7f0a061d

    .line 238
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/meizu/settings/search/SearchFragment;->mScrollView:Landroid/widget/ScrollView;

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 494
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 496
    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    if-eqz v0, :cond_f

    .line 497
    invoke-virtual {v0}, Lcom/meizu/settings/widget/SearchView;->releaseVoiceService()V

    .line 498
    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/SearchView;->onViewDestroy()V

    :cond_f
    return-void
.end method

.method public onIndexingFinished()V
    .registers 4

    .line 367
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 370
    :cond_7
    iget-boolean v0, p0, Lcom/meizu/settings/search/SearchFragment;->mShowingSavedQuery:Z

    if-eqz v0, :cond_11

    .line 371
    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mSavedQueryController:Lcom/meizu/settings/search/SavedQueryController;

    invoke-virtual {v0}, Lcom/meizu/settings/search/SavedQueryController;->loadSavedQueries()V

    goto :goto_22

    .line 373
    :cond_11
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 374
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    const/4 v1, 0x2

    .line 375
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    const/4 v1, 0x4

    .line 377
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 381
    :goto_22
    invoke-direct {p0}, Lcom/meizu/settings/search/SearchFragment;->requery()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3

    .line 78
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/search/SearchFragment;->onLoadFinished(Landroid/content/Loader;Ljava/util/Set;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/Set<",
            "+",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;>;",
            "Ljava/util/Set<",
            "+",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;)V"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchAdapter:Lcom/meizu/settings/search/SearchResultsAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/meizu/settings/search/SearchResultsAdapter;->addSearchResults(Ljava/util/Set;Ljava/lang/String;)V

    .line 341
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mUnfinishedLoadersCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-eqz p1, :cond_16

    return-void

    .line 345
    :cond_16
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchAdapter:Lcom/meizu/settings/search/SearchResultsAdapter;

    invoke-virtual {p1}, Lcom/meizu/settings/search/SearchResultsAdapter;->notifyResultsLoaded()V

    .line 348
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchAdapter:Lcom/meizu/settings/search/SearchResultsAdapter;

    invoke-virtual {p1}, Lcom/meizu/settings/search/SearchResultsAdapter;->getSearchResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_2e

    .line 350
    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment;->mNoResultsView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3a

    .line 352
    :cond_2e
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mNoResultsView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment;->mResultsRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :goto_3a
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/Set<",
            "+",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .registers 1

    .line 261
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 262
    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    if-eqz p0, :cond_a

    .line 263
    invoke-virtual {p0}, Lcom/meizu/settings/widget/SearchView;->stopVoiceInput()V

    :cond_a
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 5

    .line 280
    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 284
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    .line 286
    iput v2, p0, Lcom/meizu/settings/search/SearchFragment;->mResultClickCount:I

    .line 287
    iput-boolean v2, p0, Lcom/meizu/settings/search/SearchFragment;->mNeverEnteredQuery:Z

    .line 288
    iput-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mQuery:Ljava/lang/String;

    .line 291
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/meizu/settings/search/SearchFeatureProvider;->isIndexingComplete(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_22

    return v1

    :cond_22
    if-eqz v0, :cond_40

    .line 296
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    .line 297
    invoke-virtual {p1, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    const/4 v0, 0x2

    .line 298
    invoke-virtual {p1, v0}, Landroid/app/LoaderManager;->destroyLoader(I)V

    const/4 v0, 0x4

    .line 299
    invoke-virtual {p1, v0}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 300
    iput-boolean v1, p0, Lcom/meizu/settings/search/SearchFragment;->mShowingSavedQuery:Z

    .line 301
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mSavedQueryController:Lcom/meizu/settings/search/SavedQueryController;

    invoke-virtual {p1}, Lcom/meizu/settings/search/SavedQueryController;->loadSavedQueries()V

    .line 302
    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    invoke-interface {p0}, Lcom/meizu/settings/search/SearchFeatureProvider;->hideFeedbackButton()V

    goto :goto_4a

    .line 304
    :cond_40
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchAdapter:Lcom/meizu/settings/search/SearchResultsAdapter;

    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/search/SearchResultsAdapter;->initializeSearch(Ljava/lang/String;)V

    .line 305
    invoke-direct {p0}, Lcom/meizu/settings/search/SearchFragment;->restartLoaders()V

    :goto_4a
    return v1
.end method

.method public onResume()V
    .registers 3

    .line 245
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 246
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    invoke-interface {v1, v0}, Lcom/meizu/settings/search/SearchFeatureProvider;->isSmartSearchRankingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 248
    iget-object v1, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    invoke-interface {v1, v0}, Lcom/meizu/settings/search/SearchFeatureProvider;->searchRankingWarmup(Landroid/content/Context;)V

    .line 252
    :cond_18
    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    if-eqz p0, :cond_1f

    .line 253
    invoke-virtual {p0}, Lcom/meizu/settings/widget/SearchView;->bindVoiceService()V

    :cond_1f
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 271
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 272
    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mQuery:Ljava/lang/String;

    const-string v1, "state_query"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-boolean v0, p0, Lcom/meizu/settings/search/SearchFragment;->mNeverEnteredQuery:Z

    const-string v1, "state_never_entered_query"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 274
    iget-boolean v0, p0, Lcom/meizu/settings/search/SearchFragment;->mShowingSavedQuery:Z

    const-string v1, "state_showing_saved_query"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    iget p0, p0, Lcom/meizu/settings/search/SearchFragment;->mResultClickCount:I

    const-string v0, "state_result_click_count"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSavedQueryClicked(Ljava/lang/CharSequence;)V
    .registers 7

    .line 409
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 410
    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/util/Pair;

    const/16 v4, 0x371

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 412
    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    invoke-virtual {v0, p1, v2}, Lcom/meizu/settings/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 413
    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/SearchFragment;->onQueryTextChange(Ljava/lang/String;)Z

    return-void
.end method

.method public varargs onSearchResultClicked(Lcom/meizu/settings/search/SearchViewHolder;Lcom/meizu/settings/search/SearchResult;[Landroid/util/Pair;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/settings/search/SearchViewHolder;",
            "Lcom/meizu/settings/search/SearchResult;",
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 386
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/settings/search/SearchFragment;->logSearchResultClicked(Lcom/meizu/settings/search/SearchViewHolder;Lcom/meizu/settings/search/SearchResult;[Landroid/util/Pair;)V

    .line 387
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-interface {p1, p3, v0, p2}, Lcom/meizu/settings/search/SearchFeatureProvider;->searchResultClicked(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/settings/search/SearchResult;)V

    .line 389
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mSavedQueryController:Lcom/meizu/settings/search/SavedQueryController;

    iget-object p2, p2, Lcom/meizu/settings/search/SearchResult;->rowId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/meizu/settings/search/SavedQueryController;->saveQuery(Ljava/lang/String;)V

    .line 391
    iget p1, p0, Lcom/meizu/settings/search/SearchFragment;->mResultClickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/meizu/settings/search/SearchFragment;->mResultClickCount:I

    return-void
.end method

.method public onSearchResultsDisplayed(I)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 396
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mNoResultsView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_15

    .line 398
    :cond_9
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mNoResultsView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mResultsRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 401
    :goto_15
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Lcom/meizu/settings/search/SearchFeatureProvider;->showFeedbackButton(Lcom/meizu/settings/search/SearchFragment;Landroid/view/View;)V

    .line 404
    invoke-direct {p0, v0}, Lcom/meizu/settings/search/SearchFragment;->setHistoryClearButtonVisibile(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 565
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment;->mScrollView:Landroid/widget/ScrollView;

    new-instance p2, Lcom/meizu/settings/search/SearchFragment$5;

    invoke-direct {p2, p0}, Lcom/meizu/settings/search/SearchFragment$5;-><init>(Lcom/meizu/settings/search/SearchFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    return-void
.end method
