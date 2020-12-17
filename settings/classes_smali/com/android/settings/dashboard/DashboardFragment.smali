.class public abstract Lcom/android/settings/dashboard/DashboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DashboardFragment.java"

# interfaces
.implements Lcom/android/settings/core/SettingsBaseActivity$CategoryListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;
.implements Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;
.implements Lcom/android/settings/core/BasePreferenceController$UiBlockListener;


# instance fields
.field mBlockerController:Lcom/android/settings/dashboard/UiBlockerController;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private final mDashboardTilePrefKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListeningToCategoryChange:Z

.field private mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

.field private final mPreferenceControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field private mSuppressInjectedTileKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    .line 65
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    return-void
.end method

.method private displayResourceTiles()V
    .registers 3

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPreferenceScreenResId()I

    move-result v0

    if-gtz v0, :cond_7

    return-void

    .line 312
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 313
    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 314
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->setOnExpandButtonClickListener(Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;)V

    .line 315
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, Lcom/android/settings/dashboard/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;->INSTANCE:Lcom/android/settings/dashboard/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$Tn5-YvXfafHUTSTeQyMxdmcExvo;

    invoke-direct {v1, v0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$Tn5-YvXfafHUTSTeQyMxdmcExvo;-><init>(Landroidx/preference/PreferenceScreen;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$checkUiBlocker$2(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .registers 1

    .line 123
    instance-of p0, p0, Lcom/android/settings/core/BasePreferenceController$UiBlocker;

    return p0
.end method

.method static synthetic lambda$displayResourceTiles$5(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .registers 2

    .line 316
    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method static synthetic lambda$onAttach$0(Lcom/android/settings/core/BasePreferenceController;)Z
    .registers 1

    .line 104
    instance-of p0, p0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    return p0
.end method

.method static synthetic lambda$onAttach$1(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/core/BasePreferenceController;)V
    .registers 2

    .line 106
    check-cast p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private refreshAllPreferences(Ljava/lang/String;)V
    .registers 4

    .line 355
    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 359
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 363
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;->displayResourceTiles()V

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->refreshDashboardTiles(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v1, "All preferences added, reporting fully drawn"

    .line 369
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    .line 373
    :cond_1d
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceVisibility(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected addPreferenceController(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .registers 5

    .line 266
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 267
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_1a
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method checkUiBlocker(Ljava/util/List;)V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;)V"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$cuPvmIFPXgkQOdpQSGIa6sm2tHk;->INSTANCE:Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$cuPvmIFPXgkQOdpQSGIa6sm2tHk;

    .line 123
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$kvyq1KLe9juMDXxbF71-UGB7dN8;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$kvyq1KLe9juMDXxbF71-UGB7dN8;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/util/List;)V

    .line 124
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 129
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 130
    new-instance p1, Lcom/android/settings/dashboard/UiBlockerController;

    invoke-direct {p1, v0}, Lcom/android/settings/dashboard/UiBlockerController;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mBlockerController:Lcom/android/settings/dashboard/UiBlockerController;

    .line 131
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mBlockerController:Lcom/android/settings/dashboard/UiBlockerController;

    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$p5PxMiDgj_51KTZ04VhhHCx71_8;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$p5PxMiDgj_51KTZ04VhhHCx71_8;-><init>(Lcom/android/settings/dashboard/DashboardFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/dashboard/UiBlockerController;->start(Ljava/lang/Runnable;)Z

    :cond_2e
    return-void
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected displayTile(Lcom/android/settingslib/drawer/Tile;)Z
    .registers 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSuppressInjectedTileKeys:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 299
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSuppressInjectedTileKeys:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_1b
    return v1
.end method

.method public getCategoryKey()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 277
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method public synthetic lambda$checkUiBlocker$3$DashboardFragment(Ljava/util/List;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .registers 4

    .line 125
    move-object v0, p2

    check-cast v0, Lcom/android/settings/core/BasePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/core/BasePreferenceController;->setUiBlockListener(Lcom/android/settings/core/BasePreferenceController$UiBlockListener;)V

    .line 126
    invoke-virtual {p2}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic lambda$checkUiBlocker$4$DashboardFragment()V
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceVisibility(Ljava/util/Map;)V

    return-void
.end method

.method public notifySummaryChanged(Lcom/android/settingslib/drawer/Tile;)V
    .registers 5

    .line 184
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    .line 189
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getDescription()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Can\'t find pref by key %s, skipping update summary %s"

    .line 187
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 192
    :cond_2b
    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 6

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSuppressInjectedTileKeys:Ljava/util/List;

    .line 80
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPreferenceScreenResId()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/settings/core/PreferenceControllerListHelper;->getPreferenceControllersFromXml(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 91
    invoke-static {v2, v1}, Lcom/android/settings/core/PreferenceControllerListHelper;->filterControllers(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v1, :cond_38

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    :cond_38
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 103
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$S-iRpeKDC_3jmfXOTbVaWpa8f5Y;->INSTANCE:Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$S-iRpeKDC_3jmfXOTbVaWpa8f5Y;

    .line 104
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$iYpWkssUBFPuOKWOC_GeIjRUfdk;

    invoke-direct {v3, v1}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$iYpWkssUBFPuOKWOC_GeIjRUfdk;-><init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 105
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 108
    new-instance v1, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    .line 110
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_61
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 112
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->addPreferenceController(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    goto :goto_61

    .line 115
    :cond_71
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->checkUiBlocker(Ljava/util/List;)V

    return-void
.end method

.method public onBlockerWorkFinished(Lcom/android/settings/core/BasePreferenceController;)V
    .registers 2

    .line 466
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mBlockerController:Lcom/android/settings/dashboard/UiBlockerController;

    invoke-virtual {p1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/UiBlockerController;->countDown(Ljava/lang/String;)Z

    return-void
.end method

.method public onCategoriesChanged()V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 155
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->refreshDashboardTiles(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 137
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    new-instance v1, Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;

    invoke-direct {v1}, Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setPreferenceComparisonCallback(Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;)V

    if-eqz p1, :cond_14

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    :cond_14
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->refreshAllPreferences(Ljava/lang/String;)V

    return-void
.end method

.method public onExpandButtonClick()V
    .registers 7

    .line 243
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 245
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v3

    const/4 v1, 0x0

    const/16 v2, 0x342

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 243
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .registers 7

    .line 203
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    .line 204
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v4

    .line 206
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logDashboardStartIntent(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 209
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 210
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 211
    invoke-virtual {v2, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 p0, 0x1

    return p0

    .line 219
    :cond_3f
    invoke-super {p0, p1}, Landroidx/preference/MzPreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 1

    .line 197
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method public onStart()V
    .registers 4

    .line 165
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 166
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    if-nez v0, :cond_10

    return-void

    .line 171
    :cond_10
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 173
    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 175
    :cond_18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 176
    instance-of v2, v0, Lcom/android/settings/core/SettingsBaseActivity;

    if-eqz v2, :cond_27

    .line 177
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mListeningToCategoryChange:Z

    .line 178
    check-cast v0, Lcom/android/settings/core/SettingsBaseActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SettingsBaseActivity;->addCategoryListener(Lcom/android/settings/core/SettingsBaseActivity$CategoryListener;)V

    :cond_27
    return-void
.end method

.method public onStop()V
    .registers 4

    .line 224
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 225
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 227
    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 229
    :cond_b
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mListeningToCategoryChange:Z

    if-eqz v0, :cond_1e

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 231
    instance-of v2, v0, Lcom/android/settings/core/SettingsBaseActivity;

    if-eqz v2, :cond_1c

    .line 232
    check-cast v0, Lcom/android/settings/core/SettingsBaseActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SettingsBaseActivity;->remCategoryListener(Lcom/android/settings/core/SettingsBaseActivity$CategoryListener;)V

    .line 234
    :cond_1c
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mListeningToCategoryChange:Z

    :cond_1e
    return-void
.end method

.method refreshDashboardTiles(Ljava/lang/String;)V
    .registers 16
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 402
    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v1

    if-nez v1, :cond_25

    .line 407
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NO dashboard tiles for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 410
    :cond_25
    invoke-virtual {v1}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_43

    .line 412
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "tile list is empty, skipping category "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 416
    :cond_43
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 419
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v3, :cond_51

    .line 420
    invoke-virtual {v3}, Lcom/android/settings/dashboard/SummaryLoader;->release()V

    .line 422
    :cond_51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 423
    new-instance v3, Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/settings/dashboard/SummaryLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 424
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v3, p0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummaryConsumer(Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;)V

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->shouldForceRoundedIcon()Z

    move-result v3

    .line 427
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/android/settingslib/drawer/Tile;

    .line 428
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v4, v9}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v12

    .line 429
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tile does not contain a key, skipping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 433
    :cond_9f
    invoke-virtual {p0, v9}, Lcom/android/settings/dashboard/DashboardFragment;->displayTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v4

    if-nez v4, :cond_a6

    goto :goto_70

    .line 436
    :cond_a6
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    invoke-interface {v4, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 438
    invoke-virtual {v0, v12}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    .line 439
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    .line 440
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v7

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    .line 441
    invoke-virtual {v6}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->getOrder()I

    move-result v11

    move v6, v3

    move-object v10, v12

    .line 439
    invoke-interface/range {v4 .. v11}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->bindPreferenceToTile(Landroidx/fragment/app/FragmentActivity;ZILandroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)V

    goto :goto_ef

    .line 444
    :cond_c8
    new-instance v13, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v13, v4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 445
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    .line 446
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v7

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    .line 447
    invoke-virtual {v6}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->getOrder()I

    move-result v11

    move v6, v3

    move-object v8, v13

    move-object v10, v12

    .line 445
    invoke-interface/range {v4 .. v11}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->bindPreferenceToTile(Landroidx/fragment/app/FragmentActivity;ZILandroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)V

    .line 448
    invoke-virtual {v0, v13}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 449
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 451
    :goto_ef
    invoke-interface {v1, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_70

    .line 454
    :cond_f4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f8
    :goto_f8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_113

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 455
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 456
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_f8

    .line 458
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_f8

    .line 461
    :cond_113
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    return-void
.end method

.method protected shouldForceRoundedIcon()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected updatePreferenceStates()V
    .registers 10

    .line 323
    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 324
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    .line 325
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 326
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 327
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 328
    invoke-virtual {v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_1e

    .line 332
    :cond_31
    invoke-virtual {v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "DashboardFragment"

    if-eqz v4, :cond_58

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    .line 335
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "Preference key is %s in Controller %s"

    .line 334
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 339
    :cond_58
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    if-nez v4, :cond_76

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    .line 342
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "Cannot find preference with key %s in Controller %s"

    .line 341
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 345
    :cond_76
    invoke-virtual {v2, v4}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_1e

    :cond_7a
    return-void
.end method

.method updatePreferenceVisibility(Ljava/util/Map;)V
    .registers 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;>;)V"
        }
    .end annotation

    .line 379
    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_4e

    if-eqz p1, :cond_4e

    .line 380
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mBlockerController:Lcom/android/settings/dashboard/UiBlockerController;

    if-nez v0, :cond_d

    goto :goto_4e

    .line 384
    :cond_d
    invoke-virtual {v0}, Lcom/android/settings/dashboard/UiBlockerController;->isBlockerFinished()Z

    move-result v0

    .line 386
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 387
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 388
    invoke-virtual {v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_29

    if-eqz v0, :cond_49

    .line 391
    invoke-virtual {v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x1

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    :goto_4a
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_29

    :cond_4e
    :goto_4e
    return-void
.end method

.method protected use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 253
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_38

    .line 255
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_30

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple controllers of Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " found, returning first one."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DashboardFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    const/4 p1, 0x0

    .line 259
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/core/AbstractPreferenceController;

    return-object p0

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method
