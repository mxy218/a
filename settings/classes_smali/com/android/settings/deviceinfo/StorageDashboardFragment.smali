.class public Lcom/android/settings/deviceinfo/StorageDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "StorageDashboardFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;,
        Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/dashboard/DashboardFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/util/SparseArray<",
        "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAppsResult:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedStorageValuesHelper:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;

.field private mOptionMenuController:Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;

.field private mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

.field private mSecondaryUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

.field private mSummaryController:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;

.field private mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 226
    new-instance v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Ljava/util/List;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Landroid/os/storage/VolumeInfo;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/StorageDashboardFragment;Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->maybeCacheFreshValues()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->onReceivedSizes()V

    return-void
.end method

.method private initializeCacheProvider()V
    .registers 4

    .line 323
    new-instance v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;

    .line 324
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mCachedStorageValuesHelper:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->initializeCachedValues()V

    .line 326
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->onReceivedSizes()V

    return-void
.end method

.method private isQuotaSupported()Z
    .registers 3

    .line 337
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    .line 338
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object p0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private maybeCacheFreshValues()V
    .registers 4

    .line 330
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    if-eqz v1, :cond_17

    .line 331
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mCachedStorageValuesHelper:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;

    .line 332
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    .line 331
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->cacheResult(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)V

    :cond_17
    return-void
.end method

.method private onReceivedSizes()V
    .registers 7

    .line 142
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    .line 143
    iget-wide v2, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iget-wide v4, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    sub-long v4, v2, v4

    .line 144
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSummaryController:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->updateBytes(JJ)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setUsedSize(J)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v2, v2, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setTotalSize(J)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_2c
    if-ge v2, v0, :cond_46

    .line 149
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 150
    instance-of v4, v3, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    if-eqz v4, :cond_43

    .line 151
    check-cast v3, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    .line 152
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v4, v4, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->setTotalSize(J)V

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 157
    :cond_46
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    if-nez v0, :cond_4b

    return-void

    .line 161
    :cond_4b
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->onLoadFinished(Landroid/util/SparseArray;I)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v2}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->updateSecondaryUserControllers(Ljava/util/List;Landroid/util/SparseArray;)V

    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a03c9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_70

    const/4 v0, 0x1

    .line 166
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    :cond_70
    return-void
.end method

.method private updateSecondaryUserControllers(Ljava/util/List;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    .line 213
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_19

    .line 214
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 215
    instance-of v2, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;

    if-eqz v2, :cond_16

    .line 216
    check-cast v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;

    .line 218
    invoke-interface {v1, p2}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;->handleResult(Landroid/util/SparseArray;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_19
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .registers 7
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

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    new-instance v1, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSummaryController:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;

    .line 189
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSummaryController:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 192
    new-instance v2, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    new-instance v4, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-direct {v4, v1}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    invoke-direct {v2, p1, p0, v3, v4}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    .line 194
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 197
    invoke-static {p1, v1}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->getSecondaryUserControllers(Landroid/content/Context;Landroid/os/UserManager;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    .line 198
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getAppsStorageResult()Landroid/util/SparseArray;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation

    .line 291
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getHelpResource()I
    .registers 1

    const p0, 0x7f1209b5

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .registers 1

    const-string p0, "StorageDashboardFrag"

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x2e9

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .registers 1

    const p0, 0x7f1600ef

    return p0
.end method

.method public getPrivateStorageInfo()Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 281
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    return-object p0
.end method

.method public initializeCachedValues()V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mCachedStorageValuesHelper:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->getCachedPrivateStorageInfo()Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mCachedStorageValuesHelper:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;

    .line 303
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->getCachedAppsStorageResult()Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v0, :cond_15

    if-nez v1, :cond_11

    goto :goto_15

    .line 308
    :cond_11
    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    .line 309
    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    :cond_15
    :goto_15
    return-void
.end method

.method initializeOptionsMenu(Landroid/app/Activity;)V
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 106
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 107
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mOptionMenuController:Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;

    .line 108
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mOptionMenuController:Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 v0, 0x1

    .line 109
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 110
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public maybeSetLoading(Z)V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_a

    .line 316
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    if-eqz v0, :cond_10

    :cond_a
    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    if-nez p1, :cond_15

    :cond_10
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    :cond_15
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 2

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 100
    const-class p1, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;

    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 100
    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 87
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->maybeInitializeVolume(Landroid/os/storage/StorageManager;Landroid/os/Bundle;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 89
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_21

    .line 90
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 94
    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->initializeOptionsMenu(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;>;"
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 256
    new-instance p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/UserManager;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v3, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    new-instance v4, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v4, v1}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    .line 259
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;-><init>(Landroid/content/Context;Landroid/os/UserManager;Ljava/lang/String;Lcom/android/settingslib/applications/StorageStatsSource;Landroid/content/pm/PackageManager;)V

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    .line 265
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    .line 266
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->maybeCacheFreshValues()V

    .line 267
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->onReceivedSizes()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .registers 3

    .line 61
    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/util/SparseArray;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .registers 5

    .line 129
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v2, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;-><init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V

    const/4 v3, 0x2

    .line 132
    invoke-virtual {v0, v3, v1, v2}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v2, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;-><init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 115
    invoke-super {p0, p1, p2}, Landroidx/preference/MzPreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 116
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->initializeCacheProvider()V

    .line 117
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->isQuotaSupported()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->maybeSetLoading(Z)V

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x0

    .line 120
    invoke-static {p1, p0, p2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    .line 122
    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p0

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/EntityHeaderController;->styleActionBar(Landroid/app/Activity;)Lcom/android/settings/widget/EntityHeaderController;

    return-void
.end method

.method public setAppsStorageResult(Landroid/util/SparseArray;)V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    .line 296
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    return-void
.end method

.method public setCachedStorageValuesHelper(Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;)V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mCachedStorageValuesHelper:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;

    return-void
.end method

.method public setPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 286
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    return-void
.end method

.method protected setVolume(Landroid/os/storage/VolumeInfo;)V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    return-void
.end method
