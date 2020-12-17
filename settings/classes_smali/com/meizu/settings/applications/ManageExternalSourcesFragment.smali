.class public Lcom/meizu/settings/applications/ManageExternalSourcesFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "ManageExternalSourcesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;
    }
.end annotation


# instance fields
.field private mApplications:Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;

.field private mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

.field private mContext:Landroid/content/Context;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mCurrentPkgUid:I

.field private mEmptyView:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mShowSystem:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/applications/ManageExternalSourcesFragment;Ljava/lang/String;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/applications/ManageExternalSourcesFragment;)Z
    .registers 1

    .line 39
    iget-boolean p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mShowSystem:Z

    return p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/applications/ManageExternalSourcesFragment;)Landroid/widget/TextView;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mEmptyView:Landroid/widget/TextView;

    return-object p0
.end method

.method private logi(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private startExternalSourcesDetailsActivity(ILjava/lang/String;I)V
    .registers 10

    .line 460
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mCurrentPkgUid:I

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/meizu/settings/applications/ExternalSourcesDetails;->startExternalSourcesDetails(Landroid/app/Fragment;Ljava/lang/String;IILjava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 409
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 411
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->setHasOptionsMenu(Z)V

    .line 413
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mContext:Landroid/content/Context;

    .line 414
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/meizu/settings/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

    .line 416
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mContext:Landroid/content/Context;

    check-cast p1, Lflyme/support/v7/app/AppCompatActivity;

    invoke-virtual {p1}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lflyme/support/v7/app/ActionBar;->setStackedTabsCanBeEmbedded(Z)V

    .line 418
    new-instance p1, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;

    iget-object v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-direct {p1, p0, v0, v1}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;-><init>(Lcom/meizu/settings/applications/ManageExternalSourcesFragment;Landroid/content/Context;Lcom/meizu/settings/applications/ApplicationsState;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mApplications:Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3

    .line 500
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mOptionsMenu:Landroid/view/Menu;

    const/4 p0, 0x0

    const p2, 0x7f1213df

    .line 501
    invoke-interface {p1, p0, p0, p0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 502
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    const/4 p3, 0x0

    const v0, 0x7f0d0136

    .line 423
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a03c1

    .line 425
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 426
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x1020004

    .line 428
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mEmptyView:Landroid/widget/TextView;

    const p2, 0x102000a

    .line 429
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    iput-object p3, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mListView:Landroid/widget/ListView;

    .line 430
    iget-object p3, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mListView:Landroid/widget/ListView;

    instance-of p3, p3, Lcom/meizu/settings/widget/FastScrollLetterListview;

    if-eqz p3, :cond_47

    .line 431
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/meizu/settings/widget/FastScrollLetterListview;

    .line 433
    invoke-virtual {p2}, Lcom/meizu/settings/widget/FastScrollLetterListview;->getFastScrollLetterHelper()Lcom/meizu/settings/widget/FastScrollLetterHelper;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const v3, 0x7f0701d4

    const v4, 0x7f0701d3

    const/4 v5, -0x1

    const v6, 0x7f070172

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->setLetterParam(IIIIII)V

    .line 438
    :cond_47
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mListView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 439
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mListView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/meizu/settings/utils/MzUtils;->getListViewDividerPadding(Landroid/content/Context;[I)Landroid/widget/ListView$DividerPadding;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    .line 440
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 441
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mListView:Landroid/widget/ListView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 442
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 443
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mListView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mApplications:Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 444
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mListView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mApplications:Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 445
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mListView:Landroid/widget/ListView;

    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mApplications:Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 490
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 491
    invoke-static {}, Lcom/meizu/settings/applications/ApplicationsState;->removeInstance()V

    .line 492
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/ApplicationsState;->exitBackgroundThread()V

    .line 493
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/ApplicationsState;->emptyRequestIcon()V

    .line 495
    invoke-static {}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->removeInstance()V

    return-void
.end method

.method public onDestroyOptionsMenu()V
    .registers 2

    const/4 v0, 0x0

    .line 507
    iput-object v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mOptionsMenu:Landroid/view/Menu;

    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .line 482
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 483
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mApplications:Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;

    if-eqz p0, :cond_a

    .line 484
    invoke-virtual {p0}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->release()V

    :cond_a
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 453
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mApplications:Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;

    invoke-virtual {p1, p3}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 454
    iget-object p2, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mCurrentPkgName:Ljava/lang/String;

    .line 455
    iget-object p2, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mCurrentPkgUid:I

    .line 456
    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    const/4 p2, -0x1

    invoke-direct {p0, p2, p1, p2}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->startExternalSourcesDetailsActivity(ILjava/lang/String;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 512
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_20

    .line 514
    iget-boolean v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mShowSystem:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mShowSystem:Z

    .line 515
    iget-boolean v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mShowSystem:Z

    if-eqz v0, :cond_14

    const v0, 0x7f1209c9

    goto :goto_17

    :cond_14
    const v0, 0x7f1213df

    :goto_17
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 516
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mApplications:Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;

    invoke-static {p0, v1}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->access$500(Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;Z)V

    return v1

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .registers 1

    .line 474
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 475
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mApplications:Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;

    if-eqz p0, :cond_a

    .line 476
    invoke-virtual {p0}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->pause()V

    :cond_a
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 466
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 467
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->mApplications:Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;

    if-eqz p0, :cond_a

    .line 468
    invoke-virtual {p0}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->resume()V

    :cond_a
    return-void
.end method
