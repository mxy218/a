.class public Lcom/android/settings/applications/RunningServices;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RunningServices.java"


# instance fields
.field private mLoadingContainer:Landroid/view/View;

.field private mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field private mOptionsMenu:Landroid/view/Menu;

.field private final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 116
    new-instance v0, Lcom/android/settings/applications/RunningServices$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningServices$1;-><init>(Lcom/android/settings/applications/RunningServices;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServices;->mRunningProcessesAvail:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RunningServices;)Lcom/android/settings/widget/LoadingViewController;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/android/settings/applications/RunningServices;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    return-object p0
.end method

.method private updateOptionsMenu()V
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/android/settings/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/android/settings/applications/RunningServices;->mOptionsMenu:Landroid/view/Menu;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 108
    iget-object p0, p0, Lcom/android/settings/applications/RunningServices;->mOptionsMenu:Landroid/view/Menu;

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    xor-int/2addr v0, v2

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x194

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f121210

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5

    .line 63
    iput-object p1, p0, Lcom/android/settings/applications/RunningServices;->mOptionsMenu:Landroid/view/Menu;

    const/4 p2, 0x1

    const/4 v0, 0x0

    const v1, 0x7f1213db

    .line 64
    invoke-interface {p1, v0, p2, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    .line 65
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 p2, 0x2

    const v1, 0x7f1213c0

    .line 66
    invoke-interface {p1, v0, p2, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 67
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 68
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServices;->updateOptionsMenu()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p2, 0x7f0d0135

    const/4 p3, 0x0

    .line 51
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a05fe

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/applications/RunningProcessesView;

    iput-object p2, p0, Lcom/android/settings/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    .line 53
    iget-object p2, p0, Lcom/android/settings/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {p2}, Lcom/android/settings/applications/RunningProcessesView;->doCreate()V

    const p2, 0x7f0a03c9

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/RunningServices;->mLoadingContainer:Landroid/view/View;

    .line 55
    new-instance p2, Lcom/android/settings/widget/LoadingViewController;

    iget-object p3, p0, Lcom/android/settings/applications/RunningServices;->mLoadingContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-direct {p2, p3, v0}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/settings/applications/RunningServices;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 86
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_14

    const/4 v2, 0x2

    if-eq p1, v2, :cond_c

    return v0

    .line 91
    :cond_c
    iget-object p1, p0, Lcom/android/settings/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object p1, p1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_1b

    .line 88
    :cond_14
    iget-object p1, p0, Lcom/android/settings/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object p1, p1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    .line 96
    :goto_1b
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServices;->updateOptionsMenu()V

    return v1
.end method

.method public onPause()V
    .registers 1

    .line 80
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 81
    iget-object p0, p0, Lcom/android/settings/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->doPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    .line 102
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServices;->updateOptionsMenu()V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 73
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 74
    iget-object v0, p0, Lcom/android/settings/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServices;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/applications/RunningProcessesView;->doResume(Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 75
    iget-object p0, p0, Lcom/android/settings/applications/RunningServices;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(ZZ)V

    return-void
.end method
