.class public Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;
.super Lcom/meizu/settings/AppListBaseSettings;
.source "FlymeRAngleSettingsFragment.java"


# instance fields
.field private mFlymeRAngleAdjustController:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/meizu/settings/AppListBaseSettings;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;)Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;->mFlymeRAngleAdjustController:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;)V
    .registers 1

    .line 20
    invoke-virtual {p0}, Lcom/meizu/settings/AppListBaseSettings;->restartAppLoader()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;)Z
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;->needShowTipsDialog()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;->showTipsDialog(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;)V

    return-void
.end method

.method private needShowTipsDialog()Z
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;->mFlymeRAngleAdjustController:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    invoke-virtual {p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->needShowTipsDialog()Z

    move-result p0

    return p0
.end method

.method private showTipsDialog(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;)V
    .registers 6

    .line 98
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121112

    .line 99
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121111

    .line 100
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d02be

    invoke-static {v1, v3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0a05b5

    .line 102
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 103
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 104
    new-instance v1, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$3;

    invoke-direct {v1, p0, v3, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$3;-><init>(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;Landroid/widget/CheckBox;Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;)V

    const p0, 0x7f12110f

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p0, 0x7f120442

    .line 113
    invoke-virtual {v0, p0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public createMzSingleArrayGroupAdapter(Ljava/util/List;)Lcom/meizu/common/widget/SingleArrayPartitionAdapter;
    .registers 7
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

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v0, :cond_2f

    .line 49
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/MzAppEntry;

    if-eqz v0, :cond_19

    .line 50
    iget-object v4, v0, Lcom/meizu/settings/widget/MzAppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_19

    iget-object v0, v0, Lcom/meizu/settings/widget/MzAppEntry;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_3f

    .line 51
    :cond_19
    new-instance v0, Lcom/meizu/settings/widget/MzAppEntry;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4, v3, v3, v3}, Lcom/meizu/settings/widget/MzAppEntry;-><init>(Landroid/content/Context;Landroid/content/AsyncTaskLoader;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;)V

    .line 52
    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mSwitchOffOnSizeArray:[I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    aput v3, v0, v1

    goto :goto_3f

    .line 58
    :cond_2f
    new-instance v0, Lcom/meizu/settings/widget/MzAppEntry;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4, v3, v3, v3}, Lcom/meizu/settings/widget/MzAppEntry;-><init>(Landroid/content/Context;Landroid/content/AsyncTaskLoader;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;)V

    .line 59
    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mSwitchOffOnSizeArray:[I

    aput v2, v0, v1

    .line 62
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mSwitchOffOnSizeArray:[I

    aput v1, v0, v2

    .line 63
    new-instance v0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;

    .line 64
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/AppListBaseSettings;->mSwitchOffOnSizeArray:[I

    iget-object p0, p0, Lcom/meizu/settings/AppListBaseSettings;->mLaunchNames:Ljava/util/HashMap;

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[ILjava/util/HashMap;)V

    return-object v0
.end method

.method protected createOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .line 72
    new-instance v0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$2;-><init>(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    .line 26
    invoke-super {p0, p1}, Lcom/meizu/settings/AppListBaseSettings;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/AppListBaseSettings;->setFastScrollLetterEnable(ZZ)V

    .line 29
    iget-object p1, p0, Lcom/meizu/settings/AppListBaseSettings;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 31
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;->mFlymeRAngleAdjustController:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    .line 33
    iget-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;->mFlymeRAngleAdjustController:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    new-instance v0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$1;-><init>(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;)V

    invoke-virtual {p1, v0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->initRAngleAppStateFromNetwork(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;)V

    return-void
.end method

.method public onCreateAppLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 5
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

    .line 124
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 126
    new-instance p2, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/AppListBaseSettings;->mLaunchNames:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/meizu/settings/AppListBaseSettings;->mSwitchOffOnSizeArray:[I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;-><init>(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/HashMap;[I)V

    return-object p2
.end method
