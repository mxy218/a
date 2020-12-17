.class public abstract Lcom/meizu/settings/AppListBaseSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "AppListBaseSettings.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;,
        Lcom/meizu/settings/AppListBaseSettings$InterestingConfigChanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/settings/SettingsPreferenceFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/meizu/settings/widget/MzAppEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field public mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field protected mGroupAdapter:Lcom/meizu/common/widget/SingleArrayPartitionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mLaunchNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mListView:Landroid/widget/ListView;

.field public final mSwitchOffOnSizeArray:[I

.field public mSwitchOffSize:I

.field public mSwitchOnSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mLaunchNames:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mAppList:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 45
    fill-array-data v0, :array_20

    iput-object v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mSwitchOffOnSizeArray:[I

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mSwitchOffSize:I

    .line 52
    iput v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mSwitchOnSize:I

    return-void

    nop

    :array_20
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private initListView()V
    .registers 4

    .line 72
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mListView:Landroid/widget/ListView;

    .line 73
    iget-object v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/meizu/settings/AppListBaseSettings;->createOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/meizu/settings/utils/MzUtils;->getListViewDividerPadding(Landroid/content/Context;[I)Landroid/widget/ListView$DividerPadding;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    .line 77
    iget-object v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mListView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->setListViewHoldPress(Landroid/widget/ListView;)V

    .line 78
    iget-object v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mListView:Landroid/widget/ListView;

    iget-object p0, p0, Lcom/meizu/settings/AppListBaseSettings;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method private refreshView()V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/settings/AppListBaseSettings;->mGroupAdapter:Lcom/meizu/common/widget/SingleArrayPartitionAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object p0, p0, Lcom/meizu/settings/AppListBaseSettings;->mGroupAdapter:Lcom/meizu/common/widget/SingleArrayPartitionAdapter;

    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public abstract createMzSingleArrayGroupAdapter(Ljava/util/List;)Lcom/meizu/common/widget/SingleArrayPartitionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;)",
            "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract createOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 65
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    invoke-direct {p0}, Lcom/meizu/settings/AppListBaseSettings;->initListView()V

    .line 68
    invoke-virtual {p0}, Lcom/meizu/settings/AppListBaseSettings;->startAppLoader()V

    return-void
.end method

.method public abstract onCreateAppLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;>;"
        }
    .end annotation
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;>;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/AppListBaseSettings;->onCreateAppLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d027d

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x1020004

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/AppListBaseSettings;->mEmptyView:Landroid/view/View;

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3

    .line 37
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/AppListBaseSettings;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;)V"
        }
    .end annotation

    .line 109
    iget-object p1, p0, Lcom/meizu/settings/AppListBaseSettings;->mAppList:Ljava/util/List;

    monitor-enter p1

    .line 110
    :try_start_3
    iget-object v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    iget-object v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mAppList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p2, 0x0

    .line 112
    iput p2, p0, Lcom/meizu/settings/AppListBaseSettings;->mSwitchOnSize:I

    .line 113
    iput p2, p0, Lcom/meizu/settings/AppListBaseSettings;->mSwitchOffSize:I

    .line 114
    iget-object p2, p0, Lcom/meizu/settings/AppListBaseSettings;->mAppList:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/meizu/settings/AppListBaseSettings;->createMzSingleArrayGroupAdapter(Ljava/util/List;)Lcom/meizu/common/widget/SingleArrayPartitionAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/AppListBaseSettings;->mGroupAdapter:Lcom/meizu/common/widget/SingleArrayPartitionAdapter;

    .line 116
    invoke-direct {p0}, Lcom/meizu/settings/AppListBaseSettings;->refreshView()V

    .line 117
    monitor-exit p1

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit p1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method protected restartAppLoader()V
    .registers 4

    .line 93
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 96
    :cond_7
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method protected setFastScrollLetterEnable(ZZ)V
    .registers 4

    .line 192
    iget-object p0, p0, Lcom/meizu/settings/AppListBaseSettings;->mListView:Landroid/widget/ListView;

    instance-of v0, p0, Lcom/meizu/settings/widget/FastScrollLetterListview;

    if-eqz v0, :cond_f

    .line 193
    check-cast p0, Lcom/meizu/settings/widget/FastScrollLetterListview;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/FastScrollLetterListview;->getFastScrollLetterHelper()Lcom/meizu/settings/widget/FastScrollLetterHelper;

    move-result-object p0

    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->setFastScrollLetterEnable(ZZ)V

    :cond_f
    return-void
.end method

.method protected startAppLoader()V
    .registers 4

    .line 89
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method
